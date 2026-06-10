// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataBuyerTypeStruct extends BaseStruct {
  DataBuyerTypeStruct({
    String? fullName,
    RolesStruct? roles,
    CitiesStruct? cities,
    List<VehicleUsersStruct>? vehicleUsers,
  })  : _fullName = fullName,
        _roles = roles,
        _cities = cities,
        _vehicleUsers = vehicleUsers;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "roles" field.
  RolesStruct? _roles;
  RolesStruct get roles => _roles ?? RolesStruct();
  set roles(RolesStruct? val) => _roles = val;

  void updateRoles(Function(RolesStruct) updateFn) {
    updateFn(_roles ??= RolesStruct());
  }

  bool hasRoles() => _roles != null;

  // "cities" field.
  CitiesStruct? _cities;
  CitiesStruct get cities => _cities ?? CitiesStruct();
  set cities(CitiesStruct? val) => _cities = val;

  void updateCities(Function(CitiesStruct) updateFn) {
    updateFn(_cities ??= CitiesStruct());
  }

  bool hasCities() => _cities != null;

  // "vehicle_users" field.
  List<VehicleUsersStruct>? _vehicleUsers;
  List<VehicleUsersStruct> get vehicleUsers => _vehicleUsers ?? const [];
  set vehicleUsers(List<VehicleUsersStruct>? val) => _vehicleUsers = val;

  void updateVehicleUsers(Function(List<VehicleUsersStruct>) updateFn) {
    updateFn(_vehicleUsers ??= []);
  }

  bool hasVehicleUsers() => _vehicleUsers != null;

  static DataBuyerTypeStruct fromMap(Map<String, dynamic> data) =>
      DataBuyerTypeStruct(
        fullName: data['full_name'] as String?,
        roles: data['roles'] is RolesStruct
            ? data['roles']
            : RolesStruct.maybeFromMap(data['roles']),
        cities: data['cities'] is CitiesStruct
            ? data['cities']
            : CitiesStruct.maybeFromMap(data['cities']),
        vehicleUsers: getStructList(
          data['vehicle_users'],
          VehicleUsersStruct.fromMap,
        ),
      );

  static DataBuyerTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? DataBuyerTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'full_name': _fullName,
        'roles': _roles?.toMap(),
        'cities': _cities?.toMap(),
        'vehicle_users': _vehicleUsers?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'roles': serializeParam(
          _roles,
          ParamType.DataStruct,
        ),
        'cities': serializeParam(
          _cities,
          ParamType.DataStruct,
        ),
        'vehicle_users': serializeParam(
          _vehicleUsers,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DataBuyerTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataBuyerTypeStruct(
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        roles: deserializeStructParam(
          data['roles'],
          ParamType.DataStruct,
          false,
          structBuilder: RolesStruct.fromSerializableMap,
        ),
        cities: deserializeStructParam(
          data['cities'],
          ParamType.DataStruct,
          false,
          structBuilder: CitiesStruct.fromSerializableMap,
        ),
        vehicleUsers: deserializeStructParam<VehicleUsersStruct>(
          data['vehicle_users'],
          ParamType.DataStruct,
          true,
          structBuilder: VehicleUsersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataBuyerTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataBuyerTypeStruct &&
        fullName == other.fullName &&
        roles == other.roles &&
        cities == other.cities &&
        listEquality.equals(vehicleUsers, other.vehicleUsers);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullName, roles, cities, vehicleUsers]);
}

DataBuyerTypeStruct createDataBuyerTypeStruct({
  String? fullName,
  RolesStruct? roles,
  CitiesStruct? cities,
}) =>
    DataBuyerTypeStruct(
      fullName: fullName,
      roles: roles ?? RolesStruct(),
      cities: cities ?? CitiesStruct(),
    );
