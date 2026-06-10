import '../database.dart';

class SellerRequestsTable extends SupabaseTable<SellerRequestsRow> {
  @override
  String get tableName => 'seller_requests';

  @override
  SellerRequestsRow createRow(Map<String, dynamic> data) =>
      SellerRequestsRow(data);
}

class SellerRequestsRow extends SupabaseDataRow {
  SellerRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SellerRequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get sellerId => getField<int>('seller_id')!;
  set sellerId(int value) => setField<int>('seller_id', value);

  int get requestId => getField<int>('request_id')!;
  set requestId(int value) => setField<int>('request_id', value);

  bool? get isRejected => getField<bool>('is_rejected');
  set isRejected(bool? value) => setField<bool>('is_rejected', value);
}
