import '../database.dart';

class YearsTable extends SupabaseTable<YearsRow> {
  @override
  String get tableName => 'years';

  @override
  YearsRow createRow(Map<String, dynamic> data) => YearsRow(data);
}

class YearsRow extends SupabaseDataRow {
  YearsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => YearsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get year => getField<int>('year')!;
  set year(int value) => setField<int>('year', value);

  bool? get isField => getField<bool>('is');
  set isField(bool? value) => setField<bool>('is', value);
}
