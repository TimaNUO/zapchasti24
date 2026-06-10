import '../database.dart';

class CurrenciesTable extends SupabaseTable<CurrenciesRow> {
  @override
  String get tableName => 'currencies';

  @override
  CurrenciesRow createRow(Map<String, dynamic> data) => CurrenciesRow(data);
}

class CurrenciesRow extends SupabaseDataRow {
  CurrenciesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurrenciesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  double? get exchangeRate => getField<double>('exchange_rate');
  set exchangeRate(double? value) => setField<double>('exchange_rate', value);
}
