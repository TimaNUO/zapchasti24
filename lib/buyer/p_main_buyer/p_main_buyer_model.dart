import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/buyer/c_buyer_navigation_bar/c_buyer_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_main_buyer_widget.dart' show PMainBuyerWidget;
import 'package:flutter/material.dart';

class PMainBuyerModel extends FlutterFlowModel<PMainBuyerWidget> {
  ///  Local state fields for this page.

  int? carIdPage;

  int? yearIdBegin;

  int? yearIdEnd;

  String? uploadedMediaAddCarPage;

  String countVehicle = '0-0/0';

  int? vehicle;

  int? appLastBuild;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in pMainBuyer widget.
  List<AppVersionsRow>? apiAppLastBuild;
  // Stores action output result for [Backend Call - API (VehicleUser Info)] action in pMainBuyer widget.
  ApiCallResponse? apiResult1l8;
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
