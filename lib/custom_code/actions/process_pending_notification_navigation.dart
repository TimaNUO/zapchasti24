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

Future processPendingNotificationNavigation(BuildContext context) async {
  final bool openedFromPush = FFAppState().isAppOpenedFromPush;
  final String route = FFAppState().pendingRoute;
  final int cardId = FFAppState().pendingRequestId;

  // Если приложение открыто обычным способом — ничего не делаем
  if (!openedFromPush) return;

  // Если нет маршрута — ничего не делаем
  if (route.isEmpty) return;

  await Future.delayed(const Duration(milliseconds: 500));

  if (route == 'request_detail' && cardId > 0) {
    _clearPendingNotificationState();

    context.pushNamed(
      'cBuyerRequestDetail',
      queryParameters: {
        'requestId': serializeParam(
          cardId,
          ParamType.int,
        ),
      }.withoutNulls,
    );

    return;
  }

  if (route == 'buyer_request_actuality' && cardId > 0) {
    _clearPendingNotificationState();

    context.pushNamed(
      'cBuyerRequestActuality',
      queryParameters: {
        'requestId': serializeParam(
          cardId,
          ParamType.int,
        ),
      }.withoutNulls,
    );

    return;
  }

  if (route == 'buyer_requests_history') {
    _clearPendingNotificationState();

    context.pushNamed(
      'pHistoryBuyer',
    );

    return;
  }
}

void _clearPendingNotificationState() {
  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = false;
    FFAppState().pendingNotificationType = '';
    FFAppState().pendingRequestId = 0;
    FFAppState().pendingRoute = '';
  });
}
