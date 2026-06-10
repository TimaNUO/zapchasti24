import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_about_seller_card_widget.dart' show CAboutSellerCardWidget;
import 'package:flutter/material.dart';

class CAboutSellerCardModel extends FlutterFlowModel<CAboutSellerCardWidget> {
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
