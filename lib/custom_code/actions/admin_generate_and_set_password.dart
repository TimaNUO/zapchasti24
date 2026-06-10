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

import 'dart:math';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Возвращает СГЕНЕРИРОВАННЫЙ ПАРОЛЬ при успехе.
///
/// При ошибке возвращает строку вида: "ERR: <сообщение>"
Future<String?> adminGenerateAndSetPassword(String phone) async {
  final supabase = Supabase.instance.client;

  // 1) нормализация
  final cleanPhone = phone.replaceAll(RegExp(r'[^\d+]'), '');
  if (cleanPhone.isEmpty) return 'ERR: Введите корректный номер';

  // 2) пароль (6 цифр — соответствует min 6 для Supabase)
  final newPass = (100000 + Random.secure().nextInt(900000)).toString();

  // 3) ищем uid пользователя
  try {
    final row = await supabase
        .from('data_users')
        .select('uid')
        .eq('phone', cleanPhone)
        .maybeSingle();

    if (row == null || row['uid'] == null) {
      return 'ERR: Пользователь с таким телефоном не найден';
    }

    final String uid = row['uid'] as String;

    // 4) (опционально) обновляем "видимую копию" в своей таблице
    // ВАЖНО: хранить пароль в открытом виде НЕБЕЗОПАСНО — лучше убрать поле совсем.
    try {
      await supabase
          .from('data_users')
          .update({'password_hash': newPass}).eq('uid', uid);
    } catch (e) {
      debugPrint('data_users update error: $e'); // не критично для auth
    }

    // 5) меняем пароль в auth через Edge Function и ПРОВЕРЯЕМ статус
    try {
      final resp = await supabase.functions.invoke(
        'reset_password',
        body: {'uid': uid, 'new_password': newPass},
        headers: {'Content-Type': 'application/json'}, // на всякий случай
      );

      if (resp.status != 200) {
        debugPrint(
            'reset_password failed: status=${resp.status}, data=${resp.data}');
        return 'ERR: Не удалось обновить пароль в auth';
      }
    } catch (e) {
      debugPrint('reset_password invoke error: $e');
      return 'ERR: Сбой вызова edge-функции';
    }

    // 6) успех: возвращаем новый пароль (UI положит его в поле)
    return newPass;
  } on PostgrestException catch (e) {
    return 'ERR: БД: ${e.message}';
  } catch (e) {
    return 'ERR: Неизвестная ошибка: $e';
  }
}
