// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehicleUsersStruct extends BaseStruct {
  VehicleUsersStruct({
    String? vin,
    YearsStruct? years,
    CarModelsStruct? carModels,
  })  : _vin = vin,
        _years = years,
        _carModels = carModels;

  // "vin" field.
  String? _vin;
  String get vin => _vin ?? '';
  set vin(String? val) => _vin = val;

  bool hasVin() => _vin != null;

  // "years" field.
  YearsStruct? _years;
  YearsStruct get years => _years ?? YearsStruct();
  set years(YearsStruct? val) => _years = val;

  void updateYears(Function(YearsStruct) updateFn) {
    updateFn(_years ??= YearsStruct());
  }

  bool hasYears() => _years != null;

  // "car_models" field.
  CarModelsStruct? _carModels;
  CarModelsStruct get carModels => _carModels ?? CarModelsStruct();
  set carModels(CarModelsStruct? val) => _carModels = val;

  void updateCarModels(Function(CarModelsStruct) updateFn) {
    updateFn(_carModels ??= CarModelsStruct());
  }

  bool hasCarModels() => _carModels != null;

  static VehicleUsersStruct fromMap(Map<String, dynamic> data) =>
      VehicleUsersStruct(
        vin: data['vin'] as String?,
        years: data['years'] is YearsStruct
            ? data['years']
            : YearsStruct.maybeFromMap(data['years']),
        carModels: data['car_models'] is CarModelsStruct
            ? data['car_models']
            : CarModelsStruct.maybeFromMap(data['car_models']),
      );

  static VehicleUsersStruct? maybeFromMap(dynamic data) => data is Map
      ? VehicleUsersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vin': _vin,
        'years': _years?.toMap(),
        'car_models': _carModels?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vin': serializeParam(
          _vin,
          ParamType.String,
        ),
        'years': serializeParam(
          _years,
          ParamType.DataStruct,
        ),
        'car_models': serializeParam(
          _carModels,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static VehicleUsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      VehicleUsersStruct(
        vin: deserializeParam(
          data['vin'],
          ParamType.String,
          false,
        ),
        years: deserializeStructParam(
          data['years'],
          ParamType.DataStruct,
          false,
          structBuilder: YearsStruct.fromSerializableMap,
        ),
        carModels: deserializeStructParam(
          data['car_models'],
          ParamType.DataStruct,
          false,
          structBuilder: CarModelsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VehicleUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VehicleUsersStruct &&
        vin == other.vin &&
        years == other.years &&
        carModels == other.carModels;
  }

  @override
  int get hashCode => const ListEquality().hash([vin, years, carModels]);
}

VehicleUsersStruct createVehicleUsersStruct({
  String? vin,
  YearsStruct? years,
  CarModelsStruct? carModels,
}) =>
    VehicleUsersStruct(
      vin: vin,
      years: years ?? YearsStruct(),
      carModels: carModels ?? CarModelsStruct(),
    );
