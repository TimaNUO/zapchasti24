// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitiesStruct extends BaseStruct {
  CitiesStruct({
    int? id,
    String? city,
    CountriesStruct? countries,
  })  : _id = id,
        _city = city,
        _countries = countries;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "countries" field.
  CountriesStruct? _countries;
  CountriesStruct get countries => _countries ?? CountriesStruct();
  set countries(CountriesStruct? val) => _countries = val;

  void updateCountries(Function(CountriesStruct) updateFn) {
    updateFn(_countries ??= CountriesStruct());
  }

  bool hasCountries() => _countries != null;

  static CitiesStruct fromMap(Map<String, dynamic> data) => CitiesStruct(
        id: castToType<int>(data['id']),
        city: data['city'] as String?,
        countries: data['countries'] is CountriesStruct
            ? data['countries']
            : CountriesStruct.maybeFromMap(data['countries']),
      );

  static CitiesStruct? maybeFromMap(dynamic data) =>
      data is Map ? CitiesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'city': _city,
        'countries': _countries?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'countries': serializeParam(
          _countries,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CitiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CitiesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        countries: deserializeStructParam(
          data['countries'],
          ParamType.DataStruct,
          false,
          structBuilder: CountriesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CitiesStruct &&
        id == other.id &&
        city == other.city &&
        countries == other.countries;
  }

  @override
  int get hashCode => const ListEquality().hash([id, city, countries]);
}

CitiesStruct createCitiesStruct({
  int? id,
  String? city,
  CountriesStruct? countries,
}) =>
    CitiesStruct(
      id: id,
      city: city,
      countries: countries ?? CountriesStruct(),
    );
