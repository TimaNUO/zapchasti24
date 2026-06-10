import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_reject_request_widget.dart' show CRejectRequestWidget;
import 'package:flutter/material.dart';

class CRejectRequestModel extends FlutterFlowModel<CRejectRequestWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Rejected AdminRequests Info)] action in ButtonEdit widget.
  ApiCallResponse? apiResulton1;
  // Stores action output result for [Backend Call - API (Rejected AdminRequestsNotes Info)] action in ButtonEdit widget.
  ApiCallResponse? apiResultgf9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
