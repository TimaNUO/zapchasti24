import '/backend/api_requests/api_calls.dart';
import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_add_buyer_widget.dart' show PAddBuyerWidget;
import 'package:flutter/material.dart';

class PAddBuyerModel extends FlutterFlowModel<PAddBuyerWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Hide VehicleUser Info)] action in Container widget.
  ApiCallResponse? apiResulto0i22;
  // Model for cBuyerNavigationBar component.
  late CBuyerNavigationBarModel cBuyerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBuyerNavigationBarModel =
        createModel(context, () => CBuyerNavigationBarModel());
  }

  @override
  void dispose() {
    cBuyerNavigationBarModel.dispose();
  }
}
