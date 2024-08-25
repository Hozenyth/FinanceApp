import '../database.dart';

class ViewSaldofinalusuarioTable
    extends SupabaseTable<ViewSaldofinalusuarioRow> {
  @override
  String get tableName => 'view_saldofinalusuario';

  @override
  ViewSaldofinalusuarioRow createRow(Map<String, dynamic> data) =>
      ViewSaldofinalusuarioRow(data);
}

class ViewSaldofinalusuarioRow extends SupabaseDataRow {
  ViewSaldofinalusuarioRow(super.data);

  @override
  SupabaseTable get table => ViewSaldofinalusuarioTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalEntrada => getField<double>('total_entrada');
  set totalEntrada(double? value) => setField<double>('total_entrada', value);

  double? get totalSaida => getField<double>('total_saida');
  set totalSaida(double? value) => setField<double>('total_saida', value);

  double? get saldoFinal => getField<double>('saldo_final');
  set saldoFinal(double? value) => setField<double>('saldo_final', value);
}
