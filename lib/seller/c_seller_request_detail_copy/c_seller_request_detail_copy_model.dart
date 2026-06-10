import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_request_detail_copy_widget.dart'
    show CSellerRequestDetailCopyWidget;
import 'package:flutter/material.dart';

class CSellerRequestDetailCopyModel
    extends FlutterFlowModel<CSellerRequestDetailCopyWidget> {
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
