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

/// Set your action name, define your arguments and return parameter, and then
/// add the boilerplate code using the green button on the right!
Future<int?> getUserRoleIDByPhone(String phone) async {
  final supabase = Supabase.instance.client;

  final row = await supabase
      .from('data_users')
      .select('role_id')
      .eq('phone', phone)
      .order('created_at', ascending: false)
      .limit(1)
      .single();

  if (row == null) return null;

  // Возвращаем название роли как Return Value (String)
  return (row['role_id']) as int?;
}
