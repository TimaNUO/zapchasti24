import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_buyer_contracts_widget.dart' show CAdminBuyerContractsWidget;
import 'package:flutter/material.dart';

class CAdminBuyerContractsModel
    extends FlutterFlowModel<CAdminBuyerContractsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Content1 widget.
  FocusNode? content1FocusNode;
  TextEditingController? content1TextController;
  String? Function(BuildContext, String?)? content1TextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ContractsRow? outputUpdate2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<DataUsersRow>? outputUpdate22;
  // Model for cAdminNavigationBar component.
  late CAdminNavigationBarModel cAdminNavigationBarModel;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cAdminNavigationBarModel =
        createModel(context, () => CAdminNavigationBarModel());
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    content1FocusNode?.dispose();
    content1TextController?.dispose();

    cAdminNavigationBarModel.dispose();
    cBackComponentsModel.dispose();
  }
}
