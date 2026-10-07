// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';
import '/auth/supabase_auth/auth_util.dart';

/// Записывает FCM-токен устройства текущему пользователю и стирает его у
/// других аккаунтов (RPC claim_fcm_token).
Future syncFcmToken() async {
  if (currentUserUid.isEmpty) return;
  try {
    final settings = await FirebaseMessaging.instance.getNotificationSettings();
    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      return;
    }
    final token = await FirebaseMessaging.instance.getToken();
    if (token == null || token.isEmpty) return;
    await SupaFlow.client.rpc('claim_fcm_token', params: {'p_token': token});
    FFAppState().fcmToken = token;
  } catch (_) {}
}
