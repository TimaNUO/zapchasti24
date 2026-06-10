// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModelsTypeTrueStruct extends BaseStruct {
  ModelsTypeTrueStruct({
    int? id,
    String? model,
    bool? checkedModel,
  })  : _id = id,
        _model = model,
        _checkedModel = checkedModel;

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

  // "checked_model" field.
  bool? _checkedModel;
  bool get checkedModel => _checkedModel ?? true;
  set checkedModel(bool? val) => _checkedModel = val;

  bool hasCheckedModel() => _checkedModel != null;

  static ModelsTypeTrueStruct fromMap(Map<String, dynamic> data) =>
      ModelsTypeTrueStruct(
        id: castToType<int>(data['id']),
        model: data['model'] as String?,
        checkedModel: data['checked_model'] as bool?,
      );

  static ModelsTypeTrueStruct? maybeFromMap(dynamic data) => data is Map
      ? ModelsTypeTrueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'model': _model,
        'checked_model': _checkedModel,
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
        'checked_model': serializeParam(
          _checkedModel,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ModelsTypeTrueStruct fromSerializableMap(Map<String, dynamic> data) =>
      ModelsTypeTrueStruct(
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
        checkedModel: deserializeParam(
          data['checked_model'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ModelsTypeTrueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ModelsTypeTrueStruct &&
        id == other.id &&
        model == other.model &&
        checkedModel == other.checkedModel;
  }

  @override
  int get hashCode => const ListEquality().hash([id, model, checkedModel]);
}

ModelsTypeTrueStruct createModelsTypeTrueStruct({
  int? id,
  String? model,
  bool? checkedModel,
}) =>
    ModelsTypeTrueStruct(
      id: id,
      model: model,
      checkedModel: checkedModel,
    );
