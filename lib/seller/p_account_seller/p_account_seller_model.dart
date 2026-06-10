import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import '/index.dart';
import 'p_account_seller_widget.dart' show PAccountSellerWidget;
import 'package:flutter/material.dart';

class PAccountSellerModel extends FlutterFlowModel<PAccountSellerWidget> {
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
  // Model for cSellerNavigationBar component.
  late CSellerNavigationBarModel cSellerNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cSellerNavigationBarModel =
        createModel(context, () => CSellerNavigationBarModel());
  }

  @override
  void dispose() {
    cSellerNavigationBarModel.dispose();
  }
}
