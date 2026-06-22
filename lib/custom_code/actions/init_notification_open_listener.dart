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
import 'dart:io' show Platform;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:url_launcher/url_launcher.dart';
import '/auth/supabase_auth/auth_util.dart';

bool _notificationOpenListenerInitialized = false;
bool _fcmTokenSaved = false;
bool _notificationPromptShown = false;

// ─── Логирование в Supabase (таблица public.logs) ─────────────────
// См. аналогичный helper в init_foreground_notification_listener.dart —
// нужен чтобы видеть события после теста, а не только в момент,
// когда смотришь на экран (особенно для случая "переход срабатывает
// только первый раз").
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

Future<void> _checkNotificationPermission() async {
  await Future.delayed(const Duration(seconds: 4));
  final token = FFAppState().fcmToken;
  if (!token.startsWith('NO_PERMISSION_')) return;
  try {
    final settings = await FirebaseMessaging.instance.getNotificationSettings();
    if (settings.authorizationStatus != AuthorizationStatus.denied) return;
  } catch (_) {
    return;
  }
  final ctx = PushNavContext.current;
  if (ctx == null || !ctx.mounted) return;
  _showNotificationSettingsDialog(ctx);
}

void _showNotificationSettingsDialog(BuildContext context) {
  if (!context.mounted) return;
  showDialog<void>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Уведомления отключены'),
      content: const Text(
          'Разрешите уведомления в настройках, чтобы получать информацию о ваших заявках.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(),
          child: const Text('Позже'),
        ),
        TextButton(
          onPressed: () async {
            Navigator.of(ctx).pop();
            try {
              if (Platform.isIOS) {
                await launchUrl(Uri.parse('app-settings:'));
              }
            } catch (_) {}
          },
          child: const Text('Открыть настройки'),
        ),
      ],
    ),
  );
}

Future<void> _tryPersistFcmToken() async {
  final uid = currentUserUid;
  if (uid.isEmpty) return;

  String token = FFAppState().fcmToken;
  final isBad = token.isEmpty ||
      token.startsWith('NO_PERMISSION') ||
      token.startsWith('TOKEN_') ||
      token.startsWith('ERROR_') ||
      token.startsWith('SAVE_ERROR_');

  // Токен изначально не сохранился (например SERVICE_NOT_AVAILABLE на
  // MIUI/Xiaomi при старте, когда Google Play Services ещё не поднялся).
  // Раньше тут просто выходили — это и оставляло ERROR_... навечно в базе,
  // т.к. onTokenRefresh срабатывает только для УЖЕ валидного токена.
  // Теперь пробуем получить токен заново на каждом onPageLoad, пока не получится.
  if (isBad) {
    try {
      final fresh = await FirebaseMessaging.instance.getToken();
      if (fresh == null || fresh.isEmpty) return;
      token = fresh;
    } catch (_) {
      return;
    }
  }

  _fcmTokenSaved = true;
  try {
    FFAppState().fcmToken = token;
    await DataUsersTable().update(
      data: {'fcm_token': token},
      matchingRows: (rows) => rows.eq('uid', uid),
    );
  } catch (_) {
    _fcmTokenSaved = false;
  }
}

// ─── Ожидание живого контекста ────────────────────────────────────
// Во время пересборки дерева виджетов (например, гонка сессии при старте)
// appNavigatorKey.currentContext и PushNavContext.current могут на пару
// секунд оказаться unmounted одновременно. Раньше это приводило к
// permanent skip навигации — теперь даём дереву немного времени осесть.
Future<BuildContext?> _waitForMountedNavContext({
  int attempts = 6,
  Duration delay = const Duration(milliseconds: 400),
}) async {
  for (var i = 0; i < attempts; i++) {
    final ctx = appNavigatorKey.currentContext ?? PushNavContext.current;
    if (ctx != null && ctx.mounted) return ctx;
    await Future.delayed(delay);
  }
  return null;
}

// ─── Глобальный держатель свежего контекста ──────────────────────
// Обновляется на каждом onPageLoad. Решает проблему: onMessageOpenedApp
// хранит context первой страницы из замыкания —  после навигации он
// может быть unmounted, и переход не срабатывает.
class PushNavContext {
  static BuildContext? current;
}

int _toIntSafe(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  return int.tryParse(value.toString()) ?? 0;
}

String _toStr(dynamic value) {
  if (value == null) return '';
  return value.toString();
}

void _savePayload(Map<String, dynamic> data) {
  final String typeNotification = _toStr(data['type_notification']);
  final int cardId = _toIntSafe(data['card_id']);

  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = true;
    FFAppState().pendingNotificationType = typeNotification;
    FFAppState().pendingRequestId = cardId;

    switch (typeNotification) {
      case 'new_request_by_filter':
      case 'request_detail':
        FFAppState().pendingRoute = 'request_detail';
        break;
      case 'buyer_request_confirm_actuality':
        FFAppState().pendingRoute = 'buyer_request_actuality';
        break;
      case 'buyer_request_auto_removed':
        FFAppState().pendingRoute = 'buyer_requests_history';
        break;
      case 'ad_detail':
        FFAppState().pendingRoute = 'ad_detail';
        break;
      case 'seller_profile':
        FFAppState().pendingRoute = 'seller_profile';
        break;
      case 'buyer_profile':
        FFAppState().pendingRoute = 'buyer_profile';
        break;
      default:
        FFAppState().pendingRoute = '';
        break;
    }
  });
}

Future initNotificationOpenListener(BuildContext context) async {
  // Обновляем держатель на КАЖДОМ вызове (onPageLoad каждой страницы)
  PushNavContext.current = context;

  _logEvent('debug', 'openListener:onPageLoad', {
    'alreadyInitialized': _notificationOpenListenerInitialized,
    'contextMounted': context.mounted,
  });

  // Сохраняем FCM-токен в Supabase если при старте uid был пустым (новый юзер)
  if (!_fcmTokenSaved) _tryPersistFcmToken();

  if (!_notificationPromptShown) {
    _notificationPromptShown = true;
    unawaited(_checkNotificationPermission());
  }

  if (_notificationOpenListenerInitialized) return;

  try {
    // 1. Приложение было полностью закрыто, открыли через push
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    _logEvent('debug', 'openListener:getInitialMessage',
        {'data': initialMessage?.data});

    if (initialMessage != null) {
      _savePayload(Map<String, dynamic>.from(initialMessage.data));
      await Future.delayed(const Duration(milliseconds: 800));

      final navCtx = await _waitForMountedNavContext();
      if (navCtx != null && navCtx.mounted) {
        await processPendingNotificationNavigation(navCtx);
      } else {
        _logEvent('warn', 'openListener:coldStartNavGaveUp');
      }
    }

    // 2. Приложение было в фоне, открыли через push
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      _logEvent('info', 'openListener:onMessageOpenedApp', {
        'data': message.data,
        'pushNavContextMounted': PushNavContext.current?.mounted ?? false,
      });

      _savePayload(Map<String, dynamic>.from(message.data));
      await Future.delayed(const Duration(milliseconds: 300));

      final navCtx = await _waitForMountedNavContext();
      if (navCtx != null && navCtx.mounted) {
        await processPendingNotificationNavigation(navCtx);
      } else {
        _logEvent('warn', 'openListener:navSkippedUnmounted', {
          'navCtxNull': navCtx == null,
        });
      }
    });

    _notificationOpenListenerInitialized = true;
  } catch (e) {
    _logEvent('error', 'openListener:initError', {'error': e.toString()});
  }
}
