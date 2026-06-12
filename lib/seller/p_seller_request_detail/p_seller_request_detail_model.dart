import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_seller_request_detail_widget.dart' show PSellerRequestDetailWidget;
import 'package:flutter/material.dart';

class PSellerRequestDetailModel
    extends FlutterFlowModel<PSellerRequestDetailWidget> {
  ///  Local state fields for this page.

  List<int> selectedSpecIds = [];
  void addToSelectedSpecIds(int item) => selectedSpecIds.add(item);
  void removeFromSelectedSpecIds(int item) => selectedSpecIds.remove(item);
  void removeAtIndexFromSelectedSpecIds(int index) =>
      selectedSpecIds.removeAt(index);
  void insertAtIndexInSelectedSpecIds(int index, int item) =>
      selectedSpecIds.insert(index, item);
  void updateSelectedSpecIdsAtIndex(int index, Function(int) updateFn) =>
      selectedSpecIds[index] = updateFn(selectedSpecIds[index]);

  ///  State fields for stateful widgets in this page.

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
