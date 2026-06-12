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
  if (!context.mounted) return;

  final bool openedFromPush = FFAppState().isAppOpenedFromPush;
  final String route = FFAppState().pendingRoute;
  final int cardId = FFAppState().pendingRequestId;

  if (!openedFromPush) return;
  if (route.isEmpty) return;

  await Future.delayed(const Duration(milliseconds: 500));

  if (!context.mounted) return;

  if (route == 'request_detail' && cardId > 0) {
    _clearPendingState();
    context.pushNamed(
      'pSellerRequestDetail',
      queryParameters: {
        'requestId': serializeParam(cardId, ParamType.int),
      }.withoutNulls,
    );
    return;
  }

  if (route == 'buyer_request_actuality' && cardId > 0) {
    _clearPendingState();
    context.pushNamed(
      'pBuyerRequestActuality',
      queryParameters: {
        'requestId': serializeParam(cardId, ParamType.int),
      }.withoutNulls,
    );
    return;
  }

  if (route == 'buyer_requests_history') {
    _clearPendingState();
    context.pushNamed('pHistoryBuyer');
    return;
  }

  if (route == 'ad_detail' && cardId > 0) {
    _clearPendingState();
    context.pushNamed(
      'pAdDetail',
      queryParameters: {
        'adId': serializeParam(cardId, ParamType.int),
      }.withoutNulls,
    );
    return;
  }

  if (route == 'seller_profile') {
    _clearPendingState();
    context.pushNamed('pSellerProfile');
    return;
  }

  if (route == 'buyer_profile') {
    _clearPendingState();
    context.pushNamed('pBuyerProfile');
    return;
  }

  // Неизвестный маршрут — сбрасываем, чтобы не зависло
  _clearPendingState();
}

void _clearPendingState() {
  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = false;
    FFAppState().pendingNotificationType = '';
    FFAppState().pendingRequestId = 0;
    FFAppState().pendingRoute = '';
  });
}
