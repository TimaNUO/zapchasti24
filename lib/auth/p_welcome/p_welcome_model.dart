import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_welcome_widget.dart' show PWelcomeWidget;
import 'package:flutter/material.dart';

class PWelcomeModel extends FlutterFlowModel<PWelcomeWidget> {
  ///  Local state fields for this page.

  int iter = 0;

  bool? isLicensing;

  bool? isBlocking;

  int? roleID;

  int iterWaitID = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkAuth] action in pWelcome widget.
  bool? checkAuthOutput;
  // Stores action output result for [Custom Action - getInstalledBuildNumber] action in pWelcome widget.
  int? buildNumber;
  // Stores action output result for [Custom Action - getOrCreateInstallId] action in pWelcome widget.
  String? installid;
  // Stores action output result for [Backend Call - Query Rows] action in pWelcome widget.
  List<DataUsersRow>? userRow;
  // Stores action output result for [Backend Call - API (Get Row DataUser)] action in pWelcome widget.
  ApiCallResponse? dataUserRow1;
  // Stores action output result for [Backend Call - API (upsert device and start session)] action in pWelcome widget.
  ApiCallResponse? comboB;
  // Stores action output result for [Backend Call - API (Get Row DataUser)] action in pWelcome widget.
  ApiCallResponse? dataUserRow2;
  // Stores action output result for [Backend Call - API (upsert device and start session)] action in pWelcome widget.
  ApiCallResponse? comboS;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
