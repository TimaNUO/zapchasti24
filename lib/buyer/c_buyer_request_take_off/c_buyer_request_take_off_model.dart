import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_buyer_request_take_off_widget.dart' show CBuyerRequestTakeOffWidget;
import 'package:flutter/material.dart';

class CBuyerRequestTakeOffModel
    extends FlutterFlowModel<CBuyerRequestTakeOffWidget> {
  ///  Local state fields for this component.

  String activeRequestsByOffer = '0-0/0';

  int? selectedFilCountryId;

  int? selectedFilCityId;

  int tabID = 1;

  int? selectedAdCountryId;

  int? selectedAdCityId;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Buyer Orders By Request Info)] action in Container widget.
  ApiCallResponse? resultActiveRequestsByOffer;
  // Stores action output result for [Backend Call - API (Died Request Info)] action in Container widget.
  ApiCallResponse? apiResultDEAD;
  // Stores action output result for [Backend Call - API (Complete Offer Info)] action in Container widget.
  ApiCallResponse? apiResultCOMPL;
  // Stores action output result for [Backend Call - API (deactivate request links)] action in Container widget.
  ApiCallResponse? outputRebuild;
  // State field(s) for DropDownCountry widget.
  int? dropDownCountryValue;
  FormFieldController<int>? dropDownCountryValueController;
  // State field(s) for DropDownCity widget.
  int? dropDownCityValue;
  FormFieldController<int>? dropDownCityValueController;
  // State field(s) for DropDownCountry2 widget.
  int? dropDownCountry2Value;
  FormFieldController<int>? dropDownCountry2ValueController;
  // State field(s) for DropDownCity2 widget.
  int? dropDownCity2Value;
  FormFieldController<int>? dropDownCity2ValueController;
  // Stores action output result for [Backend Call - API (ads add unique view)] action in Container widget.
  ApiCallResponse? addViewAd;
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
