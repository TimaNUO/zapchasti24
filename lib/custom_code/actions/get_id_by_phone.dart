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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:supabase_flutter/supabase_flutter.dart';
//import 'package:postgrest/postgrest.dart';

Future<int?> getIdByPhone(String phone) async {
  final supabase = Supabase.instance.client;
  final p = phone.trim();

  try {
    final res = await supabase
        .from('data_users')
        .select('id')
        .eq('phone', p)
        .order('created_at', ascending: false)
        .limit(1)
        .maybeSingle();

    return res?['id'] as int?;
  } on PostgrestException {
    return null;
  } catch (_) {
    return null;
  }
}
