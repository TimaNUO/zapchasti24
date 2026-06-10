import '../database.dart';

class CarBrandsTable extends SupabaseTable<CarBrandsRow> {
  @override
  String get tableName => 'car_brands';

  @override
  CarBrandsRow createRow(Map<String, dynamic> data) => CarBrandsRow(data);
}

class CarBrandsRow extends SupabaseDataRow {
  CarBrandsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarBrandsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get brand => getField<String>('brand')!;
  set brand(String value) => setField<String>('brand', value);

  int? get countVehicle => getField<int>('count_vehicle');
  set countVehicle(int? value) => setField<int>('count_vehicle', value);

  int? get countFilter => getField<int>('count_filter');
  set countFilter(int? value) => setField<int>('count_filter', value);
}
