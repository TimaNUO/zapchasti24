import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_seller_navigation_bar_model.dart';
export 'c_seller_navigation_bar_model.dart';

class CSellerNavigationBarWidget extends StatefulWidget {
  const CSellerNavigationBarWidget({
    super.key,
    int? selectedSellerPageIndex,
    bool? hidden,
  })  : this.selectedSellerPageIndex = selectedSellerPageIndex ?? 1,
        this.hidden = hidden ?? false;

  final int selectedSellerPageIndex;
  final bool hidden;

  @override
  State<CSellerNavigationBarWidget> createState() =>
      _CSellerNavigationBarWidgetState();
}

class _CSellerNavigationBarWidgetState extends State<CSellerNavigationBarWidget>
    with TickerProviderStateMixin {
  late CSellerNavigationBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CSellerNavigationBarModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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

    return Visibility(
      visible: widget.hidden == false,
      child: Align(
        alignment: AlignmentDirectional(0.0, 1.0),
        child: SafeArea(
          child: Container(
            height: 70.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent3,
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        PMainSellerWidget.routeName,
                        extra: <String, dynamic>{
                          '__transition_info__': TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (false)
                          Opacity(
                            opacity: widget.selectedSellerPageIndex == 1
                                ? 1.0
                                : 0.5,
                            child: FlutterFlowIconButton(
                              borderRadius: 32.0,
                              borderWidth: 0.0,
                              buttonSize: 48.0,
                              icon: Icon(
                                Icons.manage_accounts_rounded,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        Builder(
                          builder: (context) {
                            if (widget.selectedSellerPageIndex == 1) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/main_red_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 6.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/main_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        if (widget.selectedSellerPageIndex == 1)
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              height: 2.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).accent1,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['dividerOnPageLoadAnimation1']!),
                        Text(
                          FFLocalizations.of(context).getText(
                            'm4gh3zlk' /* Главная */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: widget.selectedSellerPageIndex == 1
                                        ? FlutterFlowTheme.of(context).accent1
                                        : FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        PFiltersSellerWidget.routeName,
                        extra: <String, dynamic>{
                          '__transition_info__': TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (false)
                          Opacity(
                            opacity: widget.selectedSellerPageIndex == 2
                                ? 1.0
                                : 0.5,
                            child: FlutterFlowIconButton(
                              borderRadius: 32.0,
                              borderWidth: 0.0,
                              buttonSize: 48.0,
                              icon: Icon(
                                Icons.local_offer,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        Builder(
                          builder: (context) {
                            if (widget.selectedSellerPageIndex == 2) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/requests_red_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 6.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/requests_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        if (widget.selectedSellerPageIndex == 2)
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              height: 2.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).accent1,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['dividerOnPageLoadAnimation2']!),
                        Text(
                          FFLocalizations.of(context).getText(
                            'buv0enu2' /* Заявки */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: widget.selectedSellerPageIndex == 2
                                        ? FlutterFlowTheme.of(context).accent1
                                        : FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        PHistorySellerWidget.routeName,
                        extra: <String, dynamic>{
                          '__transition_info__': TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (false)
                          Opacity(
                            opacity: widget.selectedSellerPageIndex == 3
                                ? 1.0
                                : 0.5,
                            child: FlutterFlowIconButton(
                              borderRadius: 32.0,
                              borderWidth: 0.0,
                              buttonSize: 48.0,
                              icon: Icon(
                                Icons.request_page_rounded,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        Builder(
                          builder: (context) {
                            if (widget.selectedSellerPageIndex == 3) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/offers_red_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 6.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/offers_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        if (widget.selectedSellerPageIndex == 3)
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              height: 2.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).accent1,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['dividerOnPageLoadAnimation3']!),
                        Text(
                          FFLocalizations.of(context).getText(
                            'bufeeat8' /* История */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: widget.selectedSellerPageIndex == 3
                                        ? FlutterFlowTheme.of(context).accent1
                                        : FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.apiResultSpecList =
                          await SellerSpecializationsTable().queryRows(
                        queryFn: (q) => q
                            .eqOrNull(
                              'seller_id',
                              FFAppState().userIdApp,
                            )
                            .eqOrNull(
                              'is_active',
                              true,
                            ),
                      );

                      context.goNamed(
                        PAccountSellerWidget.routeName,
                        queryParameters: {
                          'selectedSpecIds': serializeParam(
                            _model.apiResultSpecList
                                ?.map((e) => e.specializationId)
                                .toList(),
                            ParamType.int,
                            isList: true,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          '__transition_info__': TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );

                      safeSetState(() {});
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (false)
                          Opacity(
                            opacity: widget.selectedSellerPageIndex == 4
                                ? 1.0
                                : 0.5,
                            child: FlutterFlowIconButton(
                              borderRadius: 32.0,
                              borderWidth: 0.0,
                              buttonSize: 48.0,
                              icon: Icon(
                                Icons.source,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        Builder(
                          builder: (context) {
                            if (widget.selectedSellerPageIndex == 4) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/account_red_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 6.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/account_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        if (widget.selectedSellerPageIndex == 4)
                          SizedBox(
                            width: 40.0,
                            child: Divider(
                              height: 2.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).accent1,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['dividerOnPageLoadAnimation4']!),
                        Text(
                          FFLocalizations.of(context).getText(
                            '7tdapsf6' /* Кабинет */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: widget.selectedSellerPageIndex == 4
                                        ? FlutterFlowTheme.of(context).accent1
                                        : FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
