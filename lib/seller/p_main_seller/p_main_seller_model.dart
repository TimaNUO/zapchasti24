import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'p_main_seller_widget.dart' show PMainSellerWidget;
import 'package:flutter/material.dart';

class PMainSellerModel extends FlutterFlowModel<PMainSellerWidget> {
  ///  Local state fields for this page.

  String countRejected = '0-0/0';

  String countPendingReview = '0-0/0';

  String countApproved = '0-0/0';

  int tabOfferIndex = 0;

  int? appLastBuild;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in pMainSeller widget.
  List<AppVersionsRow>? apiAppLastBuild;
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
