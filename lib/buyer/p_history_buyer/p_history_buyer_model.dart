import '/backend/api_requests/api_calls.dart';
import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_history_buyer_widget.dart' show PHistoryBuyerWidget;
import 'package:flutter/material.dart';

class PHistoryBuyerModel extends FlutterFlowModel<PHistoryBuyerWidget> {
  ///  Local state fields for this page.

  String countDied = '0-0/0';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Buyer Died Requests Info)] action in pHistoryBuyer widget.
  ApiCallResponse? apiResultDIED;
  // Stores action output result for [Backend Call - API (VehicleUser Info)] action in pHistoryBuyer widget.
  ApiCallResponse? apiResultCARS;
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
