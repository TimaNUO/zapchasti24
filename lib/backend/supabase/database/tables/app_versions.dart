import '../database.dart';

class AppVersionsTable extends SupabaseTable<AppVersionsRow> {
  @override
  String get tableName => 'app_versions';

  @override
  AppVersionsRow createRow(Map<String, dynamic> data) => AppVersionsRow(data);
}

class AppVersionsRow extends SupabaseDataRow {
  AppVersionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppVersionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get latestBuild => getField<int>('latest_build');
  set latestBuild(int? value) => setField<int>('latest_build', value);

  String? get googlePlayUrl => getField<String>('google_play_url');
  set googlePlayUrl(String? value) =>
      setField<String>('google_play_url', value);

  String? get appStoreUrl => getField<String>('app_store_url');
  set appStoreUrl(String? value) => setField<String>('app_store_url', value);
}
