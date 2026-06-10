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

Future initAppLanguage(BuildContext context) async {
  try {
    String code = 'RU';

    // 1) если авторизован — берем lang_id -> languages.lang
    final uid = currentUserUid;
    if (uid.isNotEmpty) {
      final users = await DataUsersTable().queryRows(
        queryFn: (q) => q.eq('uid', uid).limit(1),
      );

      final langId = users.isNotEmpty ? users.first.langId : null;
      if (langId != null) {
        final langs = await LanguagesTable().queryRows(
          queryFn: (q) => q.eq('id', langId).limit(1),
        );
        if (langs.isNotEmpty && (langs.first.lang ?? '').isNotEmpty) {
          code = langs.first.lang!;
        }
      }
    }

    // 2) если из БД не нашли — берем из AppState (любой код: AZ/TJ/TM/...)
    if (code.isEmpty) {
      code =
          FFAppState().langCodeApp.isNotEmpty ? FFAppState().langCodeApp : 'RU';
    }

    // 3) сохраним в AppState
    FFAppState().langCodeApp = code;

    // 4) берем ff_locale из languages по lang = code
    final rows = await LanguagesTable().queryRows(
      queryFn: (q) => q.eq('lang', code).limit(1),
    );

    final ffLocale = (rows.isNotEmpty ? rows.first.ffLocale : null) ?? 'ru';

    // 5) применяем
    setAppLanguage(context, ffLocale.trim());
  } catch (e, st) {
    debugPrint('initAppLanguage error: $e\n$st');
  }
}
