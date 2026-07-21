import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_request_detail_widget.dart' show CSellerRequestDetailWidget;
import 'package:flutter/material.dart';

class CSellerRequestDetailModel
    extends FlutterFlowModel<CSellerRequestDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Open Request ONE Info)] action in cSellerRequestDetail widget.
  ApiCallResponse? apiResultd26;
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
