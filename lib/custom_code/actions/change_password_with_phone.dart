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

import 'package:supabase_flutter/supabase_flutter.dart';

/// Возвращает null при успехе, иначе текст ошибки.
Future<String?> changePasswordWithPhone(
  String phone,
  String oldPassword,
  String newPassword,
  String confirmPassword,
) async {
  final supabase = Supabase.instance.client;

  // 0) базовая валидация
  if (newPassword != confirmPassword)
    return 'Новый пароль и подтверждение не совпадают';
  if (newPassword.length < 6)
    return 'Новый пароль должен быть минимум 6 символов';
  if (newPassword == oldPassword)
    return 'Новый пароль не должен совпадать со старым';

  // 1) нормализуем телефон (оставим + и цифры)
  final cleanPhone = phone.replaceAll(RegExp(r'[^\d+]'), '');
  if (cleanPhone.isEmpty) return 'Введите корректный номер телефона';

  try {
    // 2) ЯВНО проверяем старый пароль — пробуем войти по phone+oldPassword.
    // Если не выйдет — значит старый пароль неверный.
    AuthResponse signInResp;
    try {
      signInResp = await supabase.auth.signInWithPassword(
        phone: cleanPhone,
        password: oldPassword,
      );
    } on AuthException catch (e) {
      // Ошибка именно на этапе входа — старый пароль не подошёл
      return e.statusCode == '400'
          ? 'Старый пароль неверный'
          : 'Не удалось подтвердить старый пароль: ${e.message}';
    }

    if (signInResp.user == null) {
      return 'Старый пароль неверный'; // подстраховка
    }

    // 3) Меняем пароль
    await supabase.auth.updateUser(UserAttributes(password: newPassword));

    // 4) (опционально) Если вы храните копию пароля в своей таблице — обновите её
    // ВАЖНО: хранить пароль в открытом виде небезопасно, лучше удалить это поле совсем.
    try {
      await supabase.from('data_users').update(
          {'password_hash': newPassword}).eq('uid', signInResp.user!.id);
    } catch (_) {
      // игнорируем, если такой колонки нет/есть RLS — это не критично для смены пароля
    }

    // 5) (опционально) Перелогиниться сразу новым паролем, чтобы сессия была валидна дальше:
    // await supabase.auth.signInWithPassword(phone: cleanPhone, password: newPassword);

    return null; // успех
  } on AuthException catch (e) {
    return 'Ошибка смены пароля: ${e.message}';
  } catch (e) {
    return 'Неизвестная ошибка: $e';
  }
}
