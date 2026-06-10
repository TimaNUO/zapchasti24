import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_brands_check_box_list_tile_car_widget.dart'
    show CBrandsCheckBoxListTileCarWidget;
import 'package:flutter/material.dart';

class CBrandsCheckBoxListTileCarModel
    extends FlutterFlowModel<CBrandsCheckBoxListTileCarWidget> {
  ///  Local state fields for this component.

  bool isSearching = true;

  String? keyWord;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
