import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_offer_to_request_for_filter_widget.dart'
    show CSellerOfferToRequestForFilterWidget;
import 'package:flutter/material.dart';

class CSellerOfferToRequestForFilterModel
    extends FlutterFlowModel<CSellerOfferToRequestForFilterWidget> {
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

  // Stores action output result for [Backend Call - API (Seller BuyerID From RequestsID Info)] action in cSellerOfferToRequestForFilter widget.
  ApiCallResponse? apiResultBuyerID;
  // Stores action output result for [Backend Call - API (ch get or create chat)] action in Container widget.
  ApiCallResponse? chatRequest;
  // Stores action output result for [Backend Call - API (Reject Request Info)] action in Container widget.
  ApiCallResponse? apiResultebtRES;
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
