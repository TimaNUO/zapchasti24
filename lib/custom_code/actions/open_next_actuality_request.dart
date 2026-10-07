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

import '/auth/supabase_auth/auth_util.dart';

DateTime? _lastOpenedAt;

// Открывает самую раннюю заявку покупателя, ждущую ответа об актуальности.
// Следующая откроется после ответа: экран актуальности возвращает на главную,
// и главная снова вызывает это действие.
Future openNextActualityRequest(BuildContext context) async {
  if (currentUserUid.isEmpty) return;
  // При открытии из пуша действие вызывается дважды подряд — экран нужен один.
  final last = _lastOpenedAt;
  if (last != null &&
      DateTime.now().difference(last) < const Duration(seconds: 2)) {
    return;
  }
  try {
    final result = await SupaFlow.client.rpc('get_pending_actuality_requests');
    final ids =
        ((result as List?) ?? const []).map((e) => (e as num).toInt()).toList();
    if (ids.isEmpty || !context.mounted) return;
    if (_actualityPageOnTop(context)) return;
    _lastOpenedAt = DateTime.now();
    context.pushNamed(
      'pBuyerRequestActuality',
      queryParameters: {
        'requestID': serializeParam(ids.first, ParamType.int),
      }.withoutNulls,
    );
  } catch (_) {}
}

bool _actualityPageOnTop(BuildContext context) {
  var top = '';
  Navigator.of(context).popUntil((route) {
    top = route.settings.name ?? '';
    return true;
  });
  return top.contains('pBuyerRequestActuality');
}
