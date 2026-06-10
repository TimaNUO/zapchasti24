import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_seller_request_for_filter_widget.dart'
    show CSellerRequestForFilterWidget;
import 'package:flutter/material.dart';

class CSellerRequestForFilterModel
    extends FlutterFlowModel<CSellerRequestForFilterWidget> {
  ///  Local state fields for this component.

  List<int> listActual = [];
  void addToListActual(int item) => listActual.add(item);
  void removeFromListActual(int item) => listActual.remove(item);
  void removeAtIndexFromListActual(int index) => listActual.removeAt(index);
  void insertAtIndexInListActual(int index, int item) =>
      listActual.insert(index, item);
  void updateListActualAtIndex(int index, Function(int) updateFn) =>
      listActual[index] = updateFn(listActual[index]);

  int? selectedCountryID;

  int? selectedCityID;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (get requests for filter)] action in cSellerRequestForFilter widget.
  ApiCallResponse? apiResultREQ;
  // State field(s) for DropDownCountry widget.
  int? dropDownCountryValue;
  FormFieldController<int>? dropDownCountryValueController;
  // State field(s) for DropDownCity widget.
  int? dropDownCityValue;
  FormFieldController<int>? dropDownCityValueController;
  // Stores action output result for [Backend Call - API (request add unique view)] action in Container widget.
  ApiCallResponse? apiResult7hr;
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
