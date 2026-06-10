import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_seller_contracts_widget.dart' show CAdminSellerContractsWidget;
import 'package:flutter/material.dart';

class CAdminSellerContractsModel
    extends FlutterFlowModel<CAdminSellerContractsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Content2 widget.
  FocusNode? content2FocusNode;
  TextEditingController? content2TextController;
  String? Function(BuildContext, String?)? content2TextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ContractsRow? outputUpdate1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<DataUsersRow>? outputUpdate21;
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
    content2FocusNode?.dispose();
    content2TextController?.dispose();

    cBackComponentsModel.dispose();
    cAdminNavigationBarModel.dispose();
  }
}
