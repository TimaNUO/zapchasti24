import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_details_check_box_list_tile_widget.dart'
    show CDetailsCheckBoxListTileWidget;
import 'package:flutter/material.dart';

class CDetailsCheckBoxListTileModel
    extends FlutterFlowModel<CDetailsCheckBoxListTileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTileAll widget.
  bool? checkboxListTileAllValue;
  // Stores action output result for [Backend Call - Query Rows] action in CheckboxListTileAll widget.
  List<PartsCategoryRow>? allCategories;
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
