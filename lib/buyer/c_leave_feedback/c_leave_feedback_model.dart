import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_leave_feedback_widget.dart' show CLeaveFeedbackWidget;
import 'package:flutter/material.dart';

class CLeaveFeedbackModel extends FlutterFlowModel<CLeaveFeedbackWidget> {
  ///  Local state fields for this component.

  double? rating;

  int? countRating;

  List<int> ratingList = [];
  void addToRatingList(int item) => ratingList.add(item);
  void removeFromRatingList(int item) => ratingList.remove(item);
  void removeAtIndexFromRatingList(int index) => ratingList.removeAt(index);
  void insertAtIndexInRatingList(int index, int item) =>
      ratingList.insert(index, item);
  void updateRatingListAtIndex(int index, Function(int) updateFn) =>
      ratingList[index] = updateFn(ratingList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - API (Buyer Feedback Info)] action in ButtonEdit widget.
  ApiCallResponse? apiResultswp;
  // Stores action output result for [Backend Call - API (Seller Rating Info)] action in ButtonEdit widget.
  ApiCallResponse? apiResultRATINGS;
  // Stores action output result for [Backend Call - API (Update Seller Rating Info)] action in ButtonEdit widget.
  ApiCallResponse? apiResultRATINGSupdate;
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
