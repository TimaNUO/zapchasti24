import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_new_car_buyer_widget.dart' show CNewCarBuyerWidget;
import 'package:flutter/material.dart';

class CNewCarBuyerModel extends FlutterFlowModel<CNewCarBuyerWidget> {
  ///  Local state fields for this component.

  String? uploadedMediaAddCarComp;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDownAddYear widget.
  int? dropDownAddYearValue;
  FormFieldController<int>? dropDownAddYearValueController;
  // State field(s) for textFieldVin widget.
  FocusNode? textFieldVinFocusNode;
  TextEditingController? textFieldVinTextController;
  String? Function(BuildContext, String?)? textFieldVinTextControllerValidator;
  bool isDataUploading_uploadDataFhk = false;
  FFUploadedFile uploadedLocalFile_uploadDataFhk =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataFhk = '';

  // Stores action output result for [Backend Call - API (Upsert VehicleUser Info)] action in Button widget.
  ApiCallResponse? apiResult04c;
  // Stores action output result for [Backend Call - API (VehicleUser by ID Info)] action in Button widget.
  ApiCallResponse? vehicleBody;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    textFieldVinFocusNode?.dispose();
    textFieldVinTextController?.dispose();

    cBackComponentsModel.dispose();
  }
}
