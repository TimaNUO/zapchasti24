import '/backend/api_requests/api_calls.dart';
import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_buyer_ads_list_widget.dart' show CBuyerAdsListWidget;
import 'package:flutter/material.dart';

class CBuyerAdsListModel extends FlutterFlowModel<CBuyerAdsListWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Hide Ad Info)] action in Container widget.
  ApiCallResponse? apiResultwxc;
  // Stores action output result for [Backend Call - API (Died Ad Info)] action in ButtonAlive widget.
  ApiCallResponse? aliveFalse;
  // Stores action output result for [Backend Call - API (Died Ad Info)] action in Button widget.
  ApiCallResponse? aliveTrue;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;
  // Model for cBuyerNavigationBar component.
  late CBuyerNavigationBarModel cBuyerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
    cBuyerNavigationBarModel =
        createModel(context, () => CBuyerNavigationBarModel());
  }

  @override
  void dispose() {
    cBackComponentsModel.dispose();
    cBuyerNavigationBarModel.dispose();
  }
}
