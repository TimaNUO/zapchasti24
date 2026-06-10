import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_r_o_o_widget.dart' show CAdminROOWidget;
import 'package:flutter/material.dart';

class CAdminROOModel extends FlutterFlowModel<CAdminROOWidget> {
  ///  Local state fields for this component.

  int tabIndex = 0;

  List<dynamic> requestsList = [];
  void addToRequestsList(dynamic item) => requestsList.add(item);
  void removeFromRequestsList(dynamic item) => requestsList.remove(item);
  void removeAtIndexFromRequestsList(int index) => requestsList.removeAt(index);
  void insertAtIndexInRequestsList(int index, dynamic item) =>
      requestsList.insert(index, item);
  void updateRequestsListAtIndex(int index, Function(dynamic) updateFn) =>
      requestsList[index] = updateFn(requestsList[index]);

  List<dynamic> offersList = [];
  void addToOffersList(dynamic item) => offersList.add(item);
  void removeFromOffersList(dynamic item) => offersList.remove(item);
  void removeAtIndexFromOffersList(int index) => offersList.removeAt(index);
  void insertAtIndexInOffersList(int index, dynamic item) =>
      offersList.insert(index, item);
  void updateOffersListAtIndex(int index, Function(dynamic) updateFn) =>
      offersList[index] = updateFn(offersList[index]);

  List<dynamic> ordersList = [];
  void addToOrdersList(dynamic item) => ordersList.add(item);
  void removeFromOrdersList(dynamic item) => ordersList.remove(item);
  void removeAtIndexFromOrdersList(int index) => ordersList.removeAt(index);
  void insertAtIndexInOrdersList(int index, dynamic item) =>
      ordersList.insert(index, item);
  void updateOrdersListAtIndex(int index, Function(dynamic) updateFn) =>
      ordersList[index] = updateFn(ordersList[index]);

  int countRequests = 0;

  int countOffers = 0;

  int countOrders = 0;

  int sumOrders = 0;

  ///  State fields for stateful widgets in this component.

  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  DateTime? datePicked5;
  DateTime? datePicked6;
  // Model for cAdminNavigationBar component.
  late CAdminNavigationBarModel cAdminNavigationBarModel;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    cAdminNavigationBarModel =
        createModel(context, () => CAdminNavigationBarModel());
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    cAdminNavigationBarModel.dispose();
    cBackComponentsModel.dispose();
  }
}
