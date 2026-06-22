// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import '/auth/supabase_auth/auth_util.dart';
import '/auth/supabase_auth/supabase_user_provider.dart';
import '/flutter_flow/nav/nav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

bool _tokenRefreshListenerAttached = false;
bool _authDiagListenerAttached = false;
DateTime? _lastTokenRefreshLog;

// ─── Логирование в Supabase (таблица public.logs) ─────────────────
void _logEvent(String level, String message, [Map<String, dynamic>? ctx]) {
  unawaited(() async {
    try {
      await SupaFlow.client.from('logs').insert({
        'level': level,
        'message': message,
        'context': ctx,
        'uid': currentUserUid,
      });
    } catch (_) {}
  }());
}

// ─── Предзагрузка сессии ДО runApp() ──────────────────────────────
// Глобальная переменная currentUser (base_auth_user_provider.dart)
// всегда null на холодном старте процесса. zapchasti24SupabaseUserStream()
// видит это как "не залогинен" и сначала эмитит синтетического
// разлогиненного пользователя — AppStateNotifier.update() съедает его,
// loading перестаёт ждать реальную сессию и зависит только от
// фиксированного таймера сплэша (1000мс в main.dart). Если восстановление
// сессии (особенно refresh протухшего токена после долгого простоя)
// занимает больше 1с — GoRouter строит '/' с loggedIn=false и застревает
// на PStartReqWidget, даже когда сессия реально валидна.
// Решение: дождаться/обновить сессию ЗДЕСЬ, до runApp(), и сразу
// положить результат в currentUser — тогда синтетический пользователь
// никогда не создаётся, и AppStateNotifier с первого кадра видит правду.
Future<void> _resolveAuthBeforeBoot() async {
  try {
    final session = SupaFlow.client.auth.currentSession;
    if (session == null) {
      _logEvent('debug', 'auth:resolveBeforeBoot:noSession');
      return;
    }

    // Do NOT call refreshSession() here — on a severely expired token it races
    // with the SDK's own auto-refresh and creates tokens with 2-4s lifetimes,
    // causing an infinite tokenRefreshed loop. The SDK renews the token itself.
    // We only need session.user so GoRouter sees loggedIn=true at cold start.
    final user = Zapchasti24SupabaseUser(session.user);
    currentUser = user;
    // AppStateNotifier.update() calls notifyListeners() → GoRouter re-evaluates
    // loggedIn=true and navigates away from the login page. Without this call,
    // setting currentUser alone has no effect on routing.
    AppStateNotifier.instance.update(user);
    _logEvent('info', 'auth:resolveBeforeBoot:populated',
        {'uid': session.user.id, 'expiresAt': session.expiresAt});

    // Если userIdApp не сохранился (первый старт после выхода или очистки данных),
    // восстанавливаем его из data_users до того как pWelcome запустит свой запрос.
    if (FFAppState().userIdApp == 0) {
      try {
        final rows = await DataUsersTable().queryRows(
          queryFn: (q) => q.eq('uid', session.user.id),
        );
        if (rows.isNotEmpty) {
          FFAppState().userIdApp = rows.first.id;
          _logEvent('info', 'boot:userIdApp:restored', {'id': rows.first.id});
        } else {
          _logEvent(
              'warn', 'boot:userIdApp:notFound', {'uid': session.user.id});
        }
      } catch (e) {
        _logEvent('warn', 'boot:userIdApp:error', {'error': e.toString()});
      }
    }
  } catch (e) {
    _logEvent('error', 'auth:resolveBeforeBoot:error', {'error': e.toString()});
  }
}

void _attachAuthDiagListener() {
  if (_authDiagListenerAttached) return;
  _authDiagListenerAttached = true;

  final session = SupaFlow.client.auth.currentSession;
  final nowSec = DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000;
  _logEvent('debug', 'auth:boot', {
    'hasSession': session != null,
    'expiresAt': session?.expiresAt,
    'now': nowSec,
    'hasRefreshToken': session?.refreshToken != null,
  });

  SupaFlow.client.auth.onAuthStateChange.listen((state) {
    // tokenRefreshed fires every 2s when the snackbar triggers widget rebuilds
    // that re-subscribe the auth stream — skip the snackbar entirely and
    // throttle DB logging to at most once per 10 seconds to avoid log spam.
    if (state.event == AuthChangeEvent.tokenRefreshed) {
      final now = DateTime.now();
      if (_lastTokenRefreshLog != null &&
          now.difference(_lastTokenRefreshLog!).inSeconds < 60) {
        return;
      }
      _lastTokenRefreshLog = now;
      _logEvent('info', 'auth:stateChange', {
        'event': state.event.toString(),
        'hasSession': state.session != null,
        'expiresAt': state.session?.expiresAt,
      });
      return;
    }

    _logEvent('info', 'auth:stateChange', {
      'event': state.event.toString(),
      'hasSession': state.session != null,
      'expiresAt': state.session?.expiresAt,
    });
  });
}

