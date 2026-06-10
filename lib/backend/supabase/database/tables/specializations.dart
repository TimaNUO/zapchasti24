import '../database.dart';

class SpecializationsTable extends SupabaseTable<SpecializationsRow> {
  @override
  String get tableName => 'specializations';

  @override
  SpecializationsRow createRow(Map<String, dynamic> data) =>
      SpecializationsRow(data);
}

class SpecializationsRow extends SupabaseDataRow {
  SpecializationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpecializationsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get sort => getField<int>('sort');
  set sort(int? value) => setField<int>('sort', value);
}
