import '../database.dart';

class ViewGastousuarioTable extends SupabaseTable<ViewGastousuarioRow> {
  @override
  String get tableName => 'view_gastousuario';

  @override
  ViewGastousuarioRow createRow(Map<String, dynamic> data) =>
      ViewGastousuarioRow(data);
}

class ViewGastousuarioRow extends SupabaseDataRow {
  ViewGastousuarioRow(super.data);

  @override
  SupabaseTable get table => ViewGastousuarioTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalSaida => getField<double>('total_saida');
  set totalSaida(double? value) => setField<double>('total_saida', value);
}
