// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModelsTypeStruct extends BaseStruct {
  ModelsTypeStruct({
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
  bool get checkedModel => _checkedModel ?? false;
  set checkedModel(bool? val) => _checkedModel = val;

  bool hasCheckedModel() => _checkedModel != null;

  static ModelsTypeStruct fromMap(Map<String, dynamic> data) =>
      ModelsTypeStruct(
        id: castToType<int>(data['id']),
        model: data['model'] as String?,
        checkedModel: data['checked_model'] as bool?,
      );

  static ModelsTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ModelsTypeStruct.fromMap(data.cast<String, dynamic>())
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

  static ModelsTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ModelsTypeStruct(
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
  String toString() => 'ModelsTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ModelsTypeStruct &&
        id == other.id &&
        model == other.model &&
        checkedModel == other.checkedModel;
  }

  @override
  int get hashCode => const ListEquality().hash([id, model, checkedModel]);
}

ModelsTypeStruct createModelsTypeStruct({
  int? id,
  String? model,
  bool? checkedModel,
}) =>
    ModelsTypeStruct(
      id: id,
      model: model,
      checkedModel: checkedModel,
    );
