import '../database.dart';

class FiltersTable extends SupabaseTable<FiltersRow> {
  @override
  String get tableName => 'filters';

  @override
  FiltersRow createRow(Map<String, dynamic> data) => FiltersRow(data);
}

class FiltersRow extends SupabaseDataRow {
  FiltersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FiltersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get sellerId => getField<int>('seller_id')!;
  set sellerId(int value) => setField<int>('seller_id', value);

  bool? get autopartsConditionNew => getField<bool>('autoparts_condition_new');
  set autopartsConditionNew(bool? value) =>
      setField<bool>('autoparts_condition_new', value);

  bool? get autopartsConditionUsed =>
      getField<bool>('autoparts_condition_used');
  set autopartsConditionUsed(bool? value) =>
      setField<bool>('autoparts_condition_used', value);

  int? get yearFrom => getField<int>('year_from');
  set yearFrom(int? value) => setField<int>('year_from', value);

  int? get yearTo => getField<int>('year_to');
  set yearTo(int? value) => setField<int>('year_to', value);

  List<int> get partsCategoryIdList =>
      getListField<int>('parts_category_id_list');
  set partsCategoryIdList(List<int>? value) =>
      setListField<int>('parts_category_id_list', value);

  List<int> get carModelsIdList => getListField<int>('car_models_id_list');
  set carModelsIdList(List<int>? value) =>
      setListField<int>('car_models_id_list', value);

  int? get carBrandId => getField<int>('car_brand_id');
  set carBrandId(int? value) => setField<int>('car_brand_id', value);

  bool? get isVisible => getField<bool>('is_visible');
  set isVisible(bool? value) => setField<bool>('is_visible', value);
}
