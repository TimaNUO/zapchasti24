import '../database.dart';

class AdsViewsUniqueTable extends SupabaseTable<AdsViewsUniqueRow> {
  @override
  String get tableName => 'ads_views_unique';

  @override
  AdsViewsUniqueRow createRow(Map<String, dynamic> data) =>
      AdsViewsUniqueRow(data);
}

class AdsViewsUniqueRow extends SupabaseDataRow {
  AdsViewsUniqueRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdsViewsUniqueTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get buyerId => getField<int>('buyer_id')!;
  set buyerId(int value) => setField<int>('buyer_id', value);

  int get adId => getField<int>('ad_id')!;
  set adId(int value) => setField<int>('ad_id', value);
}
