import '../database.dart';

class SellerSpecializationsTable
    extends SupabaseTable<SellerSpecializationsRow> {
  @override
  String get tableName => 'seller_specializations';

  @override
  SellerSpecializationsRow createRow(Map<String, dynamic> data) =>
      SellerSpecializationsRow(data);
}

class SellerSpecializationsRow extends SupabaseDataRow {
  SellerSpecializationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SellerSpecializationsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int get sellerId => getField<int>('seller_id')!;
  set sellerId(int value) => setField<int>('seller_id', value);

  int get specializationId => getField<int>('specialization_id')!;
  set specializationId(int value) => setField<int>('specialization_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
