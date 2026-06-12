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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import '/auth/supabase_auth/auth_util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// флаг чтобы onTokenRefresh не вешался дважды
bool _tokenRefreshListenerAttached = false;

Future initializeMessagingUniversal() async {
  try {
    debugPrint('[FCM] initializeMessagingUniversal START');

    if (Firebase.apps.isEmpty) {
      debugPrint('[FCM] Firebase.apps.isEmpty -> initializeApp()');
      await Firebase.initializeApp();
    } else {
      debugPrint('[FCM] Firebase already initialized');
    }

    final messaging = FirebaseMessaging.instance;

    await messaging.setAutoInitEnabled(true);

    // ✅ ДОБАВЛЕНО: показываем уведомления когда приложение открыто (iOS)
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    final apnsToken = await messaging.getAPNSToken();
    debugPrint('[FCM] APNs token: $apnsToken');

    final settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    debugPrint('[FCM] authorizationStatus = ${settings.authorizationStatus}');

    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      debugPrint('[FCM] user did not grant permission');
      FFAppState().fcmToken =
          'NO_PERMISSION_${settings.authorizationStatus.toString()}';
      return;
    }

    String? token = await messaging.getToken();
    debugPrint('[FCM] FCM token first try: $token');

    if (token == null || token.isEmpty) {
      debugPrint('[FCM] token null/empty, waiting 2s and retry');
      await Future.delayed(const Duration(seconds: 2));
      token = await messaging.getToken();
      debugPrint('[FCM] FCM token second try: $token');
    }

    if (token != null && token.isNotEmpty) {
      debugPrint('[FCM] final FCM token: $token');
      await _saveFcmTokenToSupabase(token);
    } else {
      debugPrint('[FCM] token is still null/empty after retries');
      FFAppState().fcmToken = 'TOKEN_NULL';
    }

    // ✅ ДОБАВЛЕНО: обновляем токен в Supabase когда Firebase его ротирует
    if (!_tokenRefreshListenerAttached) {
      _tokenRefreshListenerAttached = true;
      messaging.onTokenRefresh.listen((newToken) async {
        debugPrint('[FCM] token refreshed');
        await _saveFcmTokenToSupabase(newToken);
      });
    }
  } catch (e, st) {
    debugPrint('[FCM] initializeMessagingUniversal error: $e\n$st');
    FFAppState().fcmToken = 'ERROR_${e.toString()}';
  }
}

Future<void> _saveFcmTokenToSupabase(String token) async {
  try {
    FFAppState().fcmToken = token;

    final uid = currentUserUid;
    if (uid.isEmpty) {
      debugPrint('[FCM] currentUserUid is empty, skip');
      return;
    }

    debugPrint('[FCM] saving token for uid=$uid, token=$token');

    final response = await DataUsersTable().update(
      data: {'fcm_token': token},
      matchingRows: (rows) => rows.eq('uid', uid),
    );

    debugPrint('[FCM] Supabase update result: $response');
  } catch (e, st) {
    debugPrint('[FCM] saveFcmTokenToSupabase error: $e\n$st');
    FFAppState().fcmToken = 'SAVE_ERROR_${e.toString()}';
  }
}
