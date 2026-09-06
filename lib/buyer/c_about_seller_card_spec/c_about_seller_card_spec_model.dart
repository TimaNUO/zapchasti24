import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_about_seller_card_spec_widget.dart' show CAboutSellerCardSpecWidget;
import 'package:flutter/material.dart';

class CAboutSellerCardSpecModel
    extends FlutterFlowModel<CAboutSellerCardSpecWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatReq2;
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
