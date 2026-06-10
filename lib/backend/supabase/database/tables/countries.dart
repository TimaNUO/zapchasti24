import '../database.dart';

class CountriesTable extends SupabaseTable<CountriesRow> {
  @override
  String get tableName => 'countries';

  @override
  CountriesRow createRow(Map<String, dynamic> data) => CountriesRow(data);
}

class CountriesRow extends SupabaseDataRow {
  CountriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CountriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  int? get countBuyer => getField<int>('count_buyer');
  set countBuyer(int? value) => setField<int>('count_buyer', value);

  int? get countSeller => getField<int>('count_seller');
  set countSeller(int? value) => setField<int>('count_seller', value);

  String? get flagUrl => getField<String>('flag_url');
  set flagUrl(String? value) => setField<String>('flag_url', value);

  String? get mask => getField<String>('mask');
  set mask(String? value) => setField<String>('mask', value);
}
