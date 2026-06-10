import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_edit_car_details_widget.dart' show CEditCarDetailsWidget;
import 'package:flutter/material.dart';

class CEditCarDetailsModel extends FlutterFlowModel<CEditCarDetailsWidget> {
  ///  Local state fields for this component.

  int carBrandIDComp = 0;

  int carModelIDComp = 0;

  int carYearIDComp = 0;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataZck = false;
  FFUploadedFile uploadedLocalFile_uploadDataZck =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataZck = '';

  // State field(s) for textFieldVin widget.
  FocusNode? textFieldVinFocusNode;
  TextEditingController? textFieldVinTextController;
  String? Function(BuildContext, String?)? textFieldVinTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update VehicleUser Info)] action in ButtonEdit widget.
  ApiCallResponse? apiResult85a;
  // Stores action output result for [Backend Call - API (Hide VehicleUser Info)] action in ButtonDelete widget.
  ApiCallResponse? apiResulto0i;
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
