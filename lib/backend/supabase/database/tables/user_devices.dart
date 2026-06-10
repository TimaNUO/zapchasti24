import '../database.dart';

class UserDevicesTable extends SupabaseTable<UserDevicesRow> {
  @override
  String get tableName => 'user_devices';

  @override
  UserDevicesRow createRow(Map<String, dynamic> data) => UserDevicesRow(data);
}

class UserDevicesRow extends SupabaseDataRow {
  UserDevicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserDevicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get lastSeenAt => getField<DateTime>('last_seen_at');
  set lastSeenAt(DateTime? value) => setField<DateTime>('last_seen_at', value);

  String? get platform => getField<String>('platform');
  set platform(String? value) => setField<String>('platform', value);

  int? get build => getField<int>('build');
  set build(int? value) => setField<int>('build', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);

  String? get installId => getField<String>('install_id');
  set installId(String? value) => setField<String>('install_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
