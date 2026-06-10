import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_chats_seller_widget.dart' show CChatsSellerWidget;
import 'package:flutter/material.dart';

class CChatsSellerModel extends FlutterFlowModel<CChatsSellerWidget> {
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
