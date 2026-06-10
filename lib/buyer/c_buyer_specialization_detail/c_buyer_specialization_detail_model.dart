import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_buyer_specialization_detail_widget.dart'
    show CBuyerSpecializationDetailWidget;
import 'package:flutter/material.dart';

class CBuyerSpecializationDetailModel
    extends FlutterFlowModel<CBuyerSpecializationDetailWidget> {
  ///  Local state fields for this component.

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
