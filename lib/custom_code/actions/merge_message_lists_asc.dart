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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

Future<List<dynamic>> mergeMessageListsAsc(
  List<dynamic>? baseList,
  List<dynamic>? incomingList,
) async {
  final Map<String, Map<String, dynamic>> byId = {};

  void addItems(List<dynamic>? items) {
    if (items == null) return;

    for (final item in items) {
      if (item is Map) {
        final map = Map<String, dynamic>.from(item);
        final id = map['id']?.toString();
        if (id != null && id.isNotEmpty) {
          byId[id] = map;
        }
      }
    }
  }

  addItems(baseList);
  addItems(incomingList);

  final result = byId.values.toList();

  result.sort((a, b) {
    final aDate = DateTime.tryParse(a['created_at']?.toString() ?? '') ??
        DateTime.fromMillisecondsSinceEpoch(0);
    final bDate = DateTime.tryParse(b['created_at']?.toString() ?? '') ??
        DateTime.fromMillisecondsSinceEpoch(0);

    return aDate.compareTo(bDate); // старые сверху, новые снизу
  });

  return result;
}
