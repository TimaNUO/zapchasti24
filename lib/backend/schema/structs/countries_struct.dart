// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesStruct extends BaseStruct {
  CountriesStruct({
    int? id,
    String? country,
  })  : _id = id,
        _country = country;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  static CountriesStruct fromMap(Map<String, dynamic> data) => CountriesStruct(
        id: castToType<int>(data['id']),
        country: data['country'] as String?,
      );

  static CountriesStruct? maybeFromMap(dynamic data) => data is Map
      ? CountriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountriesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountriesStruct &&
        id == other.id &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality().hash([id, country]);
}

CountriesStruct createCountriesStruct({
  int? id,
  String? country,
}) =>
    CountriesStruct(
      id: id,
      country: country,
    );
