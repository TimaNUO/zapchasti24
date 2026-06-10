import '../database.dart';

class AdsTable extends SupabaseTable<AdsRow> {
  @override
  String get tableName => 'ads';

  @override
  AdsRow createRow(Map<String, dynamic> data) => AdsRow(data);
}

class AdsRow extends SupabaseDataRow {
  AdsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  int? get currencyId => getField<int>('currency_id');
  set currencyId(int? value) => setField<int>('currency_id', value);

  List<String> get photoUrl => getListField<String>('photo_url');
  set photoUrl(List<String>? value) => setListField<String>('photo_url', value);

  int? get ownerId => getField<int>('owner_id');
  set ownerId(int? value) => setField<int>('owner_id', value);

  int? get carBrandId => getField<int>('car_brand_id');
  set carBrandId(int? value) => setField<int>('car_brand_id', value);

  List<int> get carModelsIdList => getListField<int>('car_models_id_list');
  set carModelsIdList(List<int>? value) =>
      setListField<int>('car_models_id_list', value);

  List<int> get partsCategoryIdList =>
      getListField<int>('parts_category_id_list');
  set partsCategoryIdList(List<int>? value) =>
      setListField<int>('parts_category_id_list', value);

  int? get yearFrom => getField<int>('year_from');
  set yearFrom(int? value) => setField<int>('year_from', value);

  int? get yearTo => getField<int>('year_to');
  set yearTo(int? value) => setField<int>('year_to', value);

  bool? get autopartsConditionNew => getField<bool>('autoparts_condition_new');
  set autopartsConditionNew(bool? value) =>
      setField<bool>('autoparts_condition_new', value);

  bool? get autopartsConditionUsed =>
      getField<bool>('autoparts_condition_used');
  set autopartsConditionUsed(bool? value) =>
      setField<bool>('autoparts_condition_used', value);

  bool? get isAlive => getField<bool>('is_alive');
  set isAlive(bool? value) => setField<bool>('is_alive', value);

  bool? get isVisible => getField<bool>('is_visible');
  set isVisible(bool? value) => setField<bool>('is_visible', value);
}
