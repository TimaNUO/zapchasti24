import '../database.dart';

class CitiesTable extends SupabaseTable<CitiesRow> {
  @override
  String get tableName => 'cities';

  @override
  CitiesRow createRow(Map<String, dynamic> data) => CitiesRow(data);
}

class CitiesRow extends SupabaseDataRow {
  CitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  int? get countryId => getField<int>('country_id');
  set countryId(int? value) => setField<int>('country_id', value);

  int? get countBuyer => getField<int>('count_buyer');
  set countBuyer(int? value) => setField<int>('count_buyer', value);

  int? get countSeller => getField<int>('count_seller');
  set countSeller(int? value) => setField<int>('count_seller', value);
}
