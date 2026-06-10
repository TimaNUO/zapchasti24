// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarBrandsStruct extends BaseStruct {
  CarBrandsStruct({
    int? id,
    String? brand,
  })  : _id = id,
        _brand = brand;

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

  static CarBrandsStruct fromMap(Map<String, dynamic> data) => CarBrandsStruct(
        id: castToType<int>(data['id']),
        brand: data['brand'] as String?,
      );

  static CarBrandsStruct? maybeFromMap(dynamic data) => data is Map
      ? CarBrandsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'brand': _brand,
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
      }.withoutNulls;

  static CarBrandsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarBrandsStruct(
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
      );

  @override
  String toString() => 'CarBrandsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CarBrandsStruct && id == other.id && brand == other.brand;
  }

  @override
  int get hashCode => const ListEquality().hash([id, brand]);
}

CarBrandsStruct createCarBrandsStruct({
  int? id,
  String? brand,
}) =>
    CarBrandsStruct(
      id: id,
      brand: brand,
    );
