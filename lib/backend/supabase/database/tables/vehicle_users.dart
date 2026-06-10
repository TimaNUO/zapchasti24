import '../database.dart';

class VehicleUsersTable extends SupabaseTable<VehicleUsersRow> {
  @override
  String get tableName => 'vehicle_users';

  @override
  VehicleUsersRow createRow(Map<String, dynamic> data) => VehicleUsersRow(data);
}

class VehicleUsersRow extends SupabaseDataRow {
  VehicleUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VehicleUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get vin => getField<String>('vin');
  set vin(String? value) => setField<String>('vin', value);

  int? get yearId => getField<int>('year_id');
  set yearId(int? value) => setField<int>('year_id', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  int? get modelId => getField<int>('model_id');
  set modelId(int? value) => setField<int>('model_id', value);

  bool? get isVisible => getField<bool>('is_visible');
  set isVisible(bool? value) => setField<bool>('is_visible', value);
}
