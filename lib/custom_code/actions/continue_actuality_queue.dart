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

// Вызывается после ответа на экране актуальности. Следующая ждущая заявка
// заменяет текущий экран; если заявок нет — экран закрывается, и покупатель
// возвращается туда, где был (стек под экраном актуальности не трогается).
Future continueActualityQueue(BuildContext context) async {
  var ids = const <int>[];
  try {
    final result = await SupaFlow.client.rpc('get_pending_actuality_requests');
    ids =
        ((result as List?) ?? const []).map((e) => (e as num).toInt()).toList();
  } catch (_) {}
  if (!context.mounted) return;
  if (ids.isNotEmpty) {
    context.pushReplacementNamed(
      'pBuyerRequestActuality',
      queryParameters: {
        'requestID': serializeParam(ids.first, ParamType.int),
      }.withoutNulls,
    );
    return;
  }
  context.safePop();
}
