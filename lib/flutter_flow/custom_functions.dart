import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<String> convertListIntToString(List<int> num) {
  return num.map((element) => element.toString()).toList();
}

String convertIntToString(int num) {
  return num.toString();
}

String buildUserRequestFilter(int userId) {
  //return "eq.vehicle_users(data_users($userId))";

  //final filter = "eq.data_users(userId)=" + userId;
  //final filter = "vehicle_users(data_users($userId))";
  final filter = "vehicle_users(user_id)=$userId";
  //final filter = "32";

  debugPrint("Фильтр: $filter");
  return filter;
}

int convertStringToInt(String num) {
  // convert string to int
  return int.parse(num);
}

int calcRatingCount(List<int> ratings) {
  return ratings.length;
}

String buildFilter(String userId) {
  return "and(eq.$userId,not.is.null)";
}

String listToStr(List<int>? numbers) {
  if (numbers == null || numbers.isEmpty) {
    return '';
  }
  // join аккуратно сделает toString() для каждого элемента и вставит запятую
  return numbers.join(',');
}

List<int> extractCheckedModelIds(List<BrandsTypeStruct>? brands) {
  if (brands == null) return [];
  final result = <int>[];
  for (final b in brands) {
    final models = b.carModels;
    if (models == null) continue;
    for (final m in models) {
      if (m.checkedModel == true && m.id != null) {
        result.add(m.id!);
      }
    }
  }
  return result;
}

int extractTotal(String cr) {
  if (cr == null) return 0;
  final i = cr.indexOf('/');
  if (i == -1) return 0;
  final totalStr = cr.substring(i + 1).trim();
  if (totalStr == '*' || totalStr.isEmpty) return 0;
  return int.tryParse(totalStr) ?? 0;

  //return int.parse(cr.split('/').last);
}

int extractTotals(
  String cr1,
  String cr2,
) {
  return int.parse(cr1.split('/').last) + int.parse(cr2.split('/').last);
}

int extract4Totals(
  String cr1,
  String cr2,
  String cr3,
  String cr4,
) {
  return int.parse(cr1.split('/').last) +
      int.parse(cr2.split('/').last) +
      int.parse(cr3.split('/').last) +
      int.parse(cr4.split('/').last);
}

double calcRating(List<int> ratings) {
  if (ratings.isEmpty) return 0.0;
  final nums = ratings
      .map((e) => e is num ? e.toDouble() : double.tryParse('$e') ?? 0.0)
      .toList();
  final avg = nums.fold<double>(0.0, (s, e) => s + e) / nums.length;
  return (avg * 100).round() / 100; // до сотых
}

String cleanPhoneNumber(String rawPhone) {
  // 1) Убираем всё, что не цифра:
  final digitsOnly = rawPhone.replaceAll(RegExp(r'\D'), '');

  // 2) Если ничего не осталось — возвращаем пустую строку:
  if (digitsOnly.isEmpty) {
    return '';
  }

  // 3) Добавляем “+” и возвращаем:
  return '+$digitsOnly';
}

String formatWithThousands(String raw) {
  // оставляем только цифры
  final digits = raw.replaceAll(RegExp(r'\D'), '');
  if (digits.isEmpty) return '';

  // собираем с конца через StringBuffer
  final buf = StringBuffer();
  int count = 0;
  for (var i = digits.length - 1; i >= 0; i--) {
    buf.write(digits[i]);
    count++;
    if (count == 3 && i != 0) {
      buf.write(' ');
      count = 0;
    }
  }
  // переворачиваем назад
  return buf.toString().split('').reversed.join();
}

List<int> extractModelIds(dynamic input) {
  // 1) Приводим вход к List<dynamic>
  final List<dynamic> data = input is String
      ? jsonDecode(input) as List<dynamic>
      : input as List<dynamic>;

  // 2) Собираем все int id
  final ids = <int>[];
  for (final brandItem in data) {
    final List<dynamic> carModels =
        (brandItem['car_models'] as List<dynamic>?) ?? [];
    for (final model in carModels) {
      final rawId = model['id'];
      if (rawId is int) {
        ids.add(rawId);
      } else if (rawId is String) {
        final parsed = int.tryParse(rawId);
        if (parsed != null) ids.add(parsed);
      }
    }
  }

  // 3) Возвращаем список
  return ids;
}

List<int> extractPartCategoryIds(dynamic input) {
  // 1) Преобразуем строку в List, если нужно
  final List<dynamic> rawList = input is String
      ? jsonDecode(input) as List<dynamic>
      : input as List<dynamic>;

  // 2) Собираем только числовые id
  return rawList.map((e) => e['id']).whereType<int>().toList();
}

