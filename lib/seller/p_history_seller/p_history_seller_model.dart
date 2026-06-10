import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'p_history_seller_widget.dart' show PHistorySellerWidget;
import 'package:flutter/material.dart';

class PHistorySellerModel extends FlutterFlowModel<PHistorySellerWidget> {
  ///  Local state fields for this page.

  int reqRejCount = 0;

  List<dynamic> reqRejList = [];
  void addToReqRejList(dynamic item) => reqRejList.add(item);
  void removeFromReqRejList(dynamic item) => reqRejList.remove(item);
  void removeAtIndexFromReqRejList(int index) => reqRejList.removeAt(index);
  void insertAtIndexInReqRejList(int index, dynamic item) =>
      reqRejList.insert(index, item);
  void updateReqRejListAtIndex(int index, Function(dynamic) updateFn) =>
      reqRejList[index] = updateFn(reqRejList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (get rejected rf for seller)] action in pHistorySeller widget.
  ApiCallResponse? apiResultReqRejNew;
  DateTime? datePicked1;
  DateTime? datePicked2;
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
