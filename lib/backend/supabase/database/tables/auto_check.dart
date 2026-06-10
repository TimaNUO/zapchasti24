import '../database.dart';

class AutoCheckTable extends SupabaseTable<AutoCheckRow> {
  @override
  String get tableName => 'auto_check';

  @override
  AutoCheckRow createRow(Map<String, dynamic> data) => AutoCheckRow(data);
}

class AutoCheckRow extends SupabaseDataRow {
  AutoCheckRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AutoCheckTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get adminId => getField<int>('admin_id')!;
  set adminId(int value) => setField<int>('admin_id', value);

  bool? get value => getField<bool>('value');
  set value(bool? value) => setField<bool>('value', value);
}
