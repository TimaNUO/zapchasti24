import '../database.dart';

class SellerProfilesTable extends SupabaseTable<SellerProfilesRow> {
  @override
  String get tableName => 'seller_profiles';

  @override
  SellerProfilesRow createRow(Map<String, dynamic> data) =>
      SellerProfilesRow(data);
}

class SellerProfilesRow extends SupabaseDataRow {
  SellerProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SellerProfilesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get sellerId => getField<int>('seller_id')!;
  set sellerId(int value) => setField<int>('seller_id', value);

  String? get about => getField<String>('about');
  set about(String? value) => setField<String>('about', value);

  List<String> get photoUrls => getListField<String>('photo_urls');
  set photoUrls(List<String>? value) =>
      setListField<String>('photo_urls', value);
}
