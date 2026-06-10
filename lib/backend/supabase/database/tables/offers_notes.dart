import '../database.dart';

class OffersNotesTable extends SupabaseTable<OffersNotesRow> {
  @override
  String get tableName => 'offers_notes';

  @override
  OffersNotesRow createRow(Map<String, dynamic> data) => OffersNotesRow(data);
}

class OffersNotesRow extends SupabaseDataRow {
  OffersNotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OffersNotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get note => getField<String>('note')!;
  set note(String value) => setField<String>('note', value);

  int get adminId => getField<int>('admin_id')!;
  set adminId(int value) => setField<int>('admin_id', value);

  int get offerId => getField<int>('offer_id')!;
  set offerId(int value) => setField<int>('offer_id', value);
}
