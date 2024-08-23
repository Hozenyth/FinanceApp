import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_finance_registration_widget.dart' show AddFinanceRegistrationWidget;
import 'package:flutter/material.dart';

class AddFinanceRegistrationModel
    extends FlutterFlowModel<AddFinanceRegistrationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AddDescription widget.
  FocusNode? addDescriptionFocusNode;
  TextEditingController? addDescriptionTextController;
  String? Function(BuildContext, String?)?
      addDescriptionTextControllerValidator;
  String? _addDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descrição é obrigatória';
    }

    return null;
  }

  // State field(s) for AddValue widget.
  FocusNode? addValueFocusNode;
  TextEditingController? addValueTextController;
  String? Function(BuildContext, String?)? addValueTextControllerValidator;
  String? _addValueTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Valor é obrigatório';
    }

    return null;
  }

  // State field(s) for DropDownCategory widget.
  String? dropDownCategoryValue;
  FormFieldController<String>? dropDownCategoryValueController;
  // State field(s) for DropDownType widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;

  @override
  void initState(BuildContext context) {
    addDescriptionTextControllerValidator =
        _addDescriptionTextControllerValidator;
    addValueTextControllerValidator = _addValueTextControllerValidator;
  }

  @override
  void dispose() {
    addDescriptionFocusNode?.dispose();
    addDescriptionTextController?.dispose();

    addValueFocusNode?.dispose();
    addValueTextController?.dispose();
  }
}
