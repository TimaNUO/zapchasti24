import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_new_request_widget.dart' show CNewRequestWidget;
import 'package:flutter/material.dart';

class CNewRequestModel extends FlutterFlowModel<CNewRequestWidget> {
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

  int? reqIDComp;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldDescription widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionTextController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionTextControllerValidator;
  bool isDataUploading_uploadData0j8702 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData0j8702 = [];
  List<String> uploadedFileUrls_uploadData0j8702 = [];

  // State field(s) for CheckboxUsed widget.
  bool? checkboxUsedValue;
  // State field(s) for CheckboxNew widget.
  bool? checkboxNewValue;
  // Stores action output result for [Backend Call - API (Upsert Request Info)] action in ButtonPublic widget.
  ApiCallResponse? apiResultz71;
  // Stores action output result for [Backend Call - API (rebuild links for request)] action in ButtonPublic widget.
  ApiCallResponse? outputRebuild;
  // Stores action output result for [Backend Call - API (notify sellers new request)] action in ButtonPublic widget.
  ApiCallResponse? notifySellersNewReq;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionTextController?.dispose();

    cBackComponentsModel.dispose();
  }
}
