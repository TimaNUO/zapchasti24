import '../database.dart';

class RequestsTable extends SupabaseTable<RequestsRow> {
  @override
  String get tableName => 'requests';

  @override
  RequestsRow createRow(Map<String, dynamic> data) => RequestsRow(data);
}

class RequestsRow extends SupabaseDataRow {
  RequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get requestedDetails => getField<String>('requested_details');
  set requestedDetails(String? value) =>
      setField<String>('requested_details', value);

  List<String> get photoUrl => getListField<String>('photo_url');
  set photoUrl(List<String>? value) => setListField<String>('photo_url', value);

  int? get vehicleBuyerId => getField<int>('vehicle_buyer_id');
  set vehicleBuyerId(int? value) => setField<int>('vehicle_buyer_id', value);

  bool? get conditionUsed => getField<bool>('condition_used');
  set conditionUsed(bool? value) => setField<bool>('condition_used', value);

  bool? get conditionNew => getField<bool>('condition_new');
  set conditionNew(bool? value) => setField<bool>('condition_new', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get isVisible => getField<bool>('is_visible');
  set isVisible(bool? value) => setField<bool>('is_visible', value);

  List<int> get requestedPartId => getListField<int>('requested_part_id');
  set requestedPartId(List<int>? value) =>
      setListField<int>('requested_part_id', value);

  bool? get isAlive => getField<bool>('is_alive');
  set isAlive(bool? value) => setField<bool>('is_alive', value);
}
