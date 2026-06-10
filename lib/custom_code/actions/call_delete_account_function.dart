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

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> callDeleteAccountFunction() async {
  final supabase = Supabase.instance.client;

  try {
    final response = await supabase.functions.invoke(
      'delete-account',
      body: {}, // если тело не нужно
    );

    debugPrint('delete-account status: ${response.status}');
    debugPrint('delete-account data: ${response.data}');

    if (response.status != 200) {
      debugPrint('delete-account failed with status ${response.status}');
    }
  } catch (e, st) {
    debugPrint('delete-account error: $e');
    debugPrint('delete-account stack: $st');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
