import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_new_filter_widget.dart' show CNewFilterWidget;
import 'package:flutter/material.dart';

class CNewFilterModel extends FlutterFlowModel<CNewFilterWidget> {
  ///  Local state fields for this component.

  int? filterID;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownFrom widget.
  int? dropDownFromValue;
  FormFieldController<int>? dropDownFromValueController;
  // State field(s) for DropDownTo widget.
  int? dropDownToValue;
  FormFieldController<int>? dropDownToValueController;
  // State field(s) for CheckboxUsed widget.
  bool? checkboxUsedValue;
  // State field(s) for CheckboxNew widget.
  bool? checkboxNewValue;
  // Stores action output result for [Backend Call - API (Upsert SellerFilter Info)] action in Button widget.
  ApiCallResponse? apiResultp167;
  // Stores action output result for [Backend Call - API (rebuild links for filter)] action in Button widget.
  ApiCallResponse? outputRebuild;
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
