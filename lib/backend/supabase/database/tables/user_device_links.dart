import '../database.dart';

class UserDeviceLinksTable extends SupabaseTable<UserDeviceLinksRow> {
  @override
  String get tableName => 'user_device_links';

  @override
  UserDeviceLinksRow createRow(Map<String, dynamic> data) =>
      UserDeviceLinksRow(data);
}

class UserDeviceLinksRow extends SupabaseDataRow {
  UserDeviceLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserDeviceLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get lastSeenAt => getField<DateTime>('last_seen_at');
  set lastSeenAt(DateTime? value) => setField<DateTime>('last_seen_at', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  int get deviceId => getField<int>('device_id')!;
  set deviceId(int value) => setField<int>('device_id', value);
}
