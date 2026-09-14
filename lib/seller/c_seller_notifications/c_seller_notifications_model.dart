import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_notifications_widget.dart' show CSellerNotificationsWidget;
import 'package:flutter/material.dart';

class CSellerNotificationsModel
    extends FlutterFlowModel<CSellerNotificationsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (request add unique view)] action in Column widget.
  ApiCallResponse? apiResult7sf;
  // Stores action output result for [Backend Call - Update Row(s)] action in Column widget.
  List<NotificationsRow>? grg54ere4g6f5d4b6xc5v4;
  // Stores action output result for [Backend Call - API (set request filter status for seller)] action in Column widget.
  ApiCallResponse? apiResult65f;
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
