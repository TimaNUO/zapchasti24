import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_buyer_request_actuality_widget.dart'
    show PBuyerRequestActualityWidget;
import 'package:flutter/material.dart';

class PBuyerRequestActualityModel
    extends FlutterFlowModel<PBuyerRequestActualityWidget> {
  ///  Local state fields for this page.

  String countDied = '0-0/0';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Update Row(s)] action in pBuyerRequestActuality widget.
  List<NotificationsRow>? df5df4g6d5fsgd5df;
  // Stores action output result for [Backend Call - API (Open Request ONE Info)] action in pBuyerRequestActuality widget.
  ApiCallResponse? apiResultd2k;
  // Stores action output result for [Backend Call - API (request actuality confirm)] action in ButtonAlive widget.
  ApiCallResponse? apiResultzor;
  // Stores action output result for [Backend Call - API (notify sellers new request)] action in ButtonAlive widget.
  ApiCallResponse? notifySellersActReq;
  // Stores action output result for [Backend Call - API (request actuality remove by buyer)] action in ButtonAlive widget.
  ApiCallResponse? apiResultzordel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
