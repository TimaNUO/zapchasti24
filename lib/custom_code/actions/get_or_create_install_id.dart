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

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

Future<String> getOrCreateInstallId() async {
  const key = 'install_id';
  const uuid = Uuid();

  // 1) На web в Test Mode иногда SharedPreferences нестабилен → сразу safe fallback
  // (можно убрать этот блок, если хочешь именно хранить в web localStorage)
  if (kIsWeb) {
    try {
      final prefs = await SharedPreferences.getInstance();
      final existing = prefs.getString(key);
      if (existing != null && existing.isNotEmpty) return existing;

      final newId = uuid.v4();
      await prefs.setString(key, newId);
      return newId;
    } catch (_) {
      // web fallback без prefs
      return uuid.v4();
    }
  }

  // 2) Mobile/desktop: prefs + fallback
  try {
    final prefs = await SharedPreferences.getInstance();
    final existing = prefs.getString(key);
    if (existing != null && existing.isNotEmpty) {
      return existing;
    }

    final newId = uuid.v4();
    await prefs.setString(key, newId);
    return newId;
  } catch (_) {
    // Абсолютный fallback (никогда не возвращаем null)
    return uuid.v4();
  }
}
