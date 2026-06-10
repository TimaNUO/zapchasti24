import '../database.dart';

class FeedbacksTable extends SupabaseTable<FeedbacksRow> {
  @override
  String get tableName => 'feedbacks';

  @override
  FeedbacksRow createRow(Map<String, dynamic> data) => FeedbacksRow(data);
}

class FeedbacksRow extends SupabaseDataRow {
  FeedbacksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedbacksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get rating => getField<int>('rating')!;
  set rating(int value) => setField<int>('rating', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get sellerId => getField<int>('seller_id');
  set sellerId(int? value) => setField<int>('seller_id', value);

  int? get buyerId => getField<int>('buyer_id');
  set buyerId(int? value) => setField<int>('buyer_id', value);
}
