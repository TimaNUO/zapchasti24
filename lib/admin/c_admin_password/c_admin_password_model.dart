import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_password_widget.dart' show CAdminPasswordWidget;
import 'package:flutter/material.dart';

class CAdminPasswordModel extends FlutterFlowModel<CAdminPasswordWidget> {
  ///  Local state fields for this component.

  String? newPasswordComp;

  ///  State fields for stateful widgets in this component.

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // Stores action output result for [Custom Action - adminGenerateAndSetPassword] action in Button widget.
  String? passwordNew;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<DataUsersRow>? updateDataUserID;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;
  // Model for cAdminNavigationBar component.
  late CAdminNavigationBarModel cAdminNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
    cAdminNavigationBarModel =
        createModel(context, () => CAdminNavigationBarModel());
  }

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    cBackComponentsModel.dispose();
    cAdminNavigationBarModel.dispose();
  }
}
