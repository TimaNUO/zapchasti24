import '/backend/api_requests/api_calls.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_chats_seller_mes_widget.dart' show CChatsSellerMesWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class CChatsSellerMesModel extends FlutterFlowModel<CChatsSellerMesWidget> {
  ///  Local state fields for this component.

  int offset = 0;

  int myChatsMesCount = 0;

  String? photoUrl;

  String? filePath;

  String? videoUrl;

  String? audioUrl;

  bool isRecording = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (ch presence open)] action in cChatsSellerMes widget.
  ApiCallResponse? presenceOpenOutput;
  // Stores action output result for [Backend Call - API (Chats Messages Seller Info)] action in cChatsSellerMes widget.
  ApiCallResponse? messagesInit;
  // Stores action output result for [Custom Action - mergeMessageListsAsc] action in cChatsSellerMes widget.
  List<dynamic>? mergeMessageListsAscOutput;
  // Stores action output result for [Backend Call - API (ch mark chat read)] action in cChatsSellerMes widget.
  ApiCallResponse? chatReadOutputI;
  // Stores action output result for [Backend Call - API (ch presence close)] action in cChatsSellerMes widget.
  ApiCallResponse? presenceCloseOutput;
  // State field(s) for ColumnMain widget.
  ScrollController? columnMainScrollController;
  // State field(s) for ColumnChat widget.
  ScrollController? columnChatScrollController;
  // Stores action output result for [Backend Call - API (Chats Messages Seller Info)] action in Row widget.
  ApiCallResponse? messagesPagin;
  // Stores action output result for [Custom Action - mergeMessageListsAsc] action in Row widget.
  List<dynamic>? mergeMessageListsAscPagin;
  // State field(s) for ListViewOld widget.
  ScrollController? listViewOldScrollController;
  // Stores action output result for [Backend Call - API (ch delete own message)] action in RowMy widget.
  ApiCallResponse? messageDeleteOutput;
  // State field(s) for ListViewNewReceived widget.
  ScrollController? listViewNewReceivedScrollController;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // Stores action output result for [Backend Call - API (ch send message)] action in IconButtonVideoSent widget.
  ApiCallResponse? apiResultSendMesVideo;
  // Stores action output result for [Custom Action - mergeMessageListsAsc] action in IconButtonVideoSent widget.
  List<dynamic>? mergeMessageListsAscOut4;
  // Stores action output result for [Backend Call - API (ch mark chat read)] action in IconButtonVideoSent widget.
  ApiCallResponse? chatReadOutputV;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // Stores action output result for [Backend Call - API (ch send message)] action in IconButtonPhotoSent widget.
  ApiCallResponse? apiResultSendMesPhoto;
  // Stores action output result for [Custom Action - mergeMessageListsAsc] action in IconButtonPhotoSent widget.
  List<dynamic>? mergeMessageListsAscOut3;
  // Stores action output result for [Backend Call - API (ch mark chat read)] action in IconButtonPhotoSent widget.
  ApiCallResponse? chatReadOutputP;
  bool isDataUploading_uploadDataAudio = false;
  FFUploadedFile uploadedLocalFile_uploadDataAudio =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataAudio = '';

  // Stores action output result for [Backend Call - API (ch send message)] action in IconButtonAudioSent widget.
  ApiCallResponse? apiResultSendMesAudio;
  // Stores action output result for [Custom Action - mergeMessageListsAsc] action in IconButtonAudioSent widget.
  List<dynamic>? mergeMessageListsAscOut5;
  // Stores action output result for [Backend Call - API (ch mark chat read)] action in IconButtonAudioSent widget.
  ApiCallResponse? chatReadOutputA;
  bool isDataUploading_uploadDataVideo = false;
  FFUploadedFile uploadedLocalFile_uploadDataVideo =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataVideo = '';

  bool isDataUploading_uploadDataPhoto = false;
  FFUploadedFile uploadedLocalFile_uploadDataPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataPhoto = '';

  // State field(s) for Column widget.
  ScrollController? columnController4;
  // State field(s) for TextFieldMessage widget.
  FocusNode? textFieldMessageFocusNode;
  TextEditingController? textFieldMessageTextController;
  String? Function(BuildContext, String?)?
      textFieldMessageTextControllerValidator;
  AudioRecorder? audioRecorder;
  String? audioRecordOutput;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // Stores action output result for [Backend Call - API (ch send message)] action in IconButtonTextSent widget.
  ApiCallResponse? apiResultSendMesText;
  // Stores action output result for [Custom Action - mergeMessageListsAsc] action in IconButtonTextSent widget.
  List<dynamic>? mergeMessageListsAscOut2;
  // Stores action output result for [Backend Call - API (ch mark chat read)] action in IconButtonTextSent widget.
  ApiCallResponse? chatReadOutputT;
  // Model for cBackComponents component.
  late CBackComponentsModel cBackComponentsModel;

  @override
  void initState(BuildContext context) {
    columnMainScrollController = ScrollController();
    columnChatScrollController = ScrollController();
    listViewOldScrollController = ScrollController();
    listViewNewReceivedScrollController = ScrollController();
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    columnController3 = ScrollController();
    columnController4 = ScrollController();
    cBackComponentsModel = createModel(context, () => CBackComponentsModel());
  }

  @override
  void dispose() {
    columnMainScrollController?.dispose();
    columnChatScrollController?.dispose();
    listViewOldScrollController?.dispose();
    listViewNewReceivedScrollController?.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    columnController3?.dispose();
    columnController4?.dispose();
    textFieldMessageFocusNode?.dispose();
    textFieldMessageTextController?.dispose();

    cBackComponentsModel.dispose();
  }
}
