import '../database.dart';

class CarModelsTable extends SupabaseTable<CarModelsRow> {
  @override
  String get tableName => 'car_models';

  @override
  CarModelsRow createRow(Map<String, dynamic> data) => CarModelsRow(data);
}

class CarModelsRow extends SupabaseDataRow {
  CarModelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarModelsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get carBrandId => getField<int>('car_brand_id')!;
  set carBrandId(int value) => setField<int>('car_brand_id', value);

  String get model => getField<String>('model')!;
  set model(String value) => setField<String>('model', value);

  int? get countVehicle => getField<int>('count_vehicle');
  set countVehicle(int? value) => setField<int>('count_vehicle', value);

  int? get countFilter => getField<int>('count_filter');
  set countFilter(int? value) => setField<int>('count_filter', value);
}
