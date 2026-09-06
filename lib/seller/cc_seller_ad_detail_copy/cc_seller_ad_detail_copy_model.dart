import '/backend/api_requests/api_calls.dart';
import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cc_seller_ad_detail_copy_widget.dart' show CcSellerAdDetailCopyWidget;
import 'package:flutter/material.dart';

class CcSellerAdDetailCopyModel
    extends FlutterFlowModel<CcSellerAdDetailCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatReq;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;
  // Model for cBuyerNavigationBar component.
  late CBuyerNavigationBarModel cBuyerNavigationBarModel;
  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatReqOrig;

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
