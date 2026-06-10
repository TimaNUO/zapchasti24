import '../database.dart';

class NotificationsTable extends SupabaseTable<NotificationsRow> {
  @override
  String get tableName => 'notifications';

  @override
  NotificationsRow createRow(Map<String, dynamic> data) =>
      NotificationsRow(data);
}

class NotificationsRow extends SupabaseDataRow {
  NotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get senderId => getField<String>('sender_id')!;
  set senderId(String value) => setField<String>('sender_id', value);

  String get body => getField<String>('body')!;
  set body(String value) => setField<String>('body', value);

  String get recipientId => getField<String>('recipient_id')!;
  set recipientId(String value) => setField<String>('recipient_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get typeNotification => getField<String>('type_notification');
  set typeNotification(String? value) =>
      setField<String>('type_notification', value);

  int? get cardId => getField<int>('card_id');
  set cardId(int? value) => setField<int>('card_id', value);
}
