import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_finance_registration_widget.dart'
    show EditFinanceRegistrationWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditFinanceRegistrationModel
    extends FlutterFlowModel<EditFinanceRegistrationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AddDescription widget.
  FocusNode? addDescriptionFocusNode;
  TextEditingController? addDescriptionTextController;
  String? Function(BuildContext, String?)?
      addDescriptionTextControllerValidator;
  // State field(s) for AddValue widget.
  FocusNode? addValueFocusNode;
  TextEditingController? addValueTextController;
  final addValueMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? addValueTextControllerValidator;
  // State field(s) for DropDownCategory widget.
  String? dropDownCategoryValue;
  FormFieldController<String>? dropDownCategoryValueController;
  // State field(s) for DropDownType widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addDescriptionFocusNode?.dispose();
    addDescriptionTextController?.dispose();

    addValueFocusNode?.dispose();
    addValueTextController?.dispose();
  }
}