Future initializeMessagingUniversal() async {
  // Выполняется до runApp() — успеваем подготовить currentUser
  // прежде чем создастся zapchasti24SupabaseUserStream().
  await _resolveAuthBeforeBoot();

  _attachAuthDiagListener();

  // Сбрасываем stale pending-состояние из предыдущей сессии.
  // Если это реальный cold-start из пуша — getInitialMessage() ниже по коду
  // пересоздаст его уже с актуальными данными.
  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = false;
    FFAppState().pendingRoute = '';
    FFAppState().pendingRequestId = 0;
    FFAppState().pendingNotificationType = '';
  });

  // Firebase.initializeApp() must finish before runApp() so that
  // getInitialMessage() in pages can call Firebase APIs safely.
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp().timeout(const Duration(seconds: 10));
    }
  } catch (e) {
    _logEvent('error', 'fcm:firebaseInitError', {'error': e.toString()});
    return; // app UI still shows — just no FCM
  }

  // Everything else (APNS token, permission dialog, FCM token) runs in
  // background. On iOS, getAPNSToken() can hang indefinitely waiting for
  // the APNS registration callback — it must never block runApp().
  unawaited(_initFcmToken());
}

Future<void> _initFcmToken() async {
  try {
    final messaging = FirebaseMessaging.instance;
    await messaging.setAutoInitEnabled(true);
    await messaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      for (int i = 0; i < 3; i++) {
        try {
          final apns = await messaging
              .getAPNSToken()
              .timeout(const Duration(seconds: 3));
          if (apns != null) break;
        } catch (_) {
          break;
        }
      }
    }

    final settings = await messaging.requestPermission(
        alert: true, badge: true, sound: true);
    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      FFAppState().fcmToken =
          'NO_PERMISSION_${settings.authorizationStatus.toString()}';
      return;
    }

    String? token;
    try {
      token = await messaging.getToken();
    } catch (_) {}

    if (token != null && token.isNotEmpty) {
      await _saveFcmTokenToSupabase(token);
    } else {
      FFAppState().fcmToken = 'TOKEN_NULL';
      unawaited(() async {
        for (final delay in [
          const Duration(seconds: 15),
          const Duration(seconds: 30),
          const Duration(seconds: 60),
          const Duration(seconds: 120),
        ]) {
          await Future.delayed(delay);
          try {
            final t = await FirebaseMessaging.instance.getToken();
            if (t != null && t.isNotEmpty) {
              await _saveFcmTokenToSupabase(t);
              _logEvent('info', 'fcm:backgroundRetrySuccess');
              return;
            }
          } catch (_) {}
        }
        _logEvent('warn', 'fcm:bootTokenStillNull');
      }());
    }

    if (!_tokenRefreshListenerAttached) {
      _tokenRefreshListenerAttached = true;
      messaging.onTokenRefresh.listen((newToken) async {
        await _saveFcmTokenToSupabase(newToken);
      });
    }
  } catch (e) {
    _logEvent('error', 'fcm:initError', {'error': e.toString()});
    FFAppState().fcmToken = 'ERROR_${e.toString()}';
  }
}

Future<void> _saveFcmTokenToSupabase(String token) async {
  try {
    FFAppState().fcmToken = token;
    final uid = currentUserUid;
    if (uid.isEmpty) return;
    await DataUsersTable().update(
      data: {'fcm_token': token},
      matchingRows: (rows) => rows.eq('uid', uid),
    );
  } catch (e) {
    _logEvent('error', 'fcm:saveTokenError', {'error': e.toString()});
    FFAppState().fcmToken = 'SAVE_ERROR_${e.toString()}';
  }
}
