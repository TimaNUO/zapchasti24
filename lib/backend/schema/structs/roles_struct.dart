// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesStruct extends BaseStruct {
  RolesStruct({
    String? role,
  }) : _role = role;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  static RolesStruct fromMap(Map<String, dynamic> data) => RolesStruct(
        role: data['role'] as String?,
      );

  static RolesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RolesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
      }.withoutNulls;

  static RolesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RolesStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RolesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RolesStruct && role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([role]);
}

RolesStruct createRolesStruct({
  String? role,
}) =>
    RolesStruct(
      role: role,
    );
