import '/backend/supabase/supabase.dart';
import '/components/c_back_pages/c_back_pages_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_log_in_widget.dart' show PLogInWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PLogInModel extends FlutterFlowModel<PLogInWidget> {
  ///  Local state fields for this page.

  bool blockButton = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for phoneNumber_Log widget.
  FocusNode? phoneNumberLogFocusNode;
  TextEditingController? phoneNumberLogTextController;
  late MaskTextInputFormatter phoneNumberLogMask;
  String? Function(BuildContext, String?)?
      phoneNumberLogTextControllerValidator;
  // State field(s) for password_Log widget.
  FocusNode? passwordLogFocusNode;
  TextEditingController? passwordLogTextController;
  late bool passwordLogVisibility;
  String? Function(BuildContext, String?)? passwordLogTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<YearsRow>? yearsL;
  // Stores action output result for [Custom Action - signInWithPhone] action in Button widget.
  String? errorS;
  // Stores action output result for [Custom Action - getIdByPhone] action in Button widget.
  int? idByPhone;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<DataUsersRow>? userRow;
  // Stores action output result for [Custom Action - getUserRoleIDByPhone] action in Button widget.
  int? userRoleID;
  // Stores action output result for [Custom Action - getIdByPhone] action in Button widget.
  int? idByPhoneB;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<DataUsersRow>? outputRowPass;
  // Stores action output result for [Custom Action - signInWithPhone] action in Button widget.
  String? errorB;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<DataUsersRow>? userRowB;
  // Stores action output result for [Custom Action - getUserRoleIDByPhone] action in Button widget.
  int? userRoleIDB;
  // Model for cBackPages component.
  late CBackPagesModel cBackPagesModel;

  @override
  void initState(BuildContext context) {
    passwordLogVisibility = false;
    cBackPagesModel = createModel(context, () => CBackPagesModel());
  }

  @override
  void dispose() {
    phoneNumberLogFocusNode?.dispose();
    phoneNumberLogTextController?.dispose();

    passwordLogFocusNode?.dispose();
    passwordLogTextController?.dispose();

    cBackPagesModel.dispose();
  }
}
