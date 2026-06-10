import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_admin_banners_widget.dart' show CAdminBannersWidget;
import 'package:flutter/material.dart';

class CAdminBannersModel extends FlutterFlowModel<CAdminBannersWidget> {
  ///  Local state fields for this component.

  int tabIndex = 0;

  String? banner201;

  String? banner101;

  String? banner202;

  String? banner203;

  String? banner102;

  String? banner103;

  String? banner204;

  String? banner104;

  String? banner105;

  String? banner111;

  String? banner222;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner101;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner102;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner103;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner104;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner105;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner201;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner202;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner203;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner204;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner111;
  // Stores action output result for [Backend Call - API (Admin Banners Info)] action in cAdminBanners widget.
  ApiCallResponse? outputBanner222;
  bool isDataUploading_uploadData201 = false;
  FFUploadedFile uploadedLocalFile_uploadData201 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData201 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate201;
  bool isDataUploading_uploadData202 = false;
  FFUploadedFile uploadedLocalFile_uploadData202 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData202 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate202;
  bool isDataUploading_uploadData203 = false;
  FFUploadedFile uploadedLocalFile_uploadData203 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData203 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate203;
  bool isDataUploading_uploadData204 = false;
  FFUploadedFile uploadedLocalFile_uploadData204 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData204 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate204;
  bool isDataUploading_uploadData222 = false;
  FFUploadedFile uploadedLocalFile_uploadData222 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData222 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate222;
  bool isDataUploading_uploadData101 = false;
  FFUploadedFile uploadedLocalFile_uploadData101 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData101 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate101;
  bool isDataUploading_uploadData102 = false;
  FFUploadedFile uploadedLocalFile_uploadData102 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData102 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate102;
  bool isDataUploading_uploadData103 = false;
  FFUploadedFile uploadedLocalFile_uploadData103 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData103 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate103;
  bool isDataUploading_uploadData104 = false;
  FFUploadedFile uploadedLocalFile_uploadData104 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData104 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate104;
  bool isDataUploading_uploadData105 = false;
  FFUploadedFile uploadedLocalFile_uploadData105 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData105 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate105;
  bool isDataUploading_uploadData111 = false;
  FFUploadedFile uploadedLocalFile_uploadData111 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData111 = '';

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BannersRow? outputUpdate111;
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
