import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/buyer/c_about_seller_card_spec/c_about_seller_card_spec_widget.dart';
import '/buyer/c_empty_buyer_offer/c_empty_buyer_offer_widget.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c_buyer_specialization_detail_model.dart';
export 'c_buyer_specialization_detail_model.dart';

class CBuyerSpecializationDetailWidget extends StatefulWidget {
  const CBuyerSpecializationDetailWidget({
    super.key,
    required this.specID,
  });

  final int? specID;

  @override
  State<CBuyerSpecializationDetailWidget> createState() =>
      _CBuyerSpecializationDetailWidgetState();
}

class _CBuyerSpecializationDetailWidgetState
    extends State<CBuyerSpecializationDetailWidget>
    with TickerProviderStateMixin {
  late CBuyerSpecializationDetailModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CBuyerSpecializationDetailModel());

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
                              0.0, 5.0, 0.0, 32.0),
                          child: Material(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent2,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: FutureBuilder<
                                            List<SpecializationsRow>>(
                                          future: SpecializationsTable()
                                              .querySingleRow(
                                            queryFn: (q) => q.eqOrNull(
                                              'id',
                                              widget.specID,
                                            ),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 32.0,
                                                  height: 32.0,
                                                  child: SpinKitRipple(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    size: 32.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<SpecializationsRow>
                                                imageSpecializationsRowList =
                                                snapshot.data!;

                                            final imageSpecializationsRow =
                                                imageSpecializationsRowList
                                                        .isNotEmpty
                                                    ? imageSpecializationsRowList
                                                        .first
                                                    : null;

                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                imageSpecializationsRow!
                                                    .iconUrl!,
                                                width: 80.0,
                                                height: 64.0,
                                                fit: BoxFit.contain,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child:
                                        FutureBuilder<List<SpecializationsRow>>(
                                      future:
                                          SpecializationsTable().querySingleRow(
                                        queryFn: (q) => q.eqOrNull(
                                          'id',
                                          widget.specID,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 32.0,
                                              height: 32.0,
                                              child: SpinKitRipple(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                size: 32.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<SpecializationsRow>
                                            textSpecializationsRowList =
                                            snapshot.data!;

                                        final textSpecializationsRow =
                                            textSpecializationsRowList
                                                    .isNotEmpty
                                                ? textSpecializationsRowList
                                                    .first
                                                : null;

                                        return Text(
                                          valueOrDefault<String>(
                                            textSpecializationsRow?.name,
                                            'specialization',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(width: 32.0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'lrgiw7po' /* Список продавцов */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
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
                                          width: 32.0,
                                          height: 32.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            size: 32.0,
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
                                        _model.selectedCountryId =
                                            _model.dropDownCountryValue;
                                        _model.selectedCityId = null;
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.dropDownCityValueController
                                              ?.reset();
                                          _model.dropDownCityValue = null;
                                        });
                                        safeSetState(() {
                                          _model.dropDownCityValueController
                                              ?.value = null;
                                          _model.dropDownCityValue = null;
                                        });
                                        safeSetState(() {});
                                      },
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
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
                                        '474802fz' /* Выберите страну продавца */,
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
                                  _model.selectedCityId = null;
                                  _model.selectedCountryId = null;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.dropDownCityValueController?.reset();
                                    _model.dropDownCityValue = null;
                                    _model.dropDownCountryValueController
                                        ?.reset();
                                    _model.dropDownCountryValue = null;
                                  });
                                  safeSetState(() {
                                    _model.dropDownCountryValueController
                                        ?.value = null;
                                    _model.dropDownCountryValue = null;
                                  });
                                  safeSetState(() {
                                    _model.dropDownCityValueController?.value =
                                        null;
                                    _model.dropDownCityValue = null;
                                  });
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
                        if (_model.selectedCountryId != null)
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
                                          width: 32.0,
                                          height: 32.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            size: 32.0,
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
                                        _model.selectedCityId =
                                            _model.dropDownCityValue;
                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
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
                                        'heqvn9fk' /* Выберите город продавца */,
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
                                  _model.selectedCityId = null;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.dropDownCityValueController?.reset();
                                    _model.dropDownCityValue = null;
                                  });
                                  safeSetState(() {
                                    _model.dropDownCityValueController?.value =
                                        null;
                                    _model.dropDownCityValue = null;
                                  });
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: RPCSellerSpecializationsGroup
                                .getSellersBySpecializationCall
                                .call(
                              specID: widget.specID,
                              selectedCountryId: _model.selectedCountryId,
                              selectedCityId: _model.selectedCityId,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 32.0,
                                    height: 32.0,
                                    child: SpinKitRipple(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      size: 32.0,
                                    ),
                                  ),
                                );
                              }
                              final listViewApprovedNewGetSellersBySpecializationResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final sellersSpecBody =
                                      listViewApprovedNewGetSellersBySpecializationResponse
                                          .jsonBody
                                          .toList();
                                  if (sellersSpecBody.isEmpty) {
                                    return CEmptyBuyerOfferWidget();
                                  }

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: sellersSpecBody.length,
                                    itemBuilder:
                                        (context, sellersSpecBodyIndex) {
                                      final sellersSpecBodyItem =
                                          sellersSpecBody[sellersSpecBodyIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      CAboutSellerCardSpecWidget(
                                                    phone: getJsonField(
                                                      sellersSpecBodyItem,
                                                      r'''$.phone''',
                                                    ).toString(),
                                                    sellerID: getJsonField(
                                                      sellersSpecBodyItem,
                                                      r'''$.seller_id''',
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 36.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent4,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 72.0,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Text(
                                                            getJsonField(
                                                              sellersSpecBodyItem,
                                                              r'''$.rating''',
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
                                                                      .accent2,
                                                                  fontSize:
                                                                      14.0,
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/star_.svg',
                                                              width: 32.0,
                                                              height: 32.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    2.0),
                                                            child: FutureBuilder<
                                                                List<
                                                                    CountriesRow>>(
                                                              future: CountriesTable()
                                                                  .querySingleRow(
                                                                queryFn: (q) =>
                                                                    q.eqOrNull(
                                                                  'id',
                                                                  getJsonField(
                                                                    sellersSpecBodyItem,
                                                                    r'''$.country_id''',
                                                                  ),
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          32.0,
                                                                      height:
                                                                          32.0,
                                                                      child:
                                                                          SpinKitRipple(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent1,
                                                                        size:
                                                                            32.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<CountriesRow>
                                                                    imageCountriesRowList =
                                                                    snapshot
                                                                        .data!;

                                                                final imageCountriesRow =
                                                                    imageCountriesRowList
                                                                            .isNotEmpty
                                                                        ? imageCountriesRowList
                                                                            .first
                                                                        : null;

                                                                return ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    fadeOutDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    imageUrl:
                                                                        imageCountriesRow!
                                                                            .flagUrl!,
                                                                    width: 50.0,
                                                                    height:
                                                                        36.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child:
                                                                SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (getJsonField(
                                                                        sellersSpecBodyItem,
                                                                        r'''$.city_id''',
                                                                      ) !=
                                                                      null)
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(2.0),
                                                                        child: FutureBuilder<
                                                                            List<CitiesRow>>(
                                                                          future:
                                                                              CitiesTable().querySingleRow(
                                                                            queryFn: (q) =>
                                                                                q.eqOrNull(
                                                                              'id',
                                                                              getJsonField(
                                                                                sellersSpecBodyItem,
                                                                                r'''$.city_id''',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 32.0,
                                                                                  height: 32.0,
                                                                                  child: SpinKitRipple(
                                                                                    color: FlutterFlowTheme.of(context).accent1,
                                                                                    size: 32.0,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<CitiesRow>
                                                                                textCitiesRowList =
                                                                                snapshot.data!;

                                                                            final textCitiesRow = textCitiesRowList.isNotEmpty
                                                                                ? textCitiesRowList.first
                                                                                : null;

                                                                            return Text(
                                                                              valueOrDefault<String>(
                                                                                textCitiesRow?.city,
                                                                                'city',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.openSans(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).accent4,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 108.0,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/e3t2j_.svg',
                                                              width: 30.0,
                                                              height: 30.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Text(
                                                            getJsonField(
                                                              sellersSpecBodyItem,
                                                              r'''$.seller_id''',
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
                                                                      .accent2,
                                                                  fontSize:
                                                                      14.0,
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
                                                      ]
                                                          .addToStart(SizedBox(
                                                              width: 2.0))
                                                          .addToEnd(SizedBox(
                                                              width: 2.0)),
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
                              );
                            },
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 89.0))
                          .addToEnd(SizedBox(height: 4.0)),
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
