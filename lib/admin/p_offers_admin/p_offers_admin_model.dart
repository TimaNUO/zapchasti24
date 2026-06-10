import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_offers_admin_widget.dart' show POffersAdminWidget;
import 'package:flutter/material.dart';

class POffersAdminModel extends FlutterFlowModel<POffersAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Approved AdminOffers Info)] action in ButtonApprove widget.
  ApiCallResponse? apiResultxgj;
  // Model for cAdminNavigationBar component.
  late CAdminNavigationBarModel cAdminNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cAdminNavigationBarModel =
        createModel(context, () => CAdminNavigationBarModel());
  }

  @override
  void dispose() {
    cAdminNavigationBarModel.dispose();
  }
}
