import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_account_password_widget.dart' show CAccountPasswordWidget;
import 'package:flutter/material.dart';

class CAccountPasswordModel extends FlutterFlowModel<CAccountPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for password_Old widget.
  FocusNode? passwordOldFocusNode;
  TextEditingController? passwordOldTextController;
  late bool passwordOldVisibility;
  String? Function(BuildContext, String?)? passwordOldTextControllerValidator;
  // State field(s) for password_New widget.
  FocusNode? passwordNewFocusNode;
  TextEditingController? passwordNewTextController;
  late bool passwordNewVisibility;
  String? Function(BuildContext, String?)? passwordNewTextControllerValidator;
  // State field(s) for password_NewConfirm widget.
  FocusNode? passwordNewConfirmFocusNode;
  TextEditingController? passwordNewConfirmTextController;
  late bool passwordNewConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordNewConfirmTextControllerValidator;
  // Stores action output result for [Custom Action - changePasswordWithPhone] action in Button widget.
  String? changeError;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    passwordOldVisibility = false;
    passwordNewVisibility = false;
    passwordNewConfirmVisibility = false;
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    passwordOldFocusNode?.dispose();
    passwordOldTextController?.dispose();

    passwordNewFocusNode?.dispose();
    passwordNewTextController?.dispose();

    passwordNewConfirmFocusNode?.dispose();
    passwordNewConfirmTextController?.dispose();

    cBackComponentsModel.dispose();
  }
}
