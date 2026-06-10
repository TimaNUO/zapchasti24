import '../database.dart';

class LanguagesTable extends SupabaseTable<LanguagesRow> {
  @override
  String get tableName => 'languages';

  @override
  LanguagesRow createRow(Map<String, dynamic> data) => LanguagesRow(data);
}

class LanguagesRow extends SupabaseDataRow {
  LanguagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LanguagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get lang => getField<String>('lang')!;
  set lang(String value) => setField<String>('lang', value);

  String? get ffLocale => getField<String>('ff_locale');
  set ffLocale(String? value) => setField<String>('ff_locale', value);

  String? get nameRu => getField<String>('name_ru');
  set nameRu(String? value) => setField<String>('name_ru', value);

  String? get nameNative => getField<String>('name_native');
  set nameNative(String? value) => setField<String>('name_native', value);

  String? get instrYoutubeBuyer => getField<String>('instr_youtube_buyer');
  set instrYoutubeBuyer(String? value) =>
      setField<String>('instr_youtube_buyer', value);

  String? get instrYoutubeSeller => getField<String>('instr_youtube_seller');
  set instrYoutubeSeller(String? value) =>
      setField<String>('instr_youtube_seller', value);

  String? get instrYoutubeBuyerDefault =>
      getField<String>('instr_youtube_buyer_default');
  set instrYoutubeBuyerDefault(String? value) =>
      setField<String>('instr_youtube_buyer_default', value);

  String? get instrYoutubeSellerDefault =>
      getField<String>('instr_youtube_seller_default');
  set instrYoutubeSellerDefault(String? value) =>
      setField<String>('instr_youtube_seller_default', value);
}
