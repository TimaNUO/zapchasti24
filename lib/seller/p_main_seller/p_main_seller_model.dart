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

  List<dynamic> notificationsList = [];
  void addToNotificationsList(dynamic item) => notificationsList.add(item);
  void removeFromNotificationsList(dynamic item) =>
      notificationsList.remove(item);
  void removeAtIndexFromNotificationsList(int index) =>
      notificationsList.removeAt(index);
  void insertAtIndexInNotificationsList(int index, dynamic item) =>
      notificationsList.insert(index, item);
  void updateNotificationsListAtIndex(int index, Function(dynamic) updateFn) =>
      notificationsList[index] = updateFn(notificationsList[index]);

  int notificationsCount = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in pMainSeller widget.
  List<AppVersionsRow>? apiAppLastBuild;
  // Stores action output result for [Backend Call - API (Notifications New Request By All Filters Info)] action in pMainSeller widget.
  ApiCallResponse? apiResultajt;
  // Stores action output result for [Backend Call - API (Hide Ad Info)] action in Container widget.
  ApiCallResponse? apiResultwxc;
  // Stores action output result for [Backend Call - API (Died Ad Info)] action in ButtonAlive widget.
  ApiCallResponse? aliveFalse;
  // Stores action output result for [Backend Call - API (Died Ad Info)] action in Button widget.
  ApiCallResponse? aliveTrue;
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
