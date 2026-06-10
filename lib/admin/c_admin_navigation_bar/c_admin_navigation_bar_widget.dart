import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c_admin_navigation_bar_model.dart';
export 'c_admin_navigation_bar_model.dart';

class CAdminNavigationBarWidget extends StatefulWidget {
  const CAdminNavigationBarWidget({
    super.key,
    int? selectedAdminPageIndex,
    bool? hidden,
  })  : this.selectedAdminPageIndex = selectedAdminPageIndex ?? 1,
        this.hidden = hidden ?? false;

  final int selectedAdminPageIndex;
  final bool hidden;

  @override
  State<CAdminNavigationBarWidget> createState() =>
      _CAdminNavigationBarWidgetState();
}

class _CAdminNavigationBarWidgetState extends State<CAdminNavigationBarWidget>
    with TickerProviderStateMixin {
  late CAdminNavigationBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CAdminNavigationBarModel());

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
                        PAccountAdminWidget.routeName,
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
                            opacity:
                                widget.selectedAdminPageIndex == 1 ? 1.0 : 0.5,
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
                            if (widget.selectedAdminPageIndex == 1) {
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
                        if (widget.selectedAdminPageIndex == 1)
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
                            'sjqr0a5z' /* Кабинет */,
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
                                    color: widget.selectedAdminPageIndex == 1
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
                      context.pushNamed(
                        PRequestsAdminWidget.routeName,
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
                            opacity:
                                widget.selectedAdminPageIndex == 2 ? 1.0 : 0.5,
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
                            if (widget.selectedAdminPageIndex == 2) {
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
                        if (widget.selectedAdminPageIndex == 2)
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
                            '94njtya1' /* Заявки */,
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
                                    color: widget.selectedAdminPageIndex == 2
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
                      context.pushNamed(
                        POffersAdminWidget.routeName,
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
                            opacity:
                                widget.selectedAdminPageIndex == 3 ? 1.0 : 0.5,
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
                            if (widget.selectedAdminPageIndex == 3) {
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
                        if (widget.selectedAdminPageIndex == 3)
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
                            '519euxla' /* Отклики */,
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
                                    color: widget.selectedAdminPageIndex == 3
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
                        PFeedbacksAdminWidget.routeName,
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
                            opacity:
                                widget.selectedAdminPageIndex == 4 ? 1.0 : 0.5,
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
                            if (widget.selectedAdminPageIndex == 4) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/feedbacks_red_.svg',
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
                                    'assets/images/feedbacks_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        if (widget.selectedAdminPageIndex == 4)
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
                            'olhdmpqj' /* Оценки */,
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
                                    color: widget.selectedAdminPageIndex == 4
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
