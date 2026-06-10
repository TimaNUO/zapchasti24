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

Future initLast10Days() async {
  // Астана: UTC+5 (без DST)
  const offset = Duration(hours: 5);

  final utcNow = DateTime.now().toUtc();
  final astanaNow = utcNow.add(offset);

  // 00:00 "сегодня" по Астане (wall-time)
  final astanaTodayStartWall =
      DateTime(astanaNow.year, astanaNow.month, astanaNow.day);

  // Последние 10 суток по дням Астаны (включая сегодня):
  // от 00:00 (сегодня-9) до 00:00 (завтра) [эксклюзивно]
  final fromWall = astanaTodayStartWall.subtract(const Duration(days: 9));
  final toExclusiveWall = astanaTodayStartWall.add(const Duration(days: 1));

  // Конвертируем границы wall-time Астаны в UTC моменты (для Supabase)
  final fromUtc = DateTime.utc(fromWall.year, fromWall.month, fromWall.day)
      .subtract(offset);

  final toExclusiveUtc = DateTime.utc(
          toExclusiveWall.year, toExclusiveWall.month, toExclusiveWall.day)
      .subtract(offset);

  // Сохраняем в App State (UTC)
  FFAppState().dateFromDT = fromUtc;
  FFAppState().dateToDT = toExclusiveUtc; // важно: это "эксклюзивный конец"

  // Для отображения дат — wall (Астана), без времени
  FFAppState().dateFrom = dateTimeFormat('yMMMd', fromWall, locale: 'ru');
  FFAppState().dateTo = dateTimeFormat(
      'yMMMd', toExclusiveWall.subtract(const Duration(days: 1)),
      locale: 'ru');
}
