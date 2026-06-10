import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_open_about_seller_card_req_widget.dart'
    show COpenAboutSellerCardReqWidget;
import 'package:flutter/material.dart';

class COpenAboutSellerCardReqModel
    extends FlutterFlowModel<COpenAboutSellerCardReqWidget> {
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
