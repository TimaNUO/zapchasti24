import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_seller_offer_to_request_a_l_l_filter_widget.dart'
    show CSellerOfferToRequestALLFilterWidget;
import 'package:flutter/material.dart';

class CSellerOfferToRequestALLFilterModel
    extends FlutterFlowModel<CSellerOfferToRequestALLFilterWidget> {
  ///  Local state fields for this component.

  List<String> oldPhoto = [];
  void addToOldPhoto(String item) => oldPhoto.add(item);
  void removeFromOldPhoto(String item) => oldPhoto.remove(item);
  void removeAtIndexFromOldPhoto(int index) => oldPhoto.removeAt(index);
  void insertAtIndexInOldPhoto(int index, String item) =>
      oldPhoto.insert(index, item);
  void updateOldPhotoAtIndex(int index, Function(String) updateFn) =>
      oldPhoto[index] = updateFn(oldPhoto[index]);

  List<String> allPhoto = [];
  void addToAllPhoto(String item) => allPhoto.add(item);
  void removeFromAllPhoto(String item) => allPhoto.remove(item);
  void removeAtIndexFromAllPhoto(int index) => allPhoto.removeAt(index);
  void insertAtIndexInAllPhoto(int index, String item) =>
      allPhoto.insert(index, item);
  void updateAllPhotoAtIndex(int index, Function(String) updateFn) =>
      allPhoto[index] = updateFn(allPhoto[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cSellerOfferToRequestALLFilter widget.
  List<FiltersRow>? sellerFilters;
  // Stores action output result for [Backend Call - API (Seller BuyerID From RequestsID Info)] action in cSellerOfferToRequestALLFilter widget.
  ApiCallResponse? apiResultBuyerID;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  bool isDataUploading_uploadData0j7 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData0j7 = [];
  List<String> uploadedFileUrls_uploadData0j7 = [];

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatAllFilter;
  // Stores action output result for [Backend Call - API (Upsert Offer Info)] action in ButtonPublic widget.
  ApiCallResponse? apiResult5in2;
  // Stores action output result for [Backend Call - API (Reject Request Info)] action in ButtonReject widget.
  ApiCallResponse? apiResultebtRES2;
  // Stores action output result for [Backend Call - API (set request filter status for seller)] action in ButtonReject widget.
  ApiCallResponse? outputRebuild;
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
