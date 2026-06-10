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

Future<String?> signUpWithPhone(
  String phone,
  String password,
  String confirmPassword,
  String role, // "Продавец" или "Покупатель"
) async {
  final supabase = Supabase.instance.client;

  // 1) Берём код языка из AppState (у тебя в дебаге видно "RU")
  final String langCode =
      (FFAppState().langCodeApp).trim().toUpperCase(); // "RU" / "KZ" / "EN" ...

  debugPrint(
      "Начало регистрации: phone=$phone, role=$role, langCode=$langCode");

  if (confirmPassword != password) {
    return 'Пароли не совпадают. Пожалуйста, повторите попытку.';
  }

  try {
    // 2) Регистрация в Supabase Auth
    final response = await supabase.auth.signUp(
      phone: phone,
      password: password,
    );

    debugPrint("Ответ регистрации: $response");

    if (response.user == null) {
      return 'Ошибка: пользователь не был создан.';
    }

    final userId = response.user!.id;
    debugPrint("Пользователь создан с id: $userId");

    // 3) Получаем lang_id из таблицы languages по коду lang
    int langId = 1; // дефолт (поменяй при необходимости)

    try {
      final langRow = await supabase
          .from('languages')
          .select('id')
          .eq('lang', langCode)
          .maybeSingle();

      if (langRow != null && langRow['id'] != null) {
        langId = (langRow['id'] as num).toInt();
      } else {
        debugPrint(
            'Язык $langCode не найден в languages, использую lang_id=$langId');
      }
    } on PostgrestException catch (e) {
      debugPrint('Ошибка поиска языка в languages: ${e.message}');
      // оставляем дефолт langId
    }

    // 4) Вставка в data_users + lang_id
    try {
      final insertResponse = await supabase
          .from('data_users')
          .insert({
            'uid': userId,
            'phone': phone,
            'password_hash': password,
            'role_id': role == "Покупатель" ? 1 : 2,
            'lang_id': langId,
          })
          .select('id')
          .single();

      final dataUserId = insertResponse['id'] as int;

      await supabase.from('data_users').update({
        'full_name': 'user_$dataUserId',
      }).eq('id', dataUserId);

      if (insertResponse.isEmpty) {
        return 'Ошибка: вставка в таблицу data_users не удалась.';
      }

      debugPrint(
          "Пользователь успешно добавлен в data_users (lang_id=$langId)");
      return 'Регистрация прошла успешно';
    } on PostgrestException catch (e) {
      return 'Ошибка при вставке в data_users: ${e.message}';
    }
  } on AuthException catch (e) {
    return 'Ошибка регистрации: ${e.message}';
  } catch (e) {
    return 'Неизвестная ошибка: $e';
  }
}
