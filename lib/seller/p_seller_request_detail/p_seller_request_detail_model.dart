import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_seller_request_detail_widget.dart' show PSellerRequestDetailWidget;
import 'package:flutter/material.dart';

class PSellerRequestDetailModel
    extends FlutterFlowModel<PSellerRequestDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Open Request ONE Info)] action in pSellerRequestDetail widget.
  ApiCallResponse? apiResultb9k;
  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatRequest;
  // Stores action output result for [Backend Call - API (Reject Request Info)] action in Container widget.
  ApiCallResponse? apiResulte859;
  // Stores action output result for [Backend Call - API (set request filter status for seller)] action in Container widget.
  ApiCallResponse? outputRebuild5659;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    cBackComponentsModel.dispose();
  }
}
