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

import 'package:collection/collection.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

//import 'package:awesome_notifications/awesome_notifications.dart';

Future initializeMessaging() async {
  /*
  await Firebase.initializeApp();

  // Запрос разрешений на пуши
  FirebaseMessaging.instance.requestPermission().then((settings) {
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.instance.getToken().then((token) {
        FFAppState().fcmToken = token ?? "No token";
      });
    } else {
      FFAppState().fcmToken = "No token";
    }
  });

  // Локальные уведомления
  await AwesomeNotifications().initialize(
    'resource://mipmap/ic_launcher', // стандартная иконка приложения
    [
      NotificationChannel(
        channelKey: 'alerts',
        channelName: 'Уведомления Zapchasti24',
        channelDescription:
            'Уведомления о заявках, откликах, заказах, сообщениях',
        playSound: true,
        onlyAlertOnce: true,
        groupAlertBehavior: GroupAlertBehavior.Children,
        importance: NotificationImportance.High,
        defaultPrivacy: NotificationPrivacy.Private,
        defaultColor: const Color(0xFFE53935),
        ledColor: const Color(0xFFE53935),
      )
    ],
    debug: true,
  );

  // ПРИНИМАЕМ FCM в форграунде и показываем локалку
  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    print("received message 1: ${message.notification?.title}");
    print("data: ${message.data}");

    final data = message.data;

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: -1,
        channelKey: 'alerts',
        title: message.notification?.title ?? "Zapchasti24",
        body: message.notification?.body ?? "Нет текста",
        notificationLayout: NotificationLayout.Default,
        payload: {
          'type_notification': data['type_notification'] ?? '',
          'card_id': data['card_id'] ?? '',
        },
      ),
      actionButtons: [
        NotificationActionButton(
          key: "MARK_AS_READ",
          label: "Ок",
          actionType: ActionType.DismissAction,
        ),
        NotificationActionButton(
          key: "OPEN_APP",
          label: "Открыть",
          actionType: ActionType.Default,
        ),
      ],
    );
  });

  // 4. Пользователь ТАПНУЛ по системному пушу,
  //    когда приложение было в ФОНЕ (Android + iOS)
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    final data = message.data;
    FFAppState().notifType = data['type_notification'] ?? '';
    FFAppState().notifCardId = data['card_id'] ?? '';
    FFAppState().notifButton = 'tap'; // просто пометка, что пуш был нажат
  });

  // 5. Приложение было УБИТО и открыто по пушу
  final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
  if (initialMessage != null) {
    final data = initialMessage.data;
    FFAppState().notifType = data['type_notification'] ?? '';
    FFAppState().notifCardId = data['card_id'] ?? '';
    FFAppState().notifButton = 'tap';
  }
  */
}
