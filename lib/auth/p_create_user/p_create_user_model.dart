import '/backend/supabase/supabase.dart';
import '/components/c_back_pages/c_back_pages_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_create_user_widget.dart' show PCreateUserWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PCreateUserModel extends FlutterFlowModel<PCreateUserWidget> {
  ///  Local state fields for this page.

  bool blockButton = false;

  bool isSeller = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneNumber_Create1 widget.
  FocusNode? phoneNumberCreate1FocusNode;
  TextEditingController? phoneNumberCreate1TextController;
  late MaskTextInputFormatter phoneNumberCreate1Mask;
  String? Function(BuildContext, String?)?
      phoneNumberCreate1TextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for password_CreateConfirm widget.
  FocusNode? passwordCreateConfirmFocusNode;
  TextEditingController? passwordCreateConfirmTextController;
  late bool passwordCreateConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateConfirmTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<YearsRow>? years;
  // Stores action output result for [Custom Action - signUpWithPhone] action in Button widget.
  String? errorS;
  // Stores action output result for [Custom Action - getIdByPhone] action in Button widget.
  int? idByPhoneS;
  // Stores action output result for [Custom Action - signUpWithPhone] action in Button widget.
  String? errorB;
  // Stores action output result for [Custom Action - getIdByPhone] action in Button widget.
  int? idByPhoneB;
  // Model for cBackPages component.
  late CBackPagesModel cBackPagesModel;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    passwordCreateConfirmVisibility = false;
    cBackPagesModel = createModel(context, () => CBackPagesModel());
  }

  @override
  void dispose() {
    phoneNumberCreate1FocusNode?.dispose();
    phoneNumberCreate1TextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordCreateConfirmFocusNode?.dispose();
    passwordCreateConfirmTextController?.dispose();

    cBackPagesModel.dispose();
  }
}
