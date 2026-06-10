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

import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> signInWithPhone(String phone, String password) async {
  final auth = Supabase.instance.client.auth;

  try {
    // вызывать и не сохранять в переменную
    await auth.signInWithPassword(
      phone: phone.trim(),
      password: password,
    );

    // подстраховка: иногда currentSession появляется с задержкой
    //if (auth.currentSession == null) {
    //await auth.refreshSession();
    //}

    // небольшая пауза, чтобы FF «увидел» currentUser (можно убрать, если не нужно)
    //await Future<void>.delayed(const Duration(milliseconds: 100));

    return null; // успех
  } on AuthException catch (e) {
    return e.message;
  } catch (e) {
    return 'Ошибка входа: $e';
  }
}
