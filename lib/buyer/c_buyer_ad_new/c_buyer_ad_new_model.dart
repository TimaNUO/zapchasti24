import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_buyer_ad_new_widget.dart' show CBuyerAdNewWidget;
import 'package:flutter/material.dart';

class CBuyerAdNewModel extends FlutterFlowModel<CBuyerAdNewWidget> {
  ///  Local state fields for this component.

  List<String> allPhotoList = [];
  void addToAllPhotoList(String item) => allPhotoList.add(item);
  void removeFromAllPhotoList(String item) => allPhotoList.remove(item);
  void removeAtIndexFromAllPhotoList(int index) => allPhotoList.removeAt(index);
  void insertAtIndexInAllPhotoList(int index, String item) =>
      allPhotoList.insert(index, item);
  void updateAllPhotoListAtIndex(int index, Function(String) updateFn) =>
      allPhotoList[index] = updateFn(allPhotoList[index]);

  List<String> oldPhotoList = [];
  void addToOldPhotoList(String item) => oldPhotoList.add(item);
  void removeFromOldPhotoList(String item) => oldPhotoList.remove(item);
  void removeAtIndexFromOldPhotoList(int index) => oldPhotoList.removeAt(index);
  void insertAtIndexInOldPhotoList(int index, String item) =>
      oldPhotoList.insert(index, item);
  void updateOldPhotoListAtIndex(int index, Function(String) updateFn) =>
      oldPhotoList[index] = updateFn(oldPhotoList[index]);

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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDownCurrency widget.
  int? dropDownCurrencyValue;
  FormFieldController<int>? dropDownCurrencyValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_uploadDataCn3b = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataCn3b = [];
  List<String> uploadedFileUrls_uploadDataCn3b = [];

  // Stores action output result for [Backend Call - API (Upsert Ad Info)] action in Button widget.
  ApiCallResponse? apiResultp169;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    cBackComponentsModel.dispose();
  }
}
