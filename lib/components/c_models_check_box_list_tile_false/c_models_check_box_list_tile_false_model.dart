import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_models_check_box_list_tile_false_widget.dart'
    show CModelsCheckBoxListTileFalseWidget;
import 'package:flutter/material.dart';

class CModelsCheckBoxListTileFalseModel
    extends FlutterFlowModel<CModelsCheckBoxListTileFalseWidget> {
  ///  Local state fields for this component.

  String? keyWord;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // Stores action output result for [Backend Call - Query Rows] action in CheckboxListTile widget.
  List<CarModelsRow>? allModels;
  // State field(s) for CheckboxListTile widget.
  Map<CarModelsRow, bool> checkboxListTileValueMap2 = {};
  List<CarModelsRow> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cBackComponentsModel.dispose();
  }
}
