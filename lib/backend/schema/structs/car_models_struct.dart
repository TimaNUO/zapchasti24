// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarModelsStruct extends BaseStruct {
  CarModelsStruct({
    int? id,
    String? model,
    CarBrandsStruct? brand,
  })  : _id = id,
        _model = model,
        _brand = brand;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "brand" field.
  CarBrandsStruct? _brand;
  CarBrandsStruct get brand => _brand ?? CarBrandsStruct();
  set brand(CarBrandsStruct? val) => _brand = val;

  void updateBrand(Function(CarBrandsStruct) updateFn) {
    updateFn(_brand ??= CarBrandsStruct());
  }

  bool hasBrand() => _brand != null;

  static CarModelsStruct fromMap(Map<String, dynamic> data) => CarModelsStruct(
        id: castToType<int>(data['id']),
        model: data['model'] as String?,
        brand: data['brand'] is CarBrandsStruct
            ? data['brand']
            : CarBrandsStruct.maybeFromMap(data['brand']),
      );

  static CarModelsStruct? maybeFromMap(dynamic data) => data is Map
      ? CarModelsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'model': _model,
        'brand': _brand?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CarModelsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarModelsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        brand: deserializeStructParam(
          data['brand'],
          ParamType.DataStruct,
          false,
          structBuilder: CarBrandsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CarModelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CarModelsStruct &&
        id == other.id &&
        model == other.model &&
        brand == other.brand;
  }

  @override
  int get hashCode => const ListEquality().hash([id, model, brand]);
}

CarModelsStruct createCarModelsStruct({
  int? id,
  String? model,
  CarBrandsStruct? brand,
}) =>
    CarModelsStruct(
      id: id,
      model: model,
      brand: brand ?? CarBrandsStruct(),
    );
