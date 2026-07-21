import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_buyer_request_detail_widget.dart' show CBuyerRequestDetailWidget;
import 'package:flutter/material.dart';

class CBuyerRequestDetailModel
    extends FlutterFlowModel<CBuyerRequestDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Alive Request Info)] action in Container widget.
  ApiCallResponse? apiResultfad;
  // Stores action output result for [Backend Call - API (restore request from profile)] action in Container widget.
  ApiCallResponse? outputRestore;
  // Stores action output result for [Backend Call - API (rebuild links for request)] action in Container widget.
  ApiCallResponse? outputRebuild;
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
