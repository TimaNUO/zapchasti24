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

// ДОПОЛНИТЕЛЬНЫЕ ИМПОРТЫ
import '/auth/supabase_auth/auth_util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future initializeMessagingUniversal() async {
  try {
    debugPrint('[FCM] initializeMessagingUniversal START');

    // 1. Инициализация Firebase (если вдруг не инициализирован)
    if (Firebase.apps.isEmpty) {
      debugPrint('[FCM] Firebase.apps.isEmpty -> initializeApp()');
      await Firebase.initializeApp();
    } else {
      debugPrint('[FCM] Firebase already initialized');
    }

    final messaging = FirebaseMessaging.instance;

    // На всякий случай включаем авто-инициализацию
    await messaging.setAutoInitEnabled(true);

    // 2. Смотрим APNs-токен (только iOS)
    final apnsToken = await messaging.getAPNSToken();
    debugPrint('[FCM] APNs token: $apnsToken');

    // 3. Запрос разрешений
    final settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    debugPrint(
        '[FCM] authorizationStatus = ${settings.authorizationStatus.toString()}');

    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      debugPrint('[FCM] user did not grant permission');
      FFAppState().fcmToken =
          'NO_PERMISSION_${settings.authorizationStatus.toString()}';
      return;
    }

    // 4. Пробуем получить FCM-токен
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
  } catch (e, st) {
    debugPrint('initializeMessagingUniversal error: $e\n$st');
    FFAppState().fcmToken = 'ERROR_${e.toString()}';
  }
}

/// Сохранение токена в data_users
Future<void> _saveFcmTokenToSupabase(String token) async {
  try {
    FFAppState().fcmToken = token;

    final uid = currentUserUid;
    if (uid.isEmpty) {
      debugPrint('[saveFcmTokenToSupabase] currentUserUid is empty, skip');
      return;
    }

    debugPrint(
        '[saveFcmTokenToSupabase] saving token for uid=$uid, token=$token');

    final response = await DataUsersTable().update(
      data: {'fcm_token': token},
      matchingRows: (rows) => rows.eq('uid', uid),
    );

    debugPrint('[saveFcmTokenToSupabase] Supabase update result: $response');
  } catch (e, st) {
    debugPrint('saveFcmTokenToSupabase error: $e\n$st');
    FFAppState().fcmToken = 'SAVE_ERROR_${e.toString()}';
  }
}
