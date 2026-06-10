// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YearsStruct extends BaseStruct {
  YearsStruct({
    int? year,
  }) : _year = year;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  static YearsStruct fromMap(Map<String, dynamic> data) => YearsStruct(
        year: castToType<int>(data['year']),
      );

  static YearsStruct? maybeFromMap(dynamic data) =>
      data is Map ? YearsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'year': _year,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
      }.withoutNulls;

  static YearsStruct fromSerializableMap(Map<String, dynamic> data) =>
      YearsStruct(
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'YearsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is YearsStruct && year == other.year;
  }

  @override
  int get hashCode => const ListEquality().hash([year]);
}

YearsStruct createYearsStruct({
  int? year,
}) =>
    YearsStruct(
      year: year,
    );
