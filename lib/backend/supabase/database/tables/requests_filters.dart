import '../database.dart';

class RequestsFiltersTable extends SupabaseTable<RequestsFiltersRow> {
  @override
  String get tableName => 'requests_filters';

  @override
  RequestsFiltersRow createRow(Map<String, dynamic> data) =>
      RequestsFiltersRow(data);
}

class RequestsFiltersRow extends SupabaseDataRow {
  RequestsFiltersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestsFiltersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get requestId => getField<int>('request_id')!;
  set requestId(int value) => setField<int>('request_id', value);

  int get filterId => getField<int>('filter_id')!;
  set filterId(int value) => setField<int>('filter_id', value);

  bool get aliveRequest => getField<bool>('alive_request')!;
  set aliveRequest(bool value) => setField<bool>('alive_request', value);

  bool get aliveFilter => getField<bool>('alive_filter')!;
  set aliveFilter(bool value) => setField<bool>('alive_filter', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
