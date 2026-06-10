import '../database.dart';

class PartsCategoryTable extends SupabaseTable<PartsCategoryRow> {
  @override
  String get tableName => 'parts_category';

  @override
  PartsCategoryRow createRow(Map<String, dynamic> data) =>
      PartsCategoryRow(data);
}

class PartsCategoryRow extends SupabaseDataRow {
  PartsCategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PartsCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  int? get countVehicle => getField<int>('count_vehicle');
  set countVehicle(int? value) => setField<int>('count_vehicle', value);

  int? get countFilter => getField<int>('count_filter');
  set countFilter(int? value) => setField<int>('count_filter', value);
}
