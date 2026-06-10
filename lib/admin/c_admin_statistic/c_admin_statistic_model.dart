import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_statistic_widget.dart' show CAdminStatisticWidget;
import 'package:flutter/material.dart';

class CAdminStatisticModel extends FlutterFlowModel<CAdminStatisticWidget> {
  ///  Local state fields for this component.

  int? userIdComp;

  int? userRoleIdComp;

  String? userPhoneComp;

  ///  State fields for stateful widgets in this component.

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // Stores action output result for [Custom Action - getIdByPhone] action in Button widget.
  int? idByPhone;
  // Stores action output result for [Custom Action - getUserRoleIDByPhone] action in Button widget.
  int? roleIdByPhone;
  // Stores action output result for [Backend Call - API (Admin Seller Info)] action in Button widget.
  ApiCallResponse? apiResultSELsb;
  // Stores action output result for [Backend Call - API (About Seller)] action in Button widget.
  ApiCallResponse? apiResultSELrpc;
  // Stores action output result for [Backend Call - API (Admin Buyer Info)] action in Button widget.
  ApiCallResponse? apiResultBUYsb;
  // Stores action output result for [Backend Call - API (About Buyer)] action in Button widget.
  ApiCallResponse? apiResultBUYrpc;
  // Stores action output result for [Backend Call - API (purge user data hard)] action in ButtonONblock widget.
  ApiCallResponse? apiResultcjp1;
  // Stores action output result for [Backend Call - API (purge user data hard)] action in ButtonONblock widget.
  ApiCallResponse? apiResultcjp2;
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
