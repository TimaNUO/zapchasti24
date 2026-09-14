import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_notif_to_request_widget.dart' show CSellerNotifToRequestWidget;
import 'package:flutter/material.dart';

class CSellerNotifToRequestModel
    extends FlutterFlowModel<CSellerNotifToRequestWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Seller BuyerID From RequestsID Info)] action in cSellerNotifToRequest widget.
  ApiCallResponse? apiResultBuyerID;
  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatRequest;
  // Stores action output result for [Backend Call - API (Reject Request Info)] action in Container widget.
  ApiCallResponse? apiResulte85;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<NotificationsRow>? deleteRowNotif5546;
  // Stores action output result for [Backend Call - API (set request filter status for seller)] action in Container widget.
  ApiCallResponse? outputRebuild565;
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
