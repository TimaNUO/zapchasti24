import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'c_seller_filter_widget.dart' show CSellerFilterWidget;
import 'package:flutter/material.dart';

class CSellerFilterModel extends FlutterFlowModel<CSellerFilterWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Hide Filter Info)] action in Container widget.
  ApiCallResponse? apiResultwwyCopy;
  // Stores action output result for [Backend Call - API (deactivate filter links)] action in Container widget.
  ApiCallResponse? outputRebuild;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;
  // Model for cSellerNavigationBar component.
  late CSellerNavigationBarModel cSellerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
    cSellerNavigationBarModel =
        createModel(context, () => CSellerNavigationBarModel());
  }

  @override
  void dispose() {
    cBackComponentsModel.dispose();
    cSellerNavigationBarModel.dispose();
  }
}
