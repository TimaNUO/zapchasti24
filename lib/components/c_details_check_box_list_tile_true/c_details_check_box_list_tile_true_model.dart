import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_details_check_box_list_tile_true_widget.dart'
    show CDetailsCheckBoxListTileTrueWidget;
import 'package:flutter/material.dart';

class CDetailsCheckBoxListTileTrueModel
    extends FlutterFlowModel<CDetailsCheckBoxListTileTrueWidget> {
  ///  Local state fields for this component.

  List<int> categoriesIDListComp = [];
  void addToCategoriesIDListComp(int item) => categoriesIDListComp.add(item);
  void removeFromCategoriesIDListComp(int item) =>
      categoriesIDListComp.remove(item);
  void removeAtIndexFromCategoriesIDListComp(int index) =>
      categoriesIDListComp.removeAt(index);
  void insertAtIndexInCategoriesIDListComp(int index, int item) =>
      categoriesIDListComp.insert(index, item);
  void updateCategoriesIDListCompAtIndex(int index, Function(int) updateFn) =>
      categoriesIDListComp[index] = updateFn(categoriesIDListComp[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTileAll widget.
  bool? checkboxListTileAllValue;
  // State field(s) for CheckboxListTileOne widget.
  Map<PartsCategoryRow, bool> checkboxListTileOneValueMap = {};
  List<PartsCategoryRow> get checkboxListTileOneCheckedItems =>
      checkboxListTileOneValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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
