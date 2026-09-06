import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components_empty/c_back_components_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'c_seller_filter_ad_list_edit_widget.dart'
    show CSellerFilterAdListEditWidget;
import 'package:flutter/material.dart';

class CSellerFilterAdListEditModel
    extends FlutterFlowModel<CSellerFilterAdListEditWidget> {
  ///  Local state fields for this component.

  int? tabID = 1;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Hide Filter Info)] action in Container widget.
  ApiCallResponse? apiResultwpp;
  // Stores action output result for [Backend Call - API (deactivate filter links)] action in Container widget.
  ApiCallResponse? outputRebuildpp;
  // Model for cBackComponentsEmpty component.
  late CBackComponentsEmptyModel cBackComponentsEmptyModel;
  // Model for cSellerNavigationBar component.
  late CSellerNavigationBarModel cSellerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsEmptyModel =
        createModel(context, () => CBackComponentsEmptyModel());
    cSellerNavigationBarModel =
        createModel(context, () => CSellerNavigationBarModel());
  }

  @override
  void dispose() {
    cBackComponentsEmptyModel.dispose();
    cSellerNavigationBarModel.dispose();
  }
}
