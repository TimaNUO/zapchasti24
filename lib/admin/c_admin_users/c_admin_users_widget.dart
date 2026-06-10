import '/admin/c_admin_navigation_bar/c_admin_navigation_bar_widget.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_admin_users_model.dart';
export 'c_admin_users_model.dart';

class CAdminUsersWidget extends StatefulWidget {
  const CAdminUsersWidget({
    super.key,
    required this.sellerBody,
    required this.buyerBody,
  });

  final dynamic sellerBody;
  final dynamic buyerBody;

  @override
  State<CAdminUsersWidget> createState() => _CAdminUsersWidgetState();
}

class _CAdminUsersWidgetState extends State<CAdminUsersWidget>
    with TickerProviderStateMixin {
  late CAdminUsersModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CAdminUsersModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.filteredSellerList = widget.sellerBody!.toList().cast<dynamic>();
      _model.countSellerSelected = _model.filteredSellerList
          .where((e) =>
              (functions.isoToEpochMs(
                      getJsonField(
                        e,
                        r'''$.created_at''',
                      ).toString(),
                      false) >=
                  FFAppState().dateFromDT!.millisecondsSinceEpoch) &&
              (functions.isoToEpochMs(
                      getJsonField(
                        e,
                        r'''$.created_at''',
                      ).toString(),
                      true) <=
                  FFAppState().dateToDT!.millisecondsSinceEpoch))
          .toList()
          .length;
      _model.filteredBuyerList = widget.buyerBody!.toList().cast<dynamic>();
      _model.countBuyerSelected = _model.filteredBuyerList
          .where((e) =>
              (functions.isoToEpochMs(
                      getJsonField(
                        e,
                        r'''$.created_at''',
                      ).toString(),
                      false) >=
                  FFAppState().dateFromDT!.millisecondsSinceEpoch) &&
              (functions.isoToEpochMs(
                      getJsonField(
                        e,
                        r'''$.created_at''',
                      ).toString(),
                      true) <=
                  FFAppState().dateToDT!.millisecondsSinceEpoch))
          .toList()
          .length;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 70.0),
            end: Offset(0.0, 0.0),
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Material(
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      if (_model.tabIndex == 0) {
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        final _datePicked1Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate:
                                              (FFAppState().dateFromDT ??
                                                  DateTime.now()),
                                          firstDate: (DateTime
                                                  .fromMicrosecondsSinceEpoch(
                                                      1735671600000000) ??
                                              DateTime(1900)),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle: FlutterFlowTheme
                                                      .of(context)
                                                  .headlineLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                  ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24.0,
                                            );
                                          },
                                        );

                                        if (_datePicked1Date != null) {
                                          safeSetState(() {
                                            _model.datePicked1 = DateTime(
                                              _datePicked1Date.year,
                                              _datePicked1Date.month,
                                              _datePicked1Date.day,
                                            );
                                          });
                                        } else if (_model.datePicked1 != null) {
                                          safeSetState(() {
                                            _model.datePicked1 =
                                                FFAppState().dateFromDT;
                                          });
                                        }
                                        FFAppState().dateFrom = dateTimeFormat(
                                          "yMMMd",
                                          _model.datePicked1,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        );
                                        FFAppState().dateFromDT =
                                            _model.datePicked1;
                                        safeSetState(() {});
                                        _model.filteredSellerList = widget
                                            .sellerBody!
                                            .toList()
                                            .cast<dynamic>();
                                        _model.countSellerSelected = _model
                                            .filteredSellerList
                                            .where((e) =>
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        false) >=
                                                    FFAppState()
                                                        .dateFromDT!
                                                        .millisecondsSinceEpoch) &&
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        true) <=
                                                    FFAppState()
                                                        .dateToDT!
                                                        .millisecondsSinceEpoch))
                                            .toList()
                                            .length;
                                        _model.filteredBuyerList = widget
                                            .buyerBody!
                                            .toList()
                                            .cast<dynamic>();
                                        _model.countBuyerSelected = _model
                                            .filteredBuyerList
                                            .where((e) =>
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        false) >=
                                                    FFAppState()
                                                        .dateFromDT!
                                                        .millisecondsSinceEpoch) &&
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        true) <=
                                                    FFAppState()
                                                        .dateToDT!
                                                        .millisecondsSinceEpoch))
                                            .toList()
                                            .length;
                                        safeSetState(() {});
                                      },
                                      text: FFAppState().dateFrom,
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
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
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        final _datePicked2Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: (FFAppState().dateToDT ??
                                              DateTime.now()),
                                          firstDate: (DateTime
                                                  .fromMicrosecondsSinceEpoch(
                                                      1735671600000000) ??
                                              DateTime(1900)),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle: FlutterFlowTheme
                                                      .of(context)
                                                  .headlineLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                  ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24.0,
                                            );
                                          },
                                        );

                                        if (_datePicked2Date != null) {
                                          safeSetState(() {
                                            _model.datePicked2 = DateTime(
                                              _datePicked2Date.year,
                                              _datePicked2Date.month,
                                              _datePicked2Date.day,
                                            );
                                          });
                                        } else if (_model.datePicked2 != null) {
                                          safeSetState(() {
                                            _model.datePicked2 =
                                                FFAppState().dateToDT;
                                          });
                                        }
                                        FFAppState().dateTo = dateTimeFormat(
                                          "yMMMd",
                                          _model.datePicked2,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        );
                                        FFAppState().dateToDT =
                                            _model.datePicked2;
                                        safeSetState(() {});
                                        _model.filteredSellerList = widget
                                            .sellerBody!
                                            .toList()
                                            .cast<dynamic>();
                                        _model.countSellerSelected = _model
                                            .filteredSellerList
                                            .where((e) =>
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        false) >=
                                                    FFAppState()
                                                        .dateFromDT!
                                                        .millisecondsSinceEpoch) &&
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        true) <=
                                                    FFAppState()
                                                        .dateToDT!
                                                        .millisecondsSinceEpoch))
                                            .toList()
                                            .length;
                                        _model.filteredBuyerList = widget
                                            .buyerBody!
                                            .toList()
                                            .cast<dynamic>();
                                        _model.countBuyerSelected = _model
                                            .filteredBuyerList
                                            .where((e) =>
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        false) >=
                                                    FFAppState()
                                                        .dateFromDT!
                                                        .millisecondsSinceEpoch) &&
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        true) <=
                                                    FFAppState()
                                                        .dateToDT!
                                                        .millisecondsSinceEpoch))
                                            .toList()
                                            .length;
                                        safeSetState(() {});
                                      },
                                      text: FFAppState().dateTo,
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
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
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      width: 250.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'tg1rojbi' /* Общее количество: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.openSans(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
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
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                _model.countSellerSelected
                                                    .toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.openSans(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
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
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: Builder(
                                  builder: (context) {
                                    final sellerBody =
                                        widget.sellerBody!.toList();

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: sellerBody.length,
                                      itemBuilder: (context, sellerBodyIndex) {
                                        final sellerBodyItem =
                                            sellerBody[sellerBodyIndex];
                                        return Visibility(
                                          visible: (functions.isoToEpochMs(
                                                      getJsonField(
                                                        sellerBodyItem,
                                                        r'''$.created_at''',
                                                      ).toString(),
                                                      false) >=
                                                  FFAppState()
                                                      .dateFromDT!
                                                      .millisecondsSinceEpoch) &&
                                              (functions.isoToEpochMs(
                                                      getJsonField(
                                                        sellerBodyItem,
                                                        r'''$.created_at''',
                                                      ).toString(),
                                                      true) <=
                                                  FFAppState()
                                                      .dateToDT!
                                                      .millisecondsSinceEpoch),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        32.0,
                                                                        0.0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                    width: 0.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child: Text(
                                                                    'КОД ${getJsonField(
                                                                      sellerBodyItem,
                                                                      r'''$.id''',
                                                                    ).toString()}',
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
                                                                              FlutterFlowTheme.of(context).accent2,
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
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            sellerBodyItem,
                                                            r'''$.phone''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ]
                                .addToStart(SizedBox(height: 133.0))
                                .addToEnd(SizedBox(height: 74.0)),
                          ),
                        );
                      } else {
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        final _datePicked3Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate:
                                              (FFAppState().dateFromDT ??
                                                  DateTime.now()),
                                          firstDate: (DateTime
                                                  .fromMicrosecondsSinceEpoch(
                                                      1735671600000000) ??
                                              DateTime(1900)),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle: FlutterFlowTheme
                                                      .of(context)
                                                  .headlineLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                  ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24.0,
                                            );
                                          },
                                        );

                                        if (_datePicked3Date != null) {
                                          safeSetState(() {
                                            _model.datePicked3 = DateTime(
                                              _datePicked3Date.year,
                                              _datePicked3Date.month,
                                              _datePicked3Date.day,
                                            );
                                          });
                                        } else if (_model.datePicked3 != null) {
                                          safeSetState(() {
                                            _model.datePicked3 =
                                                FFAppState().dateFromDT;
                                          });
                                        }
                                        FFAppState().dateFrom = dateTimeFormat(
                                          "yMMMd",
                                          _model.datePicked3,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        );
                                        FFAppState().dateFromDT =
                                            _model.datePicked3;
                                        safeSetState(() {});
                                        _model.filteredSellerList = widget
                                            .sellerBody!
                                            .toList()
                                            .cast<dynamic>();
                                        _model.countSellerSelected = _model
                                            .filteredSellerList
                                            .where((e) =>
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        false) >=
                                                    FFAppState()
                                                        .dateFromDT!
                                                        .millisecondsSinceEpoch) &&
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        true) <=
                                                    FFAppState()
                                                        .dateToDT!
                                                        .millisecondsSinceEpoch))
                                            .toList()
                                            .length;
                                        _model.filteredBuyerList = widget
                                            .buyerBody!
                                            .toList()
                                            .cast<dynamic>();
                                        _model.countBuyerSelected = _model
                                            .filteredBuyerList
                                            .where((e) =>
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        false) >=
                                                    FFAppState()
                                                        .dateFromDT!
                                                        .millisecondsSinceEpoch) &&
                                                (functions.isoToEpochMs(
                                                        getJsonField(
                                                          e,
                                                          r'''$.created_at''',
                                                        ).toString(),
                                                        true) <=
                                                    FFAppState()
                                                        .dateToDT!
                                                        .millisecondsSinceEpoch))
                                            .toList()
                                            .length;
                                        safeSetState(() {});
                                      },
                                      text: FFAppState().dateFrom,
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
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
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final _datePicked4Date =
                                              await showDatePicker(
                                            context: context,
                                            initialDate:
                                                (FFAppState().dateToDT ??
                                                    DateTime.now()),
                                            firstDate: (DateTime
                                                    .fromMicrosecondsSinceEpoch(
                                                        1735671600000000) ??
                                                DateTime(1900)),
                                            lastDate: DateTime(2050),
                                            builder: (context, child) {
                                              return wrapInMaterialDatePickerTheme(
                                                context,
                                                child!,
                                                headerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                headerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                headerTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .openSans(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .fontStyle,
                                                        ),
                                                pickerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                pickerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                iconSize: 24.0,
                                              );
                                            },
                                          );

                                          if (_datePicked4Date != null) {
                                            safeSetState(() {
                                              _model.datePicked4 = DateTime(
                                                _datePicked4Date.year,
                                                _datePicked4Date.month,
                                                _datePicked4Date.day,
                                              );
                                            });
                                          } else if (_model.datePicked4 !=
                                              null) {
                                            safeSetState(() {
                                              _model.datePicked4 =
                                                  FFAppState().dateToDT;
                                            });
                                          }
                                          FFAppState().dateTo = dateTimeFormat(
                                            "yMMMd",
                                            _model.datePicked4,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          );
                                          FFAppState().dateToDT =
                                              _model.datePicked4;
                                          safeSetState(() {});
                                          _model.filteredSellerList = widget
                                              .sellerBody!
                                              .toList()
                                              .cast<dynamic>();
                                          _model.countSellerSelected = _model
                                              .filteredSellerList
                                              .where((e) =>
                                                  (functions.isoToEpochMs(
                                                          getJsonField(
                                                            e,
                                                            r'''$.created_at''',
                                                          ).toString(),
                                                          false) >=
                                                      FFAppState()
                                                          .dateFromDT!
                                                          .millisecondsSinceEpoch) &&
                                                  (functions.isoToEpochMs(
                                                          getJsonField(
                                                            e,
                                                            r'''$.created_at''',
                                                          ).toString(),
                                                          true) <=
                                                      FFAppState()
                                                          .dateToDT!
                                                          .millisecondsSinceEpoch))
                                              .toList()
                                              .length;
                                          _model.filteredBuyerList = widget
                                              .buyerBody!
                                              .toList()
                                              .cast<dynamic>();
                                          _model.countBuyerSelected = _model
                                              .filteredBuyerList
                                              .where((e) =>
                                                  (functions.isoToEpochMs(
                                                          getJsonField(
                                                            e,
                                                            r'''$.created_at''',
                                                          ).toString(),
                                                          false) >=
                                                      FFAppState()
                                                          .dateFromDT!
                                                          .millisecondsSinceEpoch) &&
                                                  (functions.isoToEpochMs(
                                                          getJsonField(
                                                            e,
                                                            r'''$.created_at''',
                                                          ).toString(),
                                                          true) <=
                                                      FFAppState()
                                                          .dateToDT!
                                                          .millisecondsSinceEpoch))
                                              .toList()
                                              .length;
                                          safeSetState(() {});
                                        },
                                        text: FFAppState().dateTo,
                                        options: FFButtonOptions(
                                          width: 100.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          textStyle: FlutterFlowTheme.of(
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
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
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      width: 250.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          width: 0.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'j3emeone' /* Общее количество: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.openSans(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
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
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Text(
                                                _model.countBuyerSelected
                                                    .toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.openSans(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
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
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: Builder(
                                  builder: (context) {
                                    final buyerBody =
                                        widget.buyerBody!.toList();

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: buyerBody.length,
                                      itemBuilder: (context, buyerBodyIndex) {
                                        final buyerBodyItem =
                                            buyerBody[buyerBodyIndex];
                                        return Visibility(
                                          visible: (functions.isoToEpochMs(
                                                      getJsonField(
                                                        buyerBodyItem,
                                                        r'''$.created_at''',
                                                      ).toString(),
                                                      false) >=
                                                  FFAppState()
                                                      .dateFromDT!
                                                      .millisecondsSinceEpoch) &&
                                              (functions.isoToEpochMs(
                                                      getJsonField(
                                                        buyerBodyItem,
                                                        r'''$.created_at''',
                                                      ).toString(),
                                                      true) <=
                                                  FFAppState()
                                                      .dateToDT!
                                                      .millisecondsSinceEpoch),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        32.0,
                                                                        0.0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                    width: 0.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child: Text(
                                                                    'КОД ${getJsonField(
                                                                      buyerBodyItem,
                                                                      r'''$.id''',
                                                                    ).toString()}',
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
                                                                              FlutterFlowTheme.of(context).accent2,
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
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            buyerBodyItem,
                                                            r'''$.phone''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ]
                                .addToStart(SizedBox(height: 133.0))
                                .addToEnd(SizedBox(height: 74.0)),
                          ),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 89.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.tabIndex = 0;
                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'xqelpba9' /* Продавец */,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.tabIndex == 0
                                    ? FlutterFlowTheme.of(context).accent4
                                    : FlutterFlowTheme.of(context).accent3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: _model.tabIndex == 0
                                          ? FlutterFlowTheme.of(context).accent3
                                          : FlutterFlowTheme.of(context)
                                              .accent4,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.tabIndex = 1;
                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '8uzbvxmb' /* Покупатель */,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.tabIndex == 1
                                    ? FlutterFlowTheme.of(context).accent4
                                    : FlutterFlowTheme.of(context).accent3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: _model.tabIndex == 1
                                          ? FlutterFlowTheme.of(context).accent3
                                          : FlutterFlowTheme.of(context)
                                              .accent4,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.cBackComponentsModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CBackComponentsWidget(),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.cAdminNavigationBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CAdminNavigationBarWidget(
                      selectedAdminPageIndex: 1,
                      hidden: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
