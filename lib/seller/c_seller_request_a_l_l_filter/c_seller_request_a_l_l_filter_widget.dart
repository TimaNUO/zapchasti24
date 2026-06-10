import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/seller/c_empty_seller_request/c_empty_seller_request_widget.dart';
import '/seller/c_seller_offer_to_request_a_l_l_filter/c_seller_offer_to_request_a_l_l_filter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_seller_request_a_l_l_filter_model.dart';
export 'c_seller_request_a_l_l_filter_model.dart';

class CSellerRequestALLFilterWidget extends StatefulWidget {
  const CSellerRequestALLFilterWidget({super.key});

  @override
  State<CSellerRequestALLFilterWidget> createState() =>
      _CSellerRequestALLFilterWidgetState();
}

class _CSellerRequestALLFilterWidgetState
    extends State<CSellerRequestALLFilterWidget> with TickerProviderStateMixin {
  late CSellerRequestALLFilterModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CSellerRequestALLFilterModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult780b1 = await RPCUsersDeviceAboutGroup
          .allRequestsForSellerFilterPaginCall
          .call(
        userID: FFAppState().userIdApp,
        limit: 50,
        offset: 0,
        cityID: _model.selectedCityID,
        countryID: _model.selectedCountryID,
      );

      _model.apiResult780c1 = await RPCUsersDeviceAboutGroup
          .allRequestsForSellerFilterCountCall
          .call(
        userID: FFAppState().userIdApp,
        cityID: 0,
        countryID: 0,
      );

      _model.requestsList =
          (_model.apiResult780b1?.jsonBody ?? '').toList().cast<dynamic>();
      _model.requestCount = (_model.apiResult780c1?.jsonBody ?? '');
      safeSetState(() {});
      while (!(_model.requestsList.isNotEmpty)) {
        await Future.delayed(
          Duration(
            milliseconds: 100,
          ),
        );
      }
      if (_model.requestCount > _model.offset) {
        _model.isLoadingMore = true;
        safeSetState(() {});
      } else {
        _model.isLoadingMore = false;
        safeSetState(() {});
      }
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: FutureBuilder<List<CountriesRow>>(
                                  future: CountriesTable().queryRows(
                                    queryFn: (q) =>
                                        q.order('country', ascending: true),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<CountriesRow>
                                        dropDownCountryCountriesRowList =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<int>(
                                      controller: _model
                                              .dropDownCountryValueController ??=
                                          FormFieldController<int>(null),
                                      options: List<int>.from(
                                          dropDownCountryCountriesRowList
                                              .map((e) => e.id)
                                              .toList()),
                                      optionLabels:
                                          dropDownCountryCountriesRowList
                                              .map((e) => e.country)
                                              .withoutNulls
                                              .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.dropDownCountryValue = val);
                                        _model.selectedCountryID =
                                            _model.dropDownCountryValue!;
                                        _model.selectedCityID = 0;
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.dropDownCityValueController
                                              ?.reset();
                                          _model.dropDownCityValue = null;
                                        });
                                        _model.apiResult780b3 =
                                            await RPCUsersDeviceAboutGroup
                                                .allRequestsForSellerFilterPaginCall
                                                .call(
                                          userID: FFAppState().userIdApp,
                                          limit: 50,
                                          offset: 0,
                                          cityID: _model.selectedCityID,
                                          countryID: _model.selectedCountryID,
                                        );

                                        _model.apiResult780c3 =
                                            await RPCUsersDeviceAboutGroup
                                                .allRequestsForSellerFilterCountCall
                                                .call(
                                          userID: FFAppState().userIdApp,
                                          cityID: _model.selectedCityID,
                                          countryID: _model.selectedCountryID,
                                        );

                                        _model.requestsList =
                                            (_model.apiResult780b3?.jsonBody ??
                                                    '')
                                                .toList()
                                                .cast<dynamic>();
                                        _model.requestCount =
                                            (_model.apiResult780c3?.jsonBody ??
                                                '');
                                        safeSetState(() {});
                                        _model.isLoadingMore =
                                            _model.requestCount >=
                                                (_model.offset + 50);
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                      height: 40.0,
                                      maxHeight:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'i4xybeov' /* Выберите страну продавца */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        size: 24.0,
                                      ),
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent2,
                                      elevation: 2.0,
                                      borderColor:
                                          FlutterFlowTheme.of(context).accent4,
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedCountryID = 0;
                                  _model.selectedCityID = 0;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.dropDownCountryValueController
                                        ?.reset();
                                    _model.dropDownCountryValue = null;
                                    _model.dropDownCityValueController?.reset();
                                    _model.dropDownCityValue = null;
                                  });
                                  _model.apiResult780b4 =
                                      await RPCUsersDeviceAboutGroup
                                          .allRequestsForSellerFilterPaginCall
                                          .call(
                                    userID: FFAppState().userIdApp,
                                    limit: 50,
                                    offset: 0,
                                    cityID: _model.selectedCityID,
                                    countryID: _model.selectedCountryID,
                                  );

                                  _model.apiResult780c4 =
                                      await RPCUsersDeviceAboutGroup
                                          .allRequestsForSellerFilterCountCall
                                          .call(
                                    userID: FFAppState().userIdApp,
                                    cityID: _model.selectedCityID,
                                    countryID: _model.selectedCountryID,
                                  );

                                  _model.requestsList =
                                      (_model.apiResult780b4?.jsonBody ?? '')
                                          .toList()
                                          .cast<dynamic>();
                                  _model.requestCount =
                                      (_model.apiResult780c4?.jsonBody ?? '');
                                  safeSetState(() {});
                                  _model.isLoadingMore = _model.requestCount >=
                                      (_model.offset + 50);
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent2,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.cleaning_services,
                                    color: FlutterFlowTheme.of(context).accent4,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                        if (_model.selectedCountryID != 0)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: FutureBuilder<List<CitiesRow>>(
                                  future: CitiesTable().queryRows(
                                    queryFn: (q) => q
                                        .eqOrNull(
                                          'country_id',
                                          _model.dropDownCountryValue,
                                        )
                                        .order('city', ascending: true),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<CitiesRow> dropDownCityCitiesRowList =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<int>(
                                      controller:
                                          _model.dropDownCityValueController ??=
                                              FormFieldController<int>(null),
                                      options: List<int>.from(
                                          dropDownCityCitiesRowList
                                              .map((e) => e.id)
                                              .toList()),
                                      optionLabels: dropDownCityCitiesRowList
                                          .map((e) => e.city)
                                          .withoutNulls
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.dropDownCityValue = val);
                                        _model.selectedCityID =
                                            _model.dropDownCityValue!;
                                        safeSetState(() {});
                                        _model.apiResult780b5 =
                                            await RPCUsersDeviceAboutGroup
                                                .allRequestsForSellerFilterPaginCall
                                                .call(
                                          userID: FFAppState().userIdApp,
                                          limit: 50,
                                          offset: 0,
                                          cityID: _model.selectedCityID,
                                          countryID: _model.selectedCountryID,
                                        );

                                        _model.apiResult780c5 =
                                            await RPCUsersDeviceAboutGroup
                                                .allRequestsForSellerFilterCountCall
                                                .call(
                                          userID: FFAppState().userIdApp,
                                          cityID: _model.selectedCityID,
                                          countryID: _model.selectedCountryID,
                                        );

                                        _model.requestsList =
                                            (_model.apiResult780b5?.jsonBody ??
                                                    '')
                                                .toList()
                                                .cast<dynamic>();
                                        _model.requestCount =
                                            (_model.apiResult780c5?.jsonBody ??
                                                '');
                                        safeSetState(() {});
                                        _model.isLoadingMore =
                                            _model.requestCount >=
                                                (_model.offset + 50);
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                      height: 40.0,
                                      maxHeight:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'fbjw4u33' /* Выберите город продавца */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        size: 24.0,
                                      ),
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent2,
                                      elevation: 2.0,
                                      borderColor:
                                          FlutterFlowTheme.of(context).accent4,
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedCityID = 0;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.dropDownCityValueController?.reset();
                                    _model.dropDownCityValue = null;
                                  });
                                  _model.apiResult780b6 =
                                      await RPCUsersDeviceAboutGroup
                                          .allRequestsForSellerFilterPaginCall
                                          .call(
                                    userID: FFAppState().userIdApp,
                                    limit: 50,
                                    offset: 0,
                                    cityID: _model.selectedCityID,
                                    countryID: _model.selectedCountryID,
                                  );

                                  _model.apiResult780c6 =
                                      await RPCUsersDeviceAboutGroup
                                          .allRequestsForSellerFilterCountCall
                                          .call(
                                    userID: FFAppState().userIdApp,
                                    cityID: _model.selectedCityID,
                                    countryID: _model.selectedCountryID,
                                  );

                                  _model.requestsList =
                                      (_model.apiResult780b6?.jsonBody ?? '')
                                          .toList()
                                          .cast<dynamic>();
                                  _model.requestCount =
                                      (_model.apiResult780c6?.jsonBody ?? '');
                                  safeSetState(() {});
                                  _model.isLoadingMore = _model.requestCount >=
                                      (_model.offset + 50);
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent2,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.cleaning_services,
                                    color: FlutterFlowTheme.of(context).accent4,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        Builder(
                          builder: (context) {
                            final sellerRequestALLBody =
                                _model.requestsList.toList();
                            if (sellerRequestALLBody.isEmpty) {
                              return CEmptySellerRequestWidget();
                            }

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: sellerRequestALLBody.length,
                              itemBuilder:
                                  (context, sellerRequestALLBodyIndex) {
                                final sellerRequestALLBodyItem =
                                    sellerRequestALLBody[
                                        sellerRequestALLBodyIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.apiResult7hra = await RPCChatsGroup
                                          .requestAddUniqueViewCall
                                          .call(
                                        sellerID: FFAppState().userIdApp,
                                        reqId: getJsonField(
                                          sellerRequestALLBodyItem,
                                          r'''$.id''',
                                        ),
                                      );

                                      _model.apiResult7hf =
                                          await RPCRequestsFiltersGroup
                                              .setRequestFilterStatusForSellerCall
                                              .call(
                                        sellerID: FFAppState().userIdApp,
                                        reqID: getJsonField(
                                          sellerRequestALLBodyItem,
                                          r'''$.id''',
                                        ),
                                        status: 'viewed',
                                      );

                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                CSellerOfferToRequestALLFilterWidget(
                                              requestBody:
                                                  sellerRequestALLBodyItem,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      safeSetState(() {});
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8.0),
                                                  bottomLeft:
                                                      Radius.circular(8.0),
                                                ),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.25,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent4,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(8.0),
                                                  ),
                                                  border: Border.all(
                                                    width: 0.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 4.0),
                                                  child: Text(
                                                    'КОД ${getJsonField(
                                                      sellerRequestALLBodyItem,
                                                      r'''$.id''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .openSans(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent2,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '${getJsonField(
                                                sellerRequestALLBodyItem,
                                                r'''$.brand''',
                                              ).toString()}',
                                              textAlign: TextAlign.justify,
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                            ),
                                            Text(
                                              '${getJsonField(
                                                sellerRequestALLBodyItem,
                                                r'''$.model''',
                                              ).toString()}',
                                              textAlign: TextAlign.justify,
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                '${getJsonField(
                                                  sellerRequestALLBodyItem,
                                                  r'''$.year''',
                                                ).toString()}г.',
                                                textAlign: TextAlign.justify,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.offset = _model.offset + 50;
                            _model.isLoadingMore =
                                _model.requestCount >= (_model.offset + 50);
                            safeSetState(() {});
                            _model.apiResult780b2 =
                                await RPCUsersDeviceAboutGroup
                                    .allRequestsForSellerFilterPaginCall
                                    .call(
                              userID: FFAppState().userIdApp,
                              limit: 50,
                              offset: _model.offset,
                              cityID: _model.selectedCityID,
                              countryID: _model.selectedCountryID,
                            );

                            _model.requestsListTrans =
                                (_model.apiResult780b2?.jsonBody ?? '')
                                    .toList()
                                    .cast<dynamic>();
                            safeSetState(() {});
                            while (!(_model.requestsListTrans.isNotEmpty)) {
                              await Future.delayed(
                                Duration(
                                  milliseconds: 100,
                                ),
                              );
                            }
                            for (int loop1Index = 0;
                                loop1Index <= _model.offset;
                                loop1Index++) {
                              final currentLoop1Item =
                                  _model.requestsListTrans[loop1Index];
                              if (getJsonField(
                                    _model.requestsList.lastOrNull,
                                    r'''$.id''',
                                  ) !=
                                  getJsonField(
                                    currentLoop1Item,
                                    r'''$.id''',
                                  )) {
                                _model.addToRequestsList(currentLoop1Item);
                              }
                            }

                            safeSetState(() {});
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (_model.isLoadingMore)
                                Icon(
                                  Icons.arrow_downward,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 48.0,
                                ),
                            ],
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 124.0))
                          .addToEnd(SizedBox(height: 4.0)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 89.0, 16.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  't6h9tpfb' /* Заявки всех фильтров */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                          Material(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent4,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  width: 0.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14.0, 8.0, 14.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '47n4vqk6' /* Кол-во */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      _model.requestCount.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                              ),
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
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
