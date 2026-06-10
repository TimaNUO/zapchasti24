import '../database.dart';

class DataUsersTable extends SupabaseTable<DataUsersRow> {
  @override
  String get tableName => 'data_users';

  @override
  DataUsersRow createRow(Map<String, dynamic> data) => DataUsersRow(data);
}

class DataUsersRow extends SupabaseDataRow {
  DataUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DataUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get passwordHash => getField<String>('password_hash');
  set passwordHash(String? value) => setField<String>('password_hash', value);

  int? get cityId => getField<int>('city_id');
  set cityId(int? value) => setField<int>('city_id', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get ratingCount => getField<int>('rating_count');
  set ratingCount(int? value) => setField<int>('rating_count', value);

  bool? get isLicensed => getField<bool>('is_licensed');
  set isLicensed(bool? value) => setField<bool>('is_licensed', value);

  bool? get isBlocked => getField<bool>('is_blocked');
  set isBlocked(bool? value) => setField<bool>('is_blocked', value);

  bool? get isDeleted => getField<bool>('is_deleted');
  set isDeleted(bool? value) => setField<bool>('is_deleted', value);

  int? get langId => getField<int>('lang_id');
  set langId(int? value) => setField<int>('lang_id', value);

  int? get countryId => getField<int>('country_id');
  set countryId(int? value) => setField<int>('country_id', value);

  int? get lastDeviceId => getField<int>('last_device_id');
  set lastDeviceId(int? value) => setField<int>('last_device_id', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
