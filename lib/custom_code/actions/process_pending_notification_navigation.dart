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

import 'dart:async';
import 'index.dart'; // openNextActualityRequest
import '/auth/supabase_auth/auth_util.dart';

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

//
Future processPendingNotificationNavigation(BuildContext context) async {
  final String route = FFAppState().pendingRoute;
  final int cardId = FFAppState().pendingRequestId;
  final bool openedFromPush = FFAppState().isAppOpenedFromPush;

  _logEvent('debug', 'navigate:entry', {
    'route': route,
    'cardId': cardId,
    'openedFromPush': openedFromPush,
    'contextMounted': context.mounted,
  });

  if (!openedFromPush) return;
  if (route.isEmpty) return;

  if (!context.mounted) {
    _logEvent('warn', 'navigate:contextUnmounted', {'route': route});
    return;
  }

  _clearPendingState();

  try {
    if (route == 'request_detail' && cardId > 0) {
      if (!await _isRequestAlive(cardId)) {
        _logEvent('info', 'navigate:requestNotAlive', {'cardId': cardId});
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Заявка уже снята')),
          );
        }
        return;
      }
      if (!context.mounted) return;
      _navigateTo(
        context,
        'pSellerRequestDetail',
        queryParameters: {
          'requestID': serializeParam(cardId, ParamType.int),
        }.withoutNulls,
      );
      return;
    }

    if (route == 'buyer_request_actuality') {
      // Очередь: откроется самая ранняя живая заявка, ждущая ответа.
      await openNextActualityRequest(context);
      return;
    }

    if (route == 'buyer_requests_history') {
      _navigateTo(context, 'pHistoryBuyer');
      return;
    }

    if (route == 'ad_detail' && cardId > 0) {
      _navigateTo(
        context,
        'pAdDetail',
        queryParameters: {
          'adId': serializeParam(cardId, ParamType.int),
        }.withoutNulls,
      );
      return;
    }

    if (route == 'seller_profile') {
      _navigateTo(context, 'pSellerProfile');
      return;
    }

    if (route == 'buyer_profile') {
      _navigateTo(context, 'pBuyerProfile');
      return;
    }

    _logEvent('warn', 'navigate:routeMatchedNothing', {'route': route});
  } catch (e) {
    _logEvent(
        'error', 'navigate:error', {'error': e.toString(), 'route': route});
  }
}

void _navigateTo(
  BuildContext context,
  String routeName, {
  Map<String, String>? queryParameters,
}) {
  final navigator = Navigator.of(context);
  // Peek at top route name without actually popping
  String topRouteName = '';
  navigator.popUntil((route) {
    topRouteName = route.settings.name ?? '';
    return true;
  });
  // If already on same route, pop first so new push creates a fresh instance
  if (topRouteName.contains(routeName) && navigator.canPop()) {
    navigator.pop();
  }
  if (queryParameters != null) {
    context.pushNamed(routeName, queryParameters: queryParameters);
  } else {
    context.pushNamed(routeName);
  }
}

Future<bool> _isRequestAlive(int requestId) async {
  try {
    final row = await SupaFlow.client
        .from('requests')
        .select('is_alive')
        .eq('id', requestId)
        .maybeSingle();
    return row?['is_alive'] == true;
  } catch (_) {
    return true;
  }
}

void _clearPendingState() {
  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = false;
    FFAppState().pendingNotificationType = '';
    FFAppState().pendingRequestId = 0;
    FFAppState().pendingRoute = '';
  });
}
