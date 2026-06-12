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

bool _foregroundNotificationListenerInitialized = false;

int _toIntSafe(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  return int.tryParse(value.toString()) ?? 0;
}

String _toStr(dynamic value) {
  if (value == null) return '';
  return value.toString();
}

void _savePayloadToAppState(Map<String, dynamic> data) {
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

String _getTitle(RemoteMessage message) {
  final t = message.notification?.title?.trim();
  if (t != null && t.isNotEmpty) return t;
  final d = message.data['title']?.toString().trim();
  if (d != null && d.isNotEmpty) return d;
  return 'Новое уведомление';
}

String _getBody(RemoteMessage message) {
  final b = message.notification?.body?.trim();
  if (b != null && b.isNotEmpty) return b;
  final d = message.data['body']?.toString().trim();
  if (d != null && d.isNotEmpty) return d;
  return 'Нажмите, чтобы открыть';
}

Future initForegroundNotificationListener(BuildContext context) async {
  if (_foregroundNotificationListenerInitialized) return;
  _foregroundNotificationListenerInitialized = true;

  // Показываем уведомления в foreground на iOS
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (!context.mounted) return;

    final Map<String, dynamic> data = Map<String, dynamic>.from(message.data);
    final String typeNotification = _toStr(data['type_notification']);
    final int cardId = _toIntSafe(data['card_id']);

    if (typeNotification.isEmpty) return;

    // Для маршрутов с card_id — проверяем что он есть
    if (typeNotification != 'buyer_request_auto_removed' &&
        typeNotification != 'buyer_profile' &&
        typeNotification != 'seller_profile' &&
        cardId <= 0) {
      return;
    }

    final String title = _getTitle(message);
    final String body = _getBody(message);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            if (body.isNotEmpty)
              Text(body, style: const TextStyle(fontSize: 13)),
          ],
        ),
        duration: const Duration(seconds: 8),
        action: SnackBarAction(
          label: 'Открыть',
          onPressed: () {
            if (!context.mounted) return;
            _savePayloadToAppState(data);
            processPendingNotificationNavigation(context);
          },
        ),
      ),
    );
  });
}
