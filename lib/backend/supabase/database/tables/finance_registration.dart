import '../database.dart';

class FinanceRegistrationTable extends SupabaseTable<FinanceRegistrationRow> {
  @override
  String get tableName => 'financeRegistration';

  @override
  FinanceRegistrationRow createRow(Map<String, dynamic> data) =>
      FinanceRegistrationRow(data);
}

class FinanceRegistrationRow extends SupabaseDataRow {
  FinanceRegistrationRow(super.data);

  @override
  SupabaseTable get table => FinanceRegistrationTable();

  int get registrationId => getField<int>('registration_id')!;
  set registrationId(int value) => setField<int>('registration_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  double? get value => getField<double>('value');
  set value(double? value) => setField<double>('value', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