String wrapWithPercent(String input) {
  return '%$input%';
}

int isoToEpochMs(
  String isoStr,
  bool isEnd,
) {
  // Вернёт миллисекунды с 1970-01-01 UTC
  var dt = DateTime.parse(isoStr);
  // Supabase возвращает в UTC
  dt = DateTime(dt.year, dt.month, dt.day);
  if (isEnd) {
    dt = dt
        .subtract(const Duration(days: 1))
        .add(const Duration(milliseconds: 1));
  } else {
    dt = dt
        .add(const Duration(days: 1))
        .subtract(const Duration(milliseconds: 1));
  }
  return dt.millisecondsSinceEpoch;
}

int isoToEpochMsDefault(String isoStr) {
  //
  // Supabase возвращает в UTC
  return DateTime.parse(isoStr).toUtc().millisecondsSinceEpoch;
}

int sumOrdersPrices(List<dynamic> orders) {
  int total = 0;
  for (final o in orders) {
    final v = (o is Map) ? ((o['offers'] ?? const {}) as Map)['price'] : null;
    if (v is num) {
      total += v.toInt();
    } else if (v is String) {
      total += int.tryParse(v.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
    }
  }
  return total;
}

bool isNonEmptyPassword(String? s) {
  if (s == null) return false;
  final t = s.trim();
  if (t.isEmpty) return false;
  // Ошибка, если начинается с 'ERR' (без учета регистра)
  if (t.toUpperCase().startsWith('ERR')) return false;
  return true;
}

bool isValidVIN(String? vin) {
  // 0. Пустое значение — разрешено
  if (vin == null || vin.trim().isEmpty) {
    return true;
  }

  final trimmed = vin.trim().toUpperCase();

  // 1. Длина ровно 17 символов
  if (trimmed.length != 17) return false;

  // 2. Разрешены только цифры и латинские буквы, кроме I, O, Q
  final vinRegex = RegExp(r'^[A-HJ-NPR-Z0-9]{17}$');

  return vinRegex.hasMatch(trimmed);
}

List<String> merge6Lists(
  List<String>? oldList,
  List<String>? newList,
) {
  // Объединяем оба списка, даже если один из них null
  final merged = [
    ...?oldList,
    ...?newList,
  ];

  // Ограничиваем максимум 6 элементов
  if (merged.length > 6) {
    return merged.sublist(0, 6);
  }

  return merged;
}

List<String> merge15Lists(
  List<String>? oldList,
  List<String>? newList,
) {
  // Объединяем оба списка, даже если один из них null
  final merged = [
    ...?oldList,
    ...?newList,
  ];

  // Ограничиваем максимум 6 элементов
  if (merged.length > 15) {
    return merged.sublist(0, 15);
  }

  return merged;
}

String last4Digits(String phone) {
  return phone.substring(phone.length - 4);
}

String phoneToWhatsApp(String phone) {
  if (phone.isEmpty) return '';

  // оставляем только цифры
  final digits = phone.replaceAll(RegExp(r'[^0-9]'), '');

  // если номер начинается с 8 (часто РФ/КЗ), а должен быть 7...
  // включи это правило только если тебе реально нужно:
  if (digits.length == 11 && digits.startsWith('8')) {
    return '7${digits.substring(1)}';
  }

  return digits; // например: 77444444444
}

bool searchMatchCi(
  String? text,
  String? query,
) {
  final q = (query ?? '').trim().toLowerCase();
  if (q.isEmpty) return true; // если поиск пустой — показываем все
  final t = (text ?? '').toLowerCase();
  return t.contains(q);
}

bool isPhoneMatchesMask(
  String rawPhone,
  String mask,
) {
  final phoneDigits = rawPhone.replaceAll(RegExp(r'\D'), ''); // только цифры

  final hashCount =
      '#'.allMatches(mask).length; // сколько цифр вводится пользователем
  final fixedDigitsCount = RegExp(r'\d')
      .allMatches(mask)
      .length; // сколько цифр уже в маске (код страны)

  final required = hashCount + fixedDigitsCount;

  return phoneDigits.length == required;
}

int convertJsonToInt(dynamic v) {
  if (v == null) return 0;
  final s = v.toString();
  return int.tryParse(s) ?? 0;
}

String convertJsonToString(dynamic v) {
  return v.toString();
}

String? extractStoragePath(String? mediaUrl) {
  if (mediaUrl == null || mediaUrl.isEmpty) {
    return null;
  }

  const marker = '/storage/v1/object/public/chat-media/';
  final index = mediaUrl.indexOf(marker);

  if (index == -1) {
    return null;
  }

  final path = mediaUrl.substring(index + marker.length);
  return path.isEmpty ? null : path;
}
