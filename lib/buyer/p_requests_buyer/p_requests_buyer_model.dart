import '/backend/api_requests/api_calls.dart';
import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_requests_buyer_widget.dart' show PRequestsBuyerWidget;
import 'package:flutter/material.dart';

class PRequestsBuyerModel extends FlutterFlowModel<PRequestsBuyerWidget> {
  ///  Local state fields for this page.

  String countApproved = '0-0/0';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buyer Approved Requests Info)] action in pRequestsBuyer widget.
  ApiCallResponse? apiResultAPP;
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
