import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_users2_widget.dart' show CAdminUsers2Widget;
import 'package:flutter/material.dart';

class CAdminUsers2Model extends FlutterFlowModel<CAdminUsers2Widget> {
  ///  Local state fields for this component.

  int tabIndex = 0;

  List<dynamic> filteredSellerList = [];
  void addToFilteredSellerList(dynamic item) => filteredSellerList.add(item);
  void removeFromFilteredSellerList(dynamic item) =>
      filteredSellerList.remove(item);
  void removeAtIndexFromFilteredSellerList(int index) =>
      filteredSellerList.removeAt(index);
  void insertAtIndexInFilteredSellerList(int index, dynamic item) =>
      filteredSellerList.insert(index, item);
  void updateFilteredSellerListAtIndex(int index, Function(dynamic) updateFn) =>
      filteredSellerList[index] = updateFn(filteredSellerList[index]);

  int countSellerSelected = 0;

  List<dynamic> filteredBuyerList = [];
  void addToFilteredBuyerList(dynamic item) => filteredBuyerList.add(item);
  void removeFromFilteredBuyerList(dynamic item) =>
      filteredBuyerList.remove(item);
  void removeAtIndexFromFilteredBuyerList(int index) =>
      filteredBuyerList.removeAt(index);
  void insertAtIndexInFilteredBuyerList(int index, dynamic item) =>
      filteredBuyerList.insert(index, item);
  void updateFilteredBuyerListAtIndex(int index, Function(dynamic) updateFn) =>
      filteredBuyerList[index] = updateFn(filteredBuyerList[index]);

  int countBuyerSelected = 0;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;
  // Model for cAdminNavigationBar component.
  late CAdminNavigationBarModel cAdminNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
    cAdminNavigationBarModel =
        createModel(context, () => CAdminNavigationBarModel());
  }

  @override
  void dispose() {
    cBackComponentsModel.dispose();
    cAdminNavigationBarModel.dispose();
  }
}
