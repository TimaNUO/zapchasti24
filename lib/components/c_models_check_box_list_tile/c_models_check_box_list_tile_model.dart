import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_models_check_box_list_tile_widget.dart'
    show CModelsCheckBoxListTileWidget;
import 'package:flutter/material.dart';

class CModelsCheckBoxListTileModel
    extends FlutterFlowModel<CModelsCheckBoxListTileWidget> {
  ///  Local state fields for this component.

  String? keyWord;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Stores action output result for [Backend Call - Query Rows] action in CheckboxListTile widget.
  List<CarModelsRow>? allModels;
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
