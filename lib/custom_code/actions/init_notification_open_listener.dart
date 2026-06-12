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

import 'package:firebase_messaging/firebase_messaging.dart';

bool _notificationOpenListenerInitialized = false;

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
  if (_notificationOpenListenerInitialized) return;
  _notificationOpenListenerInitialized = true;

  // 1. Приложение было полностью закрыто, открыли через push
  final RemoteMessage? initialMessage =
      await FirebaseMessaging.instance.getInitialMessage();

  if (initialMessage != null) {
    _savePayload(Map<String, dynamic>.from(initialMessage.data));
    await Future.delayed(const Duration(milliseconds: 800));
    if (context.mounted) {
      await processPendingNotificationNavigation(context);
    }
  }

  // 2. Приложение было в фоне, открыли через push
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
    _savePayload(Map<String, dynamic>.from(message.data));
    await Future.delayed(const Duration(milliseconds: 300));
    if (context.mounted) {
      await processPendingNotificationNavigation(context);
    }
  });
}
