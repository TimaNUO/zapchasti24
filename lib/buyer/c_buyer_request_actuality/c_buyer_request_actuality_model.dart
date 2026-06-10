import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_buyer_request_actuality_widget.dart'
    show CBuyerRequestActualityWidget;
import 'package:flutter/material.dart';

class CBuyerRequestActualityModel
    extends FlutterFlowModel<CBuyerRequestActualityWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Alive Request Info)] action in ButtonAlive widget.
  ApiCallResponse? apiResultfad;
  // Stores action output result for [Backend Call - API (restore request from profile)] action in ButtonAlive widget.
  ApiCallResponse? outputRestore;
  // Stores action output result for [Backend Call - API (rebuild links for request)] action in ButtonAlive widget.
  ApiCallResponse? outputRebuild;
  // Stores action output result for [Backend Call - API (request actuality confirm)] action in ButtonAlive widget.
  ApiCallResponse? apiResultzor;
  // Stores action output result for [Backend Call - API (request actuality remove by buyer)] action in ButtonAlive widget.
  ApiCallResponse? apiResultzordel;
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
