import '../database.dart';

class BannersTable extends SupabaseTable<BannersRow> {
  @override
  String get tableName => 'banners';

  @override
  BannersRow createRow(Map<String, dynamic> data) => BannersRow(data);
}

class BannersRow extends SupabaseDataRow {
  BannersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BannersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get place => getField<int>('place')!;
  set place(int value) => setField<int>('place', value);

  int get adminId => getField<int>('admin_id')!;
  set adminId(int value) => setField<int>('admin_id', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);
}
