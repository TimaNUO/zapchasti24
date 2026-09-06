import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_edit_about_seller_widget.dart' show CEditAboutSellerWidget;
import 'package:flutter/material.dart';

class CEditAboutSellerModel extends FlutterFlowModel<CEditAboutSellerWidget> {
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

  // Stores action output result for [Backend Call - Query Rows] action in cEditAboutSeller widget.
  List<SellerProfilesRow>? sellerProfiles;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDownCountry widget.
  int? dropDownCountryValue;
  FormFieldController<int>? dropDownCountryValueController;
  // State field(s) for DropDownCity widget.
  int? dropDownCityValue;
  FormFieldController<int>? dropDownCityValueController;
  // State field(s) for DropDownCurrency widget.
  int? dropDownCurrencyValue;
  FormFieldController<int>? dropDownCurrencyValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_uploadData09 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData09 = [];
  List<String> uploadedFileUrls_uploadData09 = [];

  // Stores action output result for [Backend Call - API (Update DataUsers Info)] action in Button widget.
  ApiCallResponse? apiResultp19;
  // Stores action output result for [Backend Call - API (upsert seller profile)] action in Button widget.
  ApiCallResponse? apiResultd19;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<DataUsersRow>? deleted9;
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
