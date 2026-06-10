import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_seller_navigation_bar_widget.dart' show CSellerNavigationBarWidget;
import 'package:flutter/material.dart';

class CSellerNavigationBarModel
    extends FlutterFlowModel<CSellerNavigationBarWidget> {
  ///  Local state fields for this component.

  List<int> emptyList = [];
  void addToEmptyList(int item) => emptyList.add(item);
  void removeFromEmptyList(int item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, int item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(int) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<SellerSpecializationsRow>? apiResultSpecList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
