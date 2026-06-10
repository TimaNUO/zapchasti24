import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_account_buyer_widget.dart' show PAccountBuyerWidget;
import 'package:flutter/material.dart';

class PAccountBuyerModel extends FlutterFlowModel<PAccountBuyerWidget> {
  ///  Local state fields for this page.

  int? carIdPage;

  int? yearIdBegin;

  int? yearIdEnd;

  String? uploadedMediaAddCarPage;

  ///  State fields for stateful widgets in this page.

  // Model for cBuyerNavigationBar component.
  late CBuyerNavigationBarModel cBuyerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBuyerNavigationBarModel =
        createModel(context, () => CBuyerNavigationBarModel());
  }

  @override
  void dispose() {
    cBuyerNavigationBarModel.dispose();
  }
}
