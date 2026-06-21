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
