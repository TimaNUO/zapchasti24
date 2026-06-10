import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_account_admin_widget.dart' show PAccountAdminWidget;
import 'package:flutter/material.dart';

class PAccountAdminModel extends FlutterFlowModel<PAccountAdminWidget> {
  ///  Local state fields for this page.

  String countSeller = '0-0/0';

  String countBuyer = '0-0/0';

  String countRequests = '0-0/0';

  String countOffers = '0-0/0';

  String countOrders = '0-0/0';

  String countFeedbacks = '0-0/0';

  String countVehicles = '0-0/0';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Admin Users Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultSELcount;
  // Stores action output result for [Backend Call - API (Admin Users Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultBUYcount;
  // Stores action output result for [Backend Call - API (AdminRequests Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultREQ;
  // Stores action output result for [Backend Call - API (Admin Offers Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultOFF;
  // Stores action output result for [Backend Call - API (Admin Orders Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultORD;
  // Stores action output result for [Backend Call - API (Admin Feedbacks Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultFEED;
  // Stores action output result for [Backend Call - API (Admin Vehicles Info)] action in pAccountAdmin widget.
  ApiCallResponse? apiResultVEH;
  // Stores action output result for [Backend Call - Query Rows] action in pAccountAdmin widget.
  List<AutoCheckRow>? autoCheckList;
  // Stores action output result for [Backend Call - API (get buyers dashboard by role)] action in Button widget.
  ApiCallResponse? buyersBody;
  // Stores action output result for [Backend Call - API (get sellers dashboard by role)] action in Button widget.
  ApiCallResponse? sellersBody;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Insert Row] action in Switch widget.
  AutoCheckRow? actionOutputAutoCheckTrue;
  // Stores action output result for [Backend Call - Insert Row] action in Switch widget.
  AutoCheckRow? actionOutputAutoCheckFalse;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  AutoCheckRow? actionOutputAutoCheckTrue2;
  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  AutoCheckRow? actionOutputAutoCheckFalse2;
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
