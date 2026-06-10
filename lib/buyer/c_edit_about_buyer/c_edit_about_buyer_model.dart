import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_edit_about_buyer_widget.dart' show CEditAboutBuyerWidget;
import 'package:flutter/material.dart';

class CEditAboutBuyerModel extends FlutterFlowModel<CEditAboutBuyerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDownCountry widget.
  int? dropDownCountryValue;
  FormFieldController<int>? dropDownCountryValueController;
  // State field(s) for DropDownCity widget.
  int? dropDownCityValue;
  FormFieldController<int>? dropDownCityValueController;
  // Stores action output result for [Backend Call - API (Update DataUsers Info)] action in Button widget.
  ApiCallResponse? apiResultp16;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cBackComponentsModel.dispose();
  }
}
