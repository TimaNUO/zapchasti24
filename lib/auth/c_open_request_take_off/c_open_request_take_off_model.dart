import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_open_request_take_off_widget.dart' show COpenRequestTakeOffWidget;
import 'package:flutter/material.dart';

class COpenRequestTakeOffModel
    extends FlutterFlowModel<COpenRequestTakeOffWidget> {
  ///  Local state fields for this component.

  String activeRequestsByOffer = '0-0/0';

  int? selectedCountryId;

  int? selectedCityId;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownCountry widget.
  int? dropDownCountryValue;
  FormFieldController<int>? dropDownCountryValueController;
  // State field(s) for DropDownCity widget.
  int? dropDownCityValue;
  FormFieldController<int>? dropDownCityValueController;
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
