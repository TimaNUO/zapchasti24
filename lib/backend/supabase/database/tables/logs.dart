import '../database.dart';

class LogsTable extends SupabaseTable<LogsRow> {
  @override
  String get tableName => 'logs';

  @override
  LogsRow createRow(Map<String, dynamic> data) => LogsRow(data);
}

class LogsRow extends SupabaseDataRow {
  LogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get level => getField<String>('level');
  set level(String? value) => setField<String>('level', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  dynamic get context => getField<dynamic>('context');
  set context(dynamic value) => setField<dynamic>('context', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);
}
