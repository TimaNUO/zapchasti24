import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'c_seller_ad_detail_widget.dart' show CSellerAdDetailWidget;
import 'package:flutter/material.dart';

class CSellerAdDetailModel extends FlutterFlowModel<CSellerAdDetailWidget> {
  ///  Local state fields for this component.

  bool? isAlive;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Died Ad Info)] action in Container widget.
  ApiCallResponse? aliveTruev;
  // Stores action output result for [Backend Call - API (Died Ad Info)] action in Container widget.
  ApiCallResponse? aliveFalsev;
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
