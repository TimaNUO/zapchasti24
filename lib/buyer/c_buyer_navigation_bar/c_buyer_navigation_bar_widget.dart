import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c_buyer_navigation_bar_model.dart';
export 'c_buyer_navigation_bar_model.dart';

class CBuyerNavigationBarWidget extends StatefulWidget {
  const CBuyerNavigationBarWidget({
    super.key,
    int? selectedBuyerPageIndex,
    bool? hidden,
    bool? showButton,
    this.onTapButton,
  })  : this.selectedBuyerPageIndex = selectedBuyerPageIndex ?? 1,
        this.hidden = hidden ?? false,
        this.showButton = showButton ?? false;

  final int selectedBuyerPageIndex;
  final bool hidden;
  final bool showButton;
  final Future Function()? onTapButton;

  @override
  State<CBuyerNavigationBarWidget> createState() =>
      _CBuyerNavigationBarWidgetState();
}

class _CBuyerNavigationBarWidgetState extends State<CBuyerNavigationBarWidget>
    with TickerProviderStateMixin {
  late CBuyerNavigationBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CBuyerNavigationBarModel());

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
                        PMainBuyerWidget.routeName,
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
                                widget.selectedBuyerPageIndex == 1 ? 1.0 : 0.5,
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
                            if (widget.selectedBuyerPageIndex == 1) {
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
                        if (widget.selectedBuyerPageIndex == 1)
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
                            'hc7rl6z1' /* Главная */,
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
                                    color: widget.selectedBuyerPageIndex == 1
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
                        PRequestsBuyerWidget.routeName,
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
                                widget.selectedBuyerPageIndex == 2 ? 1.0 : 0.5,
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
                            if (widget.selectedBuyerPageIndex == 2) {
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
                        if (widget.selectedBuyerPageIndex == 2)
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
                            'ki1bd6j0' /* Заявки */,
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
                                    color: widget.selectedBuyerPageIndex == 2
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(PAddBuyerWidget.routeName);
                      },
                      child: ClipOval(
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).accent3,
                                FlutterFlowTheme.of(context).accent2
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: widget.selectedBuyerPageIndex == 5
                                  ? FlutterFlowTheme.of(context).accent1
                                  : FlutterFlowTheme.of(context).accent4,
                              width: 2.0,
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              if (widget.selectedBuyerPageIndex == 5) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/add_red_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                );
                              } else {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: SvgPicture.asset(
                                    'assets/images/add_.svg',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.contain,
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        PHistoryBuyerWidget.routeName,
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
                                widget.selectedBuyerPageIndex == 3 ? 1.0 : 0.5,
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
                            if (widget.selectedBuyerPageIndex == 3) {
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
                        if (widget.selectedBuyerPageIndex == 3)
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
                            'md7fvyyc' /* История */,
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
                                    color: widget.selectedBuyerPageIndex == 3
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
                        PAccountBuyerWidget.routeName,
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
                                widget.selectedBuyerPageIndex == 4 ? 1.0 : 0.5,
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
                            if (widget.selectedBuyerPageIndex == 4) {
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
                        if (widget.selectedBuyerPageIndex == 4)
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
                            'v2uexs65' /* Кабинет */,
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
                                    color: widget.selectedBuyerPageIndex == 4
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
