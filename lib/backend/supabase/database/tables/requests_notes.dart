import '../database.dart';

class RequestsNotesTable extends SupabaseTable<RequestsNotesRow> {
  @override
  String get tableName => 'requests_notes';

  @override
  RequestsNotesRow createRow(Map<String, dynamic> data) =>
      RequestsNotesRow(data);
}

class RequestsNotesRow extends SupabaseDataRow {
  RequestsNotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestsNotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get note => getField<String>('note')!;
  set note(String value) => setField<String>('note', value);

  int get adminId => getField<int>('admin_id')!;
  set adminId(int value) => setField<int>('admin_id', value);

  int get requestId => getField<int>('request_id')!;
  set requestId(int value) => setField<int>('request_id', value);
}
