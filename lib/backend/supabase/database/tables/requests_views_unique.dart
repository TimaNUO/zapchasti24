import '../database.dart';

class RequestsViewsUniqueTable extends SupabaseTable<RequestsViewsUniqueRow> {
  @override
  String get tableName => 'requests_views_unique';

  @override
  RequestsViewsUniqueRow createRow(Map<String, dynamic> data) =>
      RequestsViewsUniqueRow(data);
}

class RequestsViewsUniqueRow extends SupabaseDataRow {
  RequestsViewsUniqueRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestsViewsUniqueTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get sellerId => getField<int>('seller_id')!;
  set sellerId(int value) => setField<int>('seller_id', value);

  int get requestId => getField<int>('request_id')!;
  set requestId(int value) => setField<int>('request_id', value);
}
