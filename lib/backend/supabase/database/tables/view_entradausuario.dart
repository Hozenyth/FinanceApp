import '../database.dart';

class ViewEntradausuarioTable extends SupabaseTable<ViewEntradausuarioRow> {
  @override
  String get tableName => 'view_entradausuario';

  @override
  ViewEntradausuarioRow createRow(Map<String, dynamic> data) =>
      ViewEntradausuarioRow(data);
}

class ViewEntradausuarioRow extends SupabaseDataRow {
  ViewEntradausuarioRow(super.data);

  @override
  SupabaseTable get table => ViewEntradausuarioTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalEntrada => getField<double>('total_entrada');
  set totalEntrada(double? value) => setField<double>('total_entrada', value);
}
