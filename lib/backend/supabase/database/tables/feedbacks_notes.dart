import '../database.dart';

class FeedbacksNotesTable extends SupabaseTable<FeedbacksNotesRow> {
  @override
  String get tableName => 'feedbacks_notes';

  @override
  FeedbacksNotesRow createRow(Map<String, dynamic> data) =>
      FeedbacksNotesRow(data);
}

class FeedbacksNotesRow extends SupabaseDataRow {
  FeedbacksNotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedbacksNotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get note => getField<String>('note')!;
  set note(String value) => setField<String>('note', value);

  int get adminId => getField<int>('admin_id')!;
  set adminId(int value) => setField<int>('admin_id', value);

  int get feedbackId => getField<int>('feedback_id')!;
  set feedbackId(int value) => setField<int>('feedback_id', value);
}
