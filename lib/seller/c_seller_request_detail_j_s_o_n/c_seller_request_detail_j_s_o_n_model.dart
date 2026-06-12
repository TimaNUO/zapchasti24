import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_request_detail_j_s_o_n_widget.dart'
    show CSellerRequestDetailJSONWidget;
import 'package:flutter/material.dart';

class CSellerRequestDetailJSONModel
    extends FlutterFlowModel<CSellerRequestDetailJSONWidget> {
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
