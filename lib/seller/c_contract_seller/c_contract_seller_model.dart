import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'c_contract_seller_widget.dart' show CContractSellerWidget;
import 'package:flutter/material.dart';

class CContractSellerModel extends FlutterFlowModel<CContractSellerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;
  // Model for cSellerNavigationBar component.
  late CSellerNavigationBarModel cSellerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
    cSellerNavigationBarModel =
        createModel(context, () => CSellerNavigationBarModel());
  }

  @override
  void dispose() {
    cBackComponentsModel.dispose();
    cSellerNavigationBarModel.dispose();
  }
}
