import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'c_chats_seller_mes_model.dart';
export 'c_chats_seller_mes_model.dart';

class CChatsSellerMesWidget extends StatefulWidget {
  const CChatsSellerMesWidget({
    super.key,
    required this.chatID,
  });

  final int? chatID;

  @override
  State<CChatsSellerMesWidget> createState() => _CChatsSellerMesWidgetState();
}

class _CChatsSellerMesWidgetState extends State<CChatsSellerMesWidget>
    with TickerProviderStateMixin {
  late CChatsSellerMesModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CChatsSellerMesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.unsubscribeFromChatMessages();
      _model.presenceOpenOutput = await RPCChatsGroup.chPresenceOpenCall.call(
        chatID: widget.chatID,
        currentJwtToken: currentJwtToken,
      );

      await actions.subscribeToChatMessages(
        widget.chatID!,
      );
      FFAppState().lastRealtimeMessageListJson = [];
      safeSetState(() {});
      _model.messagesInit =
          await SupabaseInfoGroup.chatsMessagesSellerInfoCall.call(
        chatID: widget.chatID,
        offset: 0,
        limit: 10,
        currentJwtToken: currentJwtToken,
      );

      _model.mergeMessageListsAscOutput = await actions.mergeMessageListsAsc(
        FFAppState().chatMessagesLiveJson.toList(),
        (_model.messagesInit?.jsonBody ?? ''),
      );
      FFAppState().chatMessagesLiveJson =
          _model.mergeMessageListsAscOutput!.toList().cast<dynamic>();
      safeSetState(() {});
      _model.myChatsMesCount = functions.extractTotal(
          (_model.messagesInit?.getHeader('content-range') ?? ''));
      safeSetState(() {});
      _model.chatReadOutputI = await RPCChatsGroup.chMarkChatReadCall.call(
        chatID: widget.chatID,
        currentJwtToken: currentJwtToken,
      );

      await _model.columnChatScrollController?.animateTo(
        0,
        duration: Duration(milliseconds: 0),
        curve: Curves.ease,
      );
    });

    _model.textFieldMessageTextController ??= TextEditingController();
    _model.textFieldMessageFocusNode ??= FocusNode();
    _model.textFieldMessageFocusNode!.addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'iconButtonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.2, 1.2),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On component dispose action.
    () async {
      await actions.unsubscribeFromChatMessages();
      _model.presenceCloseOutput = await RPCChatsGroup.chPresenceCloseCall.call(
        chatID: widget.chatID,
        currentJwtToken: currentJwtToken,
      );
    }();

    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Stack(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await actions.dismissKeyboard(
                    context,
                  );
                },
                child: SingleChildScrollView(
                  controller: _model.columnMainScrollController,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '53lq0gvc' /* Список сообщений */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                          ),
                          if (false)
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: FFLocalizations.of(context).getText(
                                  'fyjpyamp' /* Переход */,
                                ),
                                options: FFButtonOptions(
                                  width: 180.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).accent1,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Divider(
                        height: 8.0,
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: SingleChildScrollView(
                          primary: false,
                          controller: _model.columnChatScrollController,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.offset = _model.offset + 10;
                                    safeSetState(() {});
                                    _model.messagesPagin =
                                        await SupabaseInfoGroup
                                            .chatsMessagesSellerInfoCall
                                            .call(
                                      chatID: widget.chatID,
                                      offset: _model.offset,
                                      limit: 10,
                                      currentJwtToken: currentJwtToken,
                                    );

                                    _model.mergeMessageListsAscPagin =
                                        await actions.mergeMessageListsAsc(
                                      FFAppState()
                                          .chatMessagesLiveJson
                                          .toList(),
                                      (_model.messagesPagin?.jsonBody ?? ''),
                                    );
                                    FFAppState().chatMessagesLiveJson = _model
                                        .mergeMessageListsAscPagin!
                                        .toList()
                                        .cast<dynamic>();
                                    safeSetState(() {});
                                    safeSetState(() {});

                                    safeSetState(() {});
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (_model.myChatsMesCount >
                                          (_model.offset + 10))
                                        Icon(
                                          Icons.arrow_upward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 48.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Builder(
                                  builder: (context) {
                                    final messages = FFAppState()
                                        .chatMessagesLiveJson
                                        .toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: messages.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 8.0),
                                      itemBuilder: (context, messagesIndex) {
                                        final messagesItem =
                                            messages[messagesIndex];
                                        return Visibility(
                                          visible: !getJsonField(
                                            messagesItem,
                                            r'''$.is_removed''',
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              if (functions.convertJsonToInt(
                                                      getJsonField(
                                                    messagesItem,
                                                    r'''$.sender_id''',
                                                  )) ==
                                                  FFAppState().userIdApp)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          70.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onLongPress: () async {
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Удаление сообщения'),
                                                                    content: Text(
                                                                        'Хотите удалить свое сообщение у всех?'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: Text(
                                                                            'Отмена'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                        child: Text(
                                                                            'Продолжить'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ) ??
                                                              false;
                                                      if (confirmDialogResponse) {
                                                        _model.messageDeleteOutput =
                                                            await RPCChatsGroup
                                                                .chDeleteOwnMessageCall
                                                                .call(
                                                          messageID:
                                                              getJsonField(
                                                            messagesItem,
                                                            r'''$.id''',
                                                          ),
                                                          currentJwtToken:
                                                              currentJwtToken,
                                                        );

                                                        FFAppState()
                                                            .removeAtIndexFromChatMessagesLiveJson(
                                                                messagesIndex);
                                                        safeSetState(() {});
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (getJsonField(
                                                              messagesItem,
                                                              r'''$.content.expired''',
                                                            ) ==
                                                            null)
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              if (functions
                                                                      .convertJsonToString(
                                                                          getJsonField(
                                                                    messagesItem,
                                                                    r'''$.type''',
                                                                  )) ==
                                                                  MessageType
                                                                      .text
                                                                      .name)
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await Clipboard.setData(
                                                                        ClipboardData(
                                                                            text:
                                                                                getJsonField(
                                                                      messagesItem,
                                                                      r'''$.text''',
                                                                    ).toString()));
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          MediaQuery.sizeOf(context).width *
                                                                              0.65,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          messagesItem,
                                                                          r'''$.text''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FontWeight.w600,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        overflow:
                                                                            TextOverflow.clip,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (functions
                                                                      .convertJsonToString(
                                                                          getJsonField(
                                                                    messagesItem,
                                                                    r'''$.type''',
                                                                  )) ==
                                                                  MessageType
                                                                      .image
                                                                      .name)
                                                                Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await Navigator
                                                                            .push(
                                                                          context,
                                                                          PageTransition(
                                                                            type:
                                                                                PageTransitionType.fade,
                                                                            child:
                                                                                FlutterFlowExpandedImageView(
                                                                              image: Image.network(
                                                                                getJsonField(
                                                                                  messagesItem,
                                                                                  r'''$.media_url''',
                                                                                ).toString(),
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                              allowRotation: true,
                                                                              tag: getJsonField(
                                                                                messagesItem,
                                                                                r'''$.media_url''',
                                                                              ).toString(),
                                                                              useHeroAnimation: true,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          Hero(
                                                                        tag:
                                                                            getJsonField(
                                                                          messagesItem,
                                                                          r'''$.media_url''',
                                                                        ).toString(),
                                                                        transitionOnUserGestures:
                                                                            true,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              messagesItem,
                                                                              r'''$.media_url''',
                                                                            ).toString(),
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (functions
                                                                      .convertJsonToString(
                                                                          getJsonField(
                                                                    messagesItem,
                                                                    r'''$.type''',
                                                                  )) ==
                                                                  MessageType
                                                                      .video
                                                                      .name)
                                                                Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        FlutterFlowVideoPlayer(
                                                                      path:
                                                                          getJsonField(
                                                                        messagesItem,
                                                                        r'''$.media_url''',
                                                                      ).toString(),
                                                                      videoType:
                                                                          VideoType
                                                                              .network,
                                                                      autoPlay:
                                                                          false,
                                                                      looping:
                                                                          true,
                                                                      showControls:
                                                                          true,
                                                                      allowFullScreen:
                                                                          true,
                                                                      allowPlaybackSpeedMenu:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (functions
                                                                      .convertJsonToString(
                                                                          getJsonField(
                                                                    messagesItem,
                                                                    r'''$.type''',
                                                                  )) ==
                                                                  MessageType
                                                                      .audio
                                                                      .name)
                                                                Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowAudioPlayer(
                                                                    audio: Audio
                                                                        .network(
                                                                      getJsonField(
                                                                        messagesItem,
                                                                        r'''$.media_url''',
                                                                      ).toString(),
                                                                      metas:
                                                                          Metas(),
                                                                    ),
                                                                    titleTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                        ),
                                                                    playbackDurationTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    playbackButtonColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    activeTrackColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    inactiveTrackColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    elevation:
                                                                        0.0,
                                                                    playInBackground:
                                                                        PlayInBackground
                                                                            .disabledRestoreOnForeground,
                                                                  ),
                                                                ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "yMMMd",
                                                                      DateTime.fromMillisecondsSinceEpoch(
                                                                          functions
                                                                              .isoToEpochMsDefault(getJsonField(
                                                                        messagesItem,
                                                                        r'''$.created_at''',
                                                                      ).toString())),
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "Hm",
                                                                      DateTime.fromMillisecondsSinceEpoch(
                                                                          functions
                                                                              .isoToEpochMsDefault(getJsonField(
                                                                        messagesItem,
                                                                        r'''$.created_at''',
                                                                      ).toString())),
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            1.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        if (functions.convertJsonToString(getJsonField(
                                                                              messagesItem,
                                                                              r'''$.status''',
                                                                            )) ==
                                                                            'sent') {
                                                                          return FaIcon(
                                                                            FontAwesomeIcons.check,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent3,
                                                                            size:
                                                                                16.0,
                                                                          );
                                                                        } else {
                                                                          return Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 1.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.checkDouble,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 16.0,
                                                                            ),
                                                                          );
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                            ],
                                                          ),
                                                        if (getJsonField(
                                                              messagesItem,
                                                              r'''$.content.expired''',
                                                            ) !=
                                                            null)
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.65,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ow0p48m1' /* Сообщение удалено */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                    overflow:
                                                                        TextOverflow
                                                                            .clip,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "yMMMd",
                                                                      DateTime.fromMillisecondsSinceEpoch(
                                                                          functions
                                                                              .isoToEpochMsDefault(getJsonField(
                                                                        messagesItem,
                                                                        r'''$.created_at''',
                                                                      ).toString())),
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    dateTimeFormat(
                                                                      "Hm",
                                                                      DateTime.fromMillisecondsSinceEpoch(
                                                                          functions
                                                                              .isoToEpochMsDefault(getJsonField(
                                                                        messagesItem,
                                                                        r'''$.created_at''',
                                                                      ).toString())),
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent4,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                            ],
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              if (functions.convertJsonToInt(
                                                      getJsonField(
                                                    messagesItem,
                                                    r'''$.sender_id''',
                                                  )) !=
                                                  FFAppState().userIdApp)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 70.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (getJsonField(
                                                            messagesItem,
                                                            r'''$.content.expired''',
                                                          ) ==
                                                          null)
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            if (functions
                                                                    .convertJsonToString(
                                                                        getJsonField(
                                                                  messagesItem,
                                                                  r'''$.type''',
                                                                )) ==
                                                                MessageType
                                                                    .text.name)
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              getJsonField(
                                                                    messagesItem,
                                                                    r'''$.text''',
                                                                  ).toString()));
                                                                },
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        messagesItem,
                                                                        r'''$.text''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.openSans(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            fontSize: getJsonField(
                                                                                      messagesItem,
                                                                                      r'''$.translated_text''',
                                                                                    ) !=
                                                                                    null
                                                                                ? 14.0
                                                                                : 16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((functions.convertJsonToString(
                                                                        getJsonField(
                                                                      messagesItem,
                                                                      r'''$.type''',
                                                                    )) ==
                                                                    MessageType
                                                                        .text
                                                                        .name) &&
                                                                (getJsonField(
                                                                      messagesItem,
                                                                      r'''$.translated_text''',
                                                                    ) !=
                                                                    null))
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              getJsonField(
                                                                    messagesItem,
                                                                    r'''$.translated_text''',
                                                                  ).toString()));
                                                                },
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        messagesItem,
                                                                        r'''$.translated_text''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.openSans(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (functions
                                                                    .convertJsonToString(
                                                                        getJsonField(
                                                                  messagesItem,
                                                                  r'''$.type''',
                                                                )) ==
                                                                MessageType
                                                                    .image.name)
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.65,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        PageTransition(
                                                                          type:
                                                                              PageTransitionType.fade,
                                                                          child:
                                                                              FlutterFlowExpandedImageView(
                                                                            image:
                                                                                Image.network(
                                                                              getJsonField(
                                                                                messagesItem,
                                                                                r'''$.media_url''',
                                                                              ).toString(),
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                            allowRotation:
                                                                                true,
                                                                            tag:
                                                                                getJsonField(
                                                                              messagesItem,
                                                                              r'''$.media_url''',
                                                                            ).toString(),
                                                                            useHeroAnimation:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Hero(
                                                                      tag:
                                                                          getJsonField(
                                                                        messagesItem,
                                                                        r'''$.media_url''',
                                                                      ).toString(),
                                                                      transitionOnUserGestures:
                                                                          true,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          getJsonField(
                                                                            messagesItem,
                                                                            r'''$.media_url''',
                                                                          ).toString(),
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (functions
                                                                    .convertJsonToString(
                                                                        getJsonField(
                                                                  messagesItem,
                                                                  r'''$.type''',
                                                                )) ==
                                                                MessageType
                                                                    .video.name)
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.65,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child:
                                                                      FlutterFlowVideoPlayer(
                                                                    path:
                                                                        getJsonField(
                                                                      messagesItem,
                                                                      r'''$.media_url''',
                                                                    ).toString(),
                                                                    videoType:
                                                                        VideoType
                                                                            .network,
                                                                    autoPlay:
                                                                        false,
                                                                    looping:
                                                                        true,
                                                                    showControls:
                                                                        true,
                                                                    allowFullScreen:
                                                                        true,
                                                                    allowPlaybackSpeedMenu:
                                                                        false,
                                                                  ),
                                                                ),
                                                              ),
                                                            if (functions
                                                                    .convertJsonToString(
                                                                        getJsonField(
                                                                  messagesItem,
                                                                  r'''$.type''',
                                                                )) ==
                                                                MessageType
                                                                    .audio.name)
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.65,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child:
                                                                    FlutterFlowAudioPlayer(
                                                                  audio: Audio
                                                                      .network(
                                                                    getJsonField(
                                                                      messagesItem,
                                                                      r'''$.media_url''',
                                                                    ).toString(),
                                                                    metas:
                                                                        Metas(),
                                                                  ),
                                                                  titleTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                      ),
                                                                  playbackDurationTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  playbackButtonColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  activeTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  inactiveTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  elevation:
                                                                      0.0,
                                                                  playInBackground:
                                                                      PlayInBackground
                                                                          .disabledRestoreOnForeground,
                                                                ),
                                                              ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  dateTimeFormat(
                                                                    "yMMMd",
                                                                    DateTime.fromMillisecondsSinceEpoch(
                                                                        functions
                                                                            .isoToEpochMsDefault(getJsonField(
                                                                      messagesItem,
                                                                      r'''$.created_at''',
                                                                    ).toString())),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  dateTimeFormat(
                                                                    "Hm",
                                                                    DateTime.fromMillisecondsSinceEpoch(
                                                                        functions
                                                                            .isoToEpochMsDefault(getJsonField(
                                                                      messagesItem,
                                                                      r'''$.created_at''',
                                                                    ).toString())),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      if (getJsonField(
                                                            messagesItem,
                                                            r'''$.content.expired''',
                                                          ) !=
                                                          null)
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.65,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent3,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'bgc86up0' /* Сообщение удалено */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  dateTimeFormat(
                                                                    "yMMMd",
                                                                    DateTime.fromMillisecondsSinceEpoch(
                                                                        functions
                                                                            .isoToEpochMsDefault(getJsonField(
                                                                      messagesItem,
                                                                      r'''$.created_at''',
                                                                    ).toString())),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  dateTimeFormat(
                                                                    "Hm",
                                                                    DateTime.fromMillisecondsSinceEpoch(
                                                                        functions
                                                                            .isoToEpochMsDefault(getJsonField(
                                                                      messagesItem,
                                                                      r'''$.created_at''',
                                                                    ).toString())),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          ],
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                        );
                                      },
                                      controller:
                                          _model.listViewOldScrollController,
                                    );
                                  },
                                ),
                              ),
                              if (FFAppState()
                                  .lastRealtimeMessageListJson
                                  .isNotEmpty)
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 70.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final messagesNew = FFAppState()
                                            .lastRealtimeMessageListJson
                                            .toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: messagesNew.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 8.0),
                                          itemBuilder:
                                              (context, messagesNewIndex) {
                                            final messagesNewItem =
                                                messagesNew[messagesNewIndex];
                                            return Visibility(
                                              visible: !getJsonField(
                                                messagesNewItem,
                                                r'''$.is_removed''',
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (functions
                                                          .convertJsonToString(
                                                              getJsonField(
                                                        messagesNewItem,
                                                        r'''$.type''',
                                                      )) ==
                                                      MessageType.text.name)
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Clipboard.setData(
                                                            ClipboardData(
                                                                text:
                                                                    getJsonField(
                                                          messagesNewItem,
                                                          r'''$.text''',
                                                        ).toString()));
                                                      },
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.65,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0),
                                                          child: Text(
                                                            getJsonField(
                                                              messagesNewItem,
                                                              r'''$.text''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  fontSize:
                                                                      getJsonField(
                                                                                messagesNewItem,
                                                                                r'''$.translated_text''',
                                                                              ) !=
                                                                              null
                                                                          ? 14.0
                                                                          : 16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if ((functions
                                                              .convertJsonToString(
                                                                  getJsonField(
                                                            messagesNewItem,
                                                            r'''$.type''',
                                                          )) ==
                                                          MessageType
                                                              .text.name) &&
                                                      (getJsonField(
                                                            messagesNewItem,
                                                            r'''$.translated_text''',
                                                          ) !=
                                                          null))
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Clipboard.setData(
                                                            ClipboardData(
                                                                text:
                                                                    getJsonField(
                                                          messagesNewItem,
                                                          r'''$.translated_text''',
                                                        ).toString()));
                                                      },
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.65,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      4.0,
                                                                      8.0,
                                                                      4.0),
                                                          child: Text(
                                                            getJsonField(
                                                              messagesNewItem,
                                                              r'''$.translated_text''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (functions
                                                          .convertJsonToString(
                                                              getJsonField(
                                                        messagesNewItem,
                                                        r'''$.type''',
                                                      )) ==
                                                      MessageType.image.name)
                                                    Container(
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.65,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await Navigator
                                                                .push(
                                                              context,
                                                              PageTransition(
                                                                type:
                                                                    PageTransitionType
                                                                        .fade,
                                                                child:
                                                                    FlutterFlowExpandedImageView(
                                                                  image: Image
                                                                      .network(
                                                                    getJsonField(
                                                                      messagesNewItem,
                                                                      r'''$.media_url''',
                                                                    ).toString(),
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                  allowRotation:
                                                                      true,
                                                                  tag:
                                                                      getJsonField(
                                                                    messagesNewItem,
                                                                    r'''$.media_url''',
                                                                  ).toString(),
                                                                  useHeroAnimation:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: getJsonField(
                                                              messagesNewItem,
                                                              r'''$.media_url''',
                                                            ).toString(),
                                                            transitionOnUserGestures:
                                                                true,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                getJsonField(
                                                                  messagesNewItem,
                                                                  r'''$.media_url''',
                                                                ).toString(),
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (functions
                                                          .convertJsonToString(
                                                              getJsonField(
                                                        messagesNewItem,
                                                        r'''$.type''',
                                                      )) ==
                                                      MessageType.video.name)
                                                    Container(
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.65,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child:
                                                            FlutterFlowVideoPlayer(
                                                          path: getJsonField(
                                                            messagesNewItem,
                                                            r'''$.media_url''',
                                                          ).toString(),
                                                          videoType:
                                                              VideoType.network,
                                                          autoPlay: false,
                                                          looping: true,
                                                          showControls: true,
                                                          allowFullScreen: true,
                                                          allowPlaybackSpeedMenu:
                                                              false,
                                                        ),
                                                      ),
                                                    ),
                                                  if (functions
                                                          .convertJsonToString(
                                                              getJsonField(
                                                        messagesNewItem,
                                                        r'''$.type''',
                                                      )) ==
                                                      MessageType.audio.name)
                                                    Container(
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.65,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowAudioPlayer(
                                                        audio: Audio.network(
                                                          getJsonField(
                                                            messagesNewItem,
                                                            r'''$.media_url''',
                                                          ).toString(),
                                                          metas: Metas(),
                                                        ),
                                                        titleTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                        playbackDurationTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        playbackButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        elevation: 0.0,
                                                        playInBackground:
                                                            PlayInBackground
                                                                .disabledRestoreOnForeground,
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        dateTimeFormat(
                                                          "yMMMd",
                                                          DateTime.fromMillisecondsSinceEpoch(
                                                              functions
                                                                  .isoToEpochMsDefault(
                                                                      getJsonField(
                                                            messagesNewItem,
                                                            r'''$.created_at''',
                                                          ).toString())),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Text(
                                                        dateTimeFormat(
                                                          "Hm",
                                                          DateTime.fromMillisecondsSinceEpoch(
                                                              functions
                                                                  .isoToEpochMsDefault(
                                                                      getJsonField(
                                                            messagesNewItem,
                                                            r'''$.created_at''',
                                                          ).toString())),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          controller: _model
                                              .listViewNewReceivedScrollController,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ]
                        .addToStart(SizedBox(height: 89.0))
                        .addToEnd(SizedBox(height: 382.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  constraints: BoxConstraints(
                    maxHeight: 382.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    controller: _model.columnController1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (_model.videoUrl != null && _model.videoUrl != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SingleChildScrollView(
                                  controller: _model.columnController2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 250.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Stack(
                                          children: [
                                            FlutterFlowVideoPlayer(
                                              path: _model.videoUrl!,
                                              videoType: VideoType.network,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              autoPlay: false,
                                              looping: true,
                                              showControls: true,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: FlutterFlowIconButton(
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                icon: Icon(
                                                  Icons.delete_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  _model.videoUrl = null;
                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    if (_model.uploadedFileUrl_uploadDataVideo !=
                                            '') {
                                      _model.apiResultSendMesVideo =
                                          await RPCChatsGroup.chSendMessageCall
                                              .call(
                                        chatID: widget.chatID,
                                        currentJwtToken: currentJwtToken,
                                        contentJson: <String, String?>{
                                          'bucket': 'chat-media',
                                        },
                                        type: MessageType.video.name,
                                        mediaURL: _model
                                            .uploadedFileUrl_uploadDataVideo,
                                        path: functions.extractStoragePath(_model
                                            .uploadedFileUrl_uploadDataVideo),
                                      );

                                      if (FFAppState()
                                          .lastRealtimeMessageListJson
                                          .isNotEmpty) {
                                        _model.mergeMessageListsAscOut4 =
                                            await actions.mergeMessageListsAsc(
                                          FFAppState()
                                              .chatMessagesLiveJson
                                              .toList(),
                                          FFAppState()
                                              .lastRealtimeMessageListJson
                                              .toList(),
                                        );
                                        FFAppState().chatMessagesLiveJson =
                                            _model.mergeMessageListsAscOut4!
                                                .toList()
                                                .cast<dynamic>();
                                        safeSetState(() {});
                                        _model.offset = _model.offset +
                                            FFAppState()
                                                .lastRealtimeMessageListJson
                                                .length;
                                        safeSetState(() {});
                                      }
                                      _model.offset = _model.offset + 1;
                                      _model.videoUrl = null;
                                      safeSetState(() {});
                                      FFAppState().lastRealtimeMessageListJson =
                                          [];
                                      FFAppState().addToChatMessagesLiveJson(
                                          (_model.apiResultSendMesVideo
                                                  ?.jsonBody ??
                                              ''));
                                      safeSetState(() {});
                                      _model.chatReadOutputV =
                                          await RPCChatsGroup.chMarkChatReadCall
                                              .call(
                                        chatID: widget.chatID,
                                        currentJwtToken: currentJwtToken,
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                        if (_model.photoUrl != null && _model.photoUrl != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SingleChildScrollView(
                                  controller: _model.columnController3,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 250.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl:
                                                              _model.photoUrl!,
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: true,
                                                        tag: _model.photoUrl!,
                                                        useHeroAnimation: true,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Hero(
                                                  tag: _model.photoUrl!,
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          _model.photoUrl!,
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: FlutterFlowIconButton(
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                icon: Icon(
                                                  Icons.delete_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  _model.photoUrl = null;
                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    if (_model.uploadedFileUrl_uploadDataPhoto !=
                                            '') {
                                      _model.apiResultSendMesPhoto =
                                          await RPCChatsGroup.chSendMessageCall
                                              .call(
                                        chatID: widget.chatID,
                                        currentJwtToken: currentJwtToken,
                                        contentJson: <String, String?>{
                                          'bucket': 'chat-media',
                                        },
                                        mediaURL: _model
                                            .uploadedFileUrl_uploadDataPhoto,
                                        type: MessageType.image.name,
                                        path: functions.extractStoragePath(_model
                                            .uploadedFileUrl_uploadDataPhoto),
                                      );

                                      if (FFAppState()
                                          .lastRealtimeMessageListJson
                                          .isNotEmpty) {
                                        _model.mergeMessageListsAscOut3 =
                                            await actions.mergeMessageListsAsc(
                                          FFAppState()
                                              .chatMessagesLiveJson
                                              .toList(),
                                          FFAppState()
                                              .lastRealtimeMessageListJson
                                              .toList(),
                                        );
                                        FFAppState().chatMessagesLiveJson =
                                            _model.mergeMessageListsAscOut3!
                                                .toList()
                                                .cast<dynamic>();
                                        safeSetState(() {});
                                        _model.offset = _model.offset +
                                            FFAppState()
                                                .lastRealtimeMessageListJson
                                                .length;
                                        safeSetState(() {});
                                      }
                                      _model.offset = _model.offset + 1;
                                      _model.photoUrl = null;
                                      safeSetState(() {});
                                      FFAppState().lastRealtimeMessageListJson =
                                          [];
                                      FFAppState().addToChatMessagesLiveJson(
                                          (_model.apiResultSendMesPhoto
                                                  ?.jsonBody ??
                                              ''));
                                      safeSetState(() {});
                                      _model.chatReadOutputP =
                                          await RPCChatsGroup.chMarkChatReadCall
                                              .call(
                                        chatID: widget.chatID,
                                        currentJwtToken: currentJwtToken,
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                        if (_model.audioUrl != null && _model.audioUrl != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      _model.audioUrl = null;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 250.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio.network(
                                      _model.audioUrl!,
                                      metas: Metas(),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).primary,
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 0.0,
                                    playInBackground: PlayInBackground
                                        .disabledRestoreOnForeground,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    _model.filePath =
                                        'chats/${widget.chatID?.toString()}/audio';
                                    safeSetState(() {});
                                    {
                                      safeSetState(() => _model
                                              .isDataUploading_uploadDataAudio =
                                          true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];
                                      var selectedMedia = <SelectedFile>[];
                                      var downloadUrls = <String>[];
                                      try {
                                        showUploadMessage(
                                          context,
                                          FFLocalizations.of(context).getText(
                                            'li80hpsn' /* Загрузка файла… */,
                                          ),
                                          showLoading: true,
                                        );
                                        selectedUploadedFiles = _model
                                                .recordedFileBytes
                                                .bytes!
                                                .isNotEmpty
                                            ? [_model.recordedFileBytes]
                                            : <FFUploadedFile>[];
                                        selectedMedia =
                                            selectedFilesFromUploadedFiles(
                                          selectedUploadedFiles,
                                          storageFolderPath: _model.filePath,
                                        );
                                        downloadUrls =
                                            await uploadSupabaseStorageFiles(
                                          bucketName: 'chat-media',
                                          selectedFiles: selectedMedia,
                                        );
                                      } finally {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        _model.isDataUploading_uploadDataAudio =
                                            false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        safeSetState(() {
                                          _model.uploadedLocalFile_uploadDataAudio =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl_uploadDataAudio =
                                              downloadUrls.first;
                                        });
                                        showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              '3xghbynm' /* Успех! */,
                                            ));
                                      } else {
                                        safeSetState(() {});
                                        showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              'yevi5vx8' /* Не удалось загрузить данные */,
                                            ));
                                        return;
                                      }
                                    }

                                    if (_model.uploadedFileUrl_uploadDataAudio !=
                                            '') {
                                      _model.apiResultSendMesAudio =
                                          await RPCChatsGroup.chSendMessageCall
                                              .call(
                                        chatID: widget.chatID,
                                        currentJwtToken: currentJwtToken,
                                        contentJson: <String, String?>{
                                          'bucket': 'chat-media',
                                        },
                                        mediaURL: _model
                                            .uploadedFileUrl_uploadDataAudio,
                                        path: functions.extractStoragePath(_model
                                            .uploadedFileUrl_uploadDataAudio),
                                        type: MessageType.audio.name,
                                      );

                                      if (FFAppState()
                                          .lastRealtimeMessageListJson
                                          .isNotEmpty) {
                                        _model.mergeMessageListsAscOut5 =
                                            await actions.mergeMessageListsAsc(
                                          FFAppState()
                                              .chatMessagesLiveJson
                                              .toList(),
                                          FFAppState()
                                              .lastRealtimeMessageListJson
                                              .toList(),
                                        );
                                        FFAppState().chatMessagesLiveJson =
                                            _model.mergeMessageListsAscOut5!
                                                .toList()
                                                .cast<dynamic>();
                                        safeSetState(() {});
                                        _model.offset = _model.offset +
                                            FFAppState()
                                                .lastRealtimeMessageListJson
                                                .length;
                                        safeSetState(() {});
                                      }
                                      _model.offset = _model.offset + 1;
                                      _model.audioUrl = null;
                                      safeSetState(() {});
                                      FFAppState().lastRealtimeMessageListJson =
                                          [];
                                      FFAppState().addToChatMessagesLiveJson(
                                          (_model.apiResultSendMesAudio
                                                  ?.jsonBody ??
                                              ''));
                                      safeSetState(() {});
                                      _model.chatReadOutputA =
                                          await RPCChatsGroup.chMarkChatReadCall
                                              .call(
                                        chatID: widget.chatID,
                                        currentJwtToken: currentJwtToken,
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                        if ((_model.photoUrl == null ||
                                _model.photoUrl == '') &&
                            (_model.videoUrl == null ||
                                _model.videoUrl == '') &&
                            (_model.audioUrl == null || _model.audioUrl == ''))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (_model
                                        .textFieldMessageTextController.text ==
                                    '')
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.play_lesson_rounded,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      _model.filePath =
                                          'chats/${widget.chatID?.toString()}/videos';
                                      safeSetState(() {});
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        storageFolderPath: _model.filePath,
                                        allowPhoto: false,
                                        allowVideo: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textColor: FlutterFlowTheme.of(context)
                                            .accent2,
                                        pickerFontFamily: 'PT Sans',
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() => _model
                                                .isDataUploading_uploadDataVideo =
                                            true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                    originalFilename:
                                                        m.originalFilename,
                                                  ))
                                              .toList();

                                          downloadUrls =
                                              await uploadSupabaseStorageFiles(
                                            bucketName: 'chat-media',
                                            selectedFiles: selectedMedia,
                                          );
                                        } finally {
                                          _model.isDataUploading_uploadDataVideo =
                                              false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile_uploadDataVideo =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl_uploadDataVideo =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }

                                      _model.videoUrl = _model
                                          .uploadedFileUrl_uploadDataVideo;
                                      safeSetState(() {});
                                    },
                                  ),
                                if (_model
                                        .textFieldMessageTextController.text ==
                                    '')
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.add_a_photo,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      _model.filePath =
                                          'chats/${widget.chatID?.toString()}/images';
                                      safeSetState(() {});
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        storageFolderPath: _model.filePath,
                                        allowPhoto: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textColor: FlutterFlowTheme.of(context)
                                            .accent2,
                                        pickerFontFamily: 'PT Sans',
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() => _model
                                                .isDataUploading_uploadDataPhoto =
                                            true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                    originalFilename:
                                                        m.originalFilename,
                                                  ))
                                              .toList();

                                          downloadUrls =
                                              await uploadSupabaseStorageFiles(
                                            bucketName: 'chat-media',
                                            selectedFiles: selectedMedia,
                                          );
                                        } finally {
                                          _model.isDataUploading_uploadDataPhoto =
                                              false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile_uploadDataPhoto =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl_uploadDataPhoto =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }

                                      _model.photoUrl = _model
                                          .uploadedFileUrl_uploadDataPhoto;
                                      safeSetState(() {});
                                    },
                                  ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    controller: _model.columnController4,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldMessageTextController,
                                            focusNode: _model
                                                .textFieldMessageFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldMessageTextController',
                                              Duration(milliseconds: 2000),
                                              () => safeSetState(() {}),
                                            ),
                                            autofocus: false,
                                            enabled: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '1rm80e2v' /* Введите текст */,
                                              ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent4,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                            maxLines: null,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            enableInteractiveSelection: true,
                                            validator: _model
                                                .textFieldMessageTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (_model
                                        .textFieldMessageTextController.text ==
                                    '')
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onLongPress: () async {
                                      if (!_model.isRecording) {
                                        _model.isRecording = true;
                                        safeSetState(() {});
                                        await startAudioRecording(
                                          context,
                                          audioRecorder:
                                              _model.audioRecorder ??=
                                                  AudioRecorder(),
                                        );

                                        if (animationsMap[
                                                'iconButtonOnActionTriggerAnimation'] !=
                                            null) {
                                          await animationsMap[
                                                  'iconButtonOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }
                                    },
                                    child: FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 40.0,
                                      fillColor: _model.isRecording
                                          ? FlutterFlowTheme.of(context).accent1
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      icon: Icon(
                                        Icons.keyboard_voice,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        if (_model.isRecording) {
                                          await stopAudioRecording(
                                            audioRecorder: _model.audioRecorder,
                                            audioName: 'recordedFileBytes',
                                            onRecordingComplete:
                                                (audioFilePath, audioBytes) {
                                              _model.audioRecordOutput =
                                                  audioFilePath;
                                              _model.recordedFileBytes =
                                                  audioBytes;
                                            },
                                          );

                                          if (animationsMap[
                                                  'iconButtonOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'iconButtonOnActionTriggerAnimation']!
                                                .controller
                                                .stop();
                                          }
                                          _model.audioUrl =
                                              _model.audioRecordOutput;
                                          safeSetState(() {});
                                          _model.isRecording = false;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'iconButtonOnActionTriggerAnimation']!,
                                  ),
                                if (_model
                                        .textFieldMessageTextController.text !=
                                    '')
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      if (_model.textFieldMessageTextController
                                                  .text !=
                                              '') {
                                        _model.apiResultSendMesText =
                                            await RPCChatsGroup
                                                .chSendMessageCall
                                                .call(
                                          chatID: widget.chatID,
                                          currentJwtToken: currentJwtToken,
                                          contentJson: <String, String?>{},
                                          type: MessageType.text.name,
                                          text: _model
                                              .textFieldMessageTextController
                                              .text,
                                        );

                                        if (FFAppState()
                                            .lastRealtimeMessageListJson
                                            .isNotEmpty) {
                                          _model.mergeMessageListsAscOut2 =
                                              await actions
                                                  .mergeMessageListsAsc(
                                            FFAppState()
                                                .chatMessagesLiveJson
                                                .toList(),
                                            FFAppState()
                                                .lastRealtimeMessageListJson
                                                .toList(),
                                          );
                                          FFAppState().chatMessagesLiveJson =
                                              _model.mergeMessageListsAscOut2!
                                                  .toList()
                                                  .cast<dynamic>();
                                          safeSetState(() {});
                                          _model.offset = _model.offset +
                                              FFAppState()
                                                  .lastRealtimeMessageListJson
                                                  .length;
                                          safeSetState(() {});
                                        }
                                        _model.offset = _model.offset + 1;
                                        safeSetState(() {});
                                        FFAppState()
                                            .lastRealtimeMessageListJson = [];
                                        FFAppState().addToChatMessagesLiveJson(
                                            (_model.apiResultSendMesText
                                                    ?.jsonBody ??
                                                ''));
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.textFieldMessageTextController
                                              ?.clear();
                                        });
                                        _model.chatReadOutputT =
                                            await RPCChatsGroup
                                                .chMarkChatReadCall
                                                .call(
                                          chatID: widget.chatID,
                                          currentJwtToken: currentJwtToken,
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.cBackComponentsModel,
                updateCallback: () => safeSetState(() {}),
                child: CBackComponentsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
