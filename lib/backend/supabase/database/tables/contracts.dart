import '../database.dart';

class ContractsTable extends SupabaseTable<ContractsRow> {
  @override
  String get tableName => 'contracts';

  @override
  ContractsRow createRow(Map<String, dynamic> data) => ContractsRow(data);
}

class ContractsRow extends SupabaseDataRow {
  ContractsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get roleId => getField<int>('role_id')!;
  set roleId(int value) => setField<int>('role_id', value);

  int get adminId => getField<int>('admin_id')!;
  set adminId(int value) => setField<int>('admin_id', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
