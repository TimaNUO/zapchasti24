import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_specializations_widget.dart' show CSellerSpecializationsWidget;
import 'package:flutter/material.dart';

class CSellerSpecializationsModel
    extends FlutterFlowModel<CSellerSpecializationsWidget> {
  ///  Local state fields for this component.

  List<int> selectedSpecIds = [];
  void addToSelectedSpecIds(int item) => selectedSpecIds.add(item);
  void removeFromSelectedSpecIds(int item) => selectedSpecIds.remove(item);
  void removeAtIndexFromSelectedSpecIds(int index) =>
      selectedSpecIds.removeAt(index);
  void insertAtIndexInSelectedSpecIds(int index, int item) =>
      selectedSpecIds.insert(index, item);
  void updateSelectedSpecIdsAtIndex(int index, Function(int) updateFn) =>
      selectedSpecIds[index] = updateFn(selectedSpecIds[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxSpec widget.
  Map<SpecializationsRow, bool> checkboxSpecValueMap = {};
  List<SpecializationsRow> get checkboxSpecCheckedItems =>
      checkboxSpecValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Backend Call - API (save seller specialization one)] action in CheckboxSpec widget.
  ApiCallResponse? apiResulte1k2;
  // Stores action output result for [Backend Call - API (save seller specialization one)] action in CheckboxSpec widget.
  ApiCallResponse? apiResulte1k;
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
