import '/flutter_flow/flutter_flow_util.dart';
import '/seller/c_seller_navigation_bar/c_seller_navigation_bar_widget.dart';
import 'p_filters_seller_widget.dart' show PFiltersSellerWidget;
import 'package:flutter/material.dart';

class PFiltersSellerModel extends FlutterFlowModel<PFiltersSellerWidget> {
  ///  Local state fields for this page.

  int? carIdDropDown;

  String countNew = '0-0/0';

  String countReject = '0-0/0';

  int tabRequestIndex = 0;

  ///  State fields for stateful widgets in this page.

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
