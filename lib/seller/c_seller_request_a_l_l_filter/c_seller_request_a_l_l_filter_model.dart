import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_seller_request_a_l_l_filter_widget.dart'
    show CSellerRequestALLFilterWidget;
import 'package:flutter/material.dart';

class CSellerRequestALLFilterModel
    extends FlutterFlowModel<CSellerRequestALLFilterWidget> {
  ///  Local state fields for this component.

  List<dynamic> requestsList = [];
  void addToRequestsList(dynamic item) => requestsList.add(item);
  void removeFromRequestsList(dynamic item) => requestsList.remove(item);
  void removeAtIndexFromRequestsList(int index) => requestsList.removeAt(index);
  void insertAtIndexInRequestsList(int index, dynamic item) =>
      requestsList.insert(index, item);
  void updateRequestsListAtIndex(int index, Function(dynamic) updateFn) =>
      requestsList[index] = updateFn(requestsList[index]);

  int offset = 0;

  bool isLoadingMore = true;

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

  int selectedCountryID = 0;

  int selectedCityID = 0;

  int requestCount = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Pagin New)] action in cSellerRequestALLFilter widget.
  ApiCallResponse? apiResult785;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Count)] action in cSellerRequestALLFilter widget.
  ApiCallResponse? apiResult780c1;
  // State field(s) for DropDownCountry widget.
  int? dropDownCountryValue;
  FormFieldController<int>? dropDownCountryValueController;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Pagin New)] action in DropDownCountry widget.
  ApiCallResponse? apiResult7863;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Count)] action in DropDownCountry widget.
  ApiCallResponse? apiResult780c3;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Pagin New)] action in Container widget.
  ApiCallResponse? apiResult7864;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Count)] action in Container widget.
  ApiCallResponse? apiResult780c4;
  // State field(s) for DropDownCity widget.
  int? dropDownCityValue;
  FormFieldController<int>? dropDownCityValueController;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Pagin New)] action in DropDownCity widget.
  ApiCallResponse? apiResult7865;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Count)] action in DropDownCity widget.
  ApiCallResponse? apiResult780c5;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Pagin New)] action in Container widget.
  ApiCallResponse? apiResult7866;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Count)] action in Container widget.
  ApiCallResponse? apiResult780c6;
  // Stores action output result for [Backend Call - API (request add unique view)] action in Container widget.
  ApiCallResponse? apiResult7hr8;
  // Stores action output result for [Backend Call - API (set request filter status for seller)] action in Container widget.
  ApiCallResponse? apiResult7h8;
  // Stores action output result for [Backend Call - API (All Requests For Seller Filter Pagin New)] action in Row widget.
  ApiCallResponse? apiResult786;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    cBackComponentsModel.dispose();
  }
}
