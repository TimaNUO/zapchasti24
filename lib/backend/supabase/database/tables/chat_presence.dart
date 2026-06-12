import '../database.dart';

class ChatPresenceTable extends SupabaseTable<ChatPresenceRow> {
  @override
  String get tableName => 'chat_presence';

  @override
  ChatPresenceRow createRow(Map<String, dynamic> data) => ChatPresenceRow(data);
}

class ChatPresenceRow extends SupabaseDataRow {
  ChatPresenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatPresenceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get chatId => getField<int>('chat_id')!;
  set chatId(int value) => setField<int>('chat_id', value);

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get lastSeenAt => getField<DateTime>('last_seen_at');
  set lastSeenAt(DateTime? value) => setField<DateTime>('last_seen_at', value);
}
