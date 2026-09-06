import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_start_req_widget.dart' show PStartReqWidget;
import 'package:flutter/material.dart';

class PStartReqModel extends FlutterFlowModel<PStartReqWidget> {
  ///  Local state fields for this page.

  int? countRequests;

  List<dynamic> requestsList = [];
  void addToRequestsList(dynamic item) => requestsList.add(item);
  void removeFromRequestsList(dynamic item) => requestsList.remove(item);
  void removeAtIndexFromRequestsList(int index) => requestsList.removeAt(index);
  void insertAtIndexInRequestsList(int index, dynamic item) =>
      requestsList.insert(index, item);
  void updateRequestsListAtIndex(int index, Function(dynamic) updateFn) =>
      requestsList[index] = updateFn(requestsList[index]);

  List<dynamic> requestsListTrans = [];
  void addToRequestsListTrans(dynamic item) => requestsListTrans.add(item);
  void removeFromRequestsListTrans(dynamic item) =>
      requestsListTrans.remove(item);
  void removeAtIndexFromRequestsListTrans(int index) =>
      requestsListTrans.removeAt(index);
  void insertAtIndexInRequestsListTrans(int index, dynamic item) =>
      requestsListTrans.insert(index, item);
  void updateRequestsListTransAtIndex(int index, Function(dynamic) updateFn) =>
      requestsListTrans[index] = updateFn(requestsListTrans[index]);

  int offset = 0;

  bool isLoadingMore = true;

  int? idReq;

  int? idItem;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Open All Approved Requests Info Count)] action in pStartReq widget.
  ApiCallResponse? apiResultOpenReqCount;
  // Stores action output result for [Backend Call - API (Open All Approved Requests Info)] action in pStartReq widget.
  ApiCallResponse? apiResultOpenReq1;
  // Stores action output result for [Backend Call - API (Open Request ONE Info)] action in Container widget.
  ApiCallResponse? apiResult4b8;
  // Stores action output result for [Backend Call - API (Open All Approved Requests Info)] action in Row widget.
  ApiCallResponse? apiResultOpenReq2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
