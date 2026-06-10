import '../database.dart';

class UserSessionsTable extends SupabaseTable<UserSessionsRow> {
  @override
  String get tableName => 'user_sessions';

  @override
  UserSessionsRow createRow(Map<String, dynamic> data) => UserSessionsRow(data);
}

class UserSessionsRow extends SupabaseDataRow {
  UserSessionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserSessionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  DateTime? get sessionStartAt => getField<DateTime>('session_start_at');
  set sessionStartAt(DateTime? value) =>
      setField<DateTime>('session_start_at', value);

  DateTime? get sessionEndAt => getField<DateTime>('session_end_at');
  set sessionEndAt(DateTime? value) =>
      setField<DateTime>('session_end_at', value);

  int? get deviceId => getField<int>('device_id');
  set deviceId(int? value) => setField<int>('device_id', value);
}
