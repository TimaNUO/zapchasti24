import '../database.dart';

class OffersTable extends SupabaseTable<OffersRow> {
  @override
  String get tableName => 'offers';

  @override
  OffersRow createRow(Map<String, dynamic> data) => OffersRow(data);
}

class OffersRow extends SupabaseDataRow {
  OffersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OffersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get sellerId => getField<int>('seller_id');
  set sellerId(int? value) => setField<int>('seller_id', value);

  int? get requestId => getField<int>('request_id');
  set requestId(int? value) => setField<int>('request_id', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get details => getField<String>('details');
  set details(String? value) => setField<String>('details', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get currencyId => getField<int>('currency_id');
  set currencyId(int? value) => setField<int>('currency_id', value);

  List<String> get photoUrl => getListField<String>('photo_url');
  set photoUrl(List<String>? value) => setListField<String>('photo_url', value);

  bool? get isVisible => getField<bool>('is_visible');
  set isVisible(bool? value) => setField<bool>('is_visible', value);

  bool? get isViewed => getField<bool>('is_viewed');
  set isViewed(bool? value) => setField<bool>('is_viewed', value);

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);

  bool? get isRejected => getField<bool>('is_rejected');
  set isRejected(bool? value) => setField<bool>('is_rejected', value);
}
