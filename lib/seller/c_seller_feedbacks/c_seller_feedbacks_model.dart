import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_feedbacks_widget.dart' show CSellerFeedbacksWidget;
import 'package:flutter/material.dart';

class CSellerFeedbacksModel extends FlutterFlowModel<CSellerFeedbacksWidget> {
  ///  State fields for stateful widgets in this component.

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
