import '../database.dart';

class MessagesTable extends SupabaseTable<MessagesRow> {
  @override
  String get tableName => 'messages';

  @override
  MessagesRow createRow(Map<String, dynamic> data) => MessagesRow(data);
}

class MessagesRow extends SupabaseDataRow {
  MessagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MessagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get chatId => getField<int>('chat_id')!;
  set chatId(int value) => setField<int>('chat_id', value);

  int get senderId => getField<int>('sender_id')!;
  set senderId(int value) => setField<int>('sender_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  dynamic get content => getField<dynamic>('content')!;
  set content(dynamic value) => setField<dynamic>('content', value);

  bool? get isRemoved => getField<bool>('is_removed');
  set isRemoved(bool? value) => setField<bool>('is_removed', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get mediaUrl => getField<String>('media_url');
  set mediaUrl(String? value) => setField<String>('media_url', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  String? get path => getField<String>('path');
  set path(String? value) => setField<String>('path', value);

  String? get thumbnailUrl => getField<String>('thumbnail_url');
  set thumbnailUrl(String? value) => setField<String>('thumbnail_url', value);

  String? get translatedText => getField<String>('translated_text');
  set translatedText(String? value) =>
      setField<String>('translated_text', value);
}
