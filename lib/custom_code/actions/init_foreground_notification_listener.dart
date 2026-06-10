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
    FFAppState().pendingRoute = '';

    switch (typeNotification) {
      case 'new_request_by_filter':
        FFAppState().pendingRoute = 'request_detail';
        break;

      case 'buyer_request_confirm_actuality':
        FFAppState().pendingRoute = 'buyer_request_actuality';
        break;

      case 'buyer_request_auto_removed':
        FFAppState().pendingRoute = 'buyer_requests_history';
        break;

      case 'request_detail':
        FFAppState().pendingRoute = 'request_detail';
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

String _getNotificationTitle(RemoteMessage message) {
  final notificationTitle = message.notification?.title;
  if (notificationTitle != null && notificationTitle.trim().isNotEmpty) {
    return notificationTitle.trim();
  }

  final dataTitle = message.data['title'];
  if (dataTitle != null && dataTitle.toString().trim().isNotEmpty) {
    return dataTitle.toString().trim();
  }

  return 'Новое уведомление';
}

String _getNotificationBody(RemoteMessage message) {
  final notificationBody = message.notification?.body;
  if (notificationBody != null && notificationBody.trim().isNotEmpty) {
    return notificationBody.trim();
  }

  final dataBody = message.data['body'];
  if (dataBody != null && dataBody.toString().trim().isNotEmpty) {
    return dataBody.toString().trim();
  }

  return 'Нажмите, чтобы открыть';
}

Future initForegroundNotificationListener(BuildContext context) async {
  if (_foregroundNotificationListenerInitialized) return;
  _foregroundNotificationListenerInitialized = true;

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    final Map<String, dynamic> data = Map<String, dynamic>.from(message.data);

    final String typeNotification = _toStr(data['type_notification']);
    final int cardId = _toIntSafe(data['card_id']);

    // Если в push нет нужных данных для перехода — ничего не делаем
    if (typeNotification.isEmpty) return;

    // Для переходов, где нужен card_id, проверяем что он есть
    if (typeNotification != 'buyer_request_auto_removed' && cardId <= 0) {
      return;
    }

    final String title = _getNotificationTitle(message);
    final String body = _getNotificationBody(message);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title\n$body'),
        duration: const Duration(seconds: 8),
        action: SnackBarAction(
          label: 'Открыть',
          onPressed: () {
            _savePayloadToAppState(data);
            processPendingNotificationNavigation(context);
          },
        ),
      ),
    );
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
