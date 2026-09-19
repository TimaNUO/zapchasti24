import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import '/index.dart';
import 'p_main_seller_widget.dart' show PMainSellerWidget;
import 'package:flutter/material.dart';

class PMainSellerModel extends FlutterFlowModel<PMainSellerWidget> {
  ///  Local state fields for this page.

  int tabOfferIndex = 0;

  int? appLastBuild;

  int? tabID = 1;

  int notificationsCount = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Upsert Row] action in pMainSeller widget.
  SellerProfilesRow? upsertSellerProfile2465;
  // Stores action output result for [Backend Call - Query Rows] action in pMainSeller widget.
  List<AppVersionsRow>? apiAppLastBuild;
  // Stores action output result for [Backend Call - API (Notifications New Request By All Filters Info Count)] action in pMainSeller widget.
  ApiCallResponse? apiResultaj55;
  // Model for cSellerNavigationBar component.
  late CSellerNavigationBarModel cSellerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cSellerNavigationBarModel =
        createModel(context, () => CSellerNavigationBarModel());
  }

  @override
  void dispose() {
    cSellerNavigationBarModel.dispose();
  }
}
