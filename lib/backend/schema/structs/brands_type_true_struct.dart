// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BrandsTypeTrueStruct extends BaseStruct {
  BrandsTypeTrueStruct({
    int? id,
    String? brand,
    List<ModelsTypeTrueStruct>? carModels,
  })  : _id = id,
        _brand = brand,
        _carModels = carModels;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "car_models" field.
  List<ModelsTypeTrueStruct>? _carModels;
  List<ModelsTypeTrueStruct> get carModels => _carModels ?? const [];
  set carModels(List<ModelsTypeTrueStruct>? val) => _carModels = val;

  void updateCarModels(Function(List<ModelsTypeTrueStruct>) updateFn) {
    updateFn(_carModels ??= []);
  }

  bool hasCarModels() => _carModels != null;

  static BrandsTypeTrueStruct fromMap(Map<String, dynamic> data) =>
      BrandsTypeTrueStruct(
        id: castToType<int>(data['id']),
        brand: data['brand'] as String?,
        carModels: getStructList(
          data['car_models'],
          ModelsTypeTrueStruct.fromMap,
        ),
      );

  static BrandsTypeTrueStruct? maybeFromMap(dynamic data) => data is Map
      ? BrandsTypeTrueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'brand': _brand,
        'car_models': _carModels?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'car_models': serializeParam(
          _carModels,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static BrandsTypeTrueStruct fromSerializableMap(Map<String, dynamic> data) =>
      BrandsTypeTrueStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        carModels: deserializeStructParam<ModelsTypeTrueStruct>(
          data['car_models'],
          ParamType.DataStruct,
          true,
          structBuilder: ModelsTypeTrueStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BrandsTypeTrueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BrandsTypeTrueStruct &&
        id == other.id &&
        brand == other.brand &&
        listEquality.equals(carModels, other.carModels);
  }

  @override
  int get hashCode => const ListEquality().hash([id, brand, carModels]);
}

BrandsTypeTrueStruct createBrandsTypeTrueStruct({
  int? id,
  String? brand,
}) =>
    BrandsTypeTrueStruct(
      id: id,
      brand: brand,
    );
