import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'c_photo_viewer_model.dart';
export 'c_photo_viewer_model.dart';

class CPhotoViewerWidget extends StatefulWidget {
  const CPhotoViewerWidget({
    super.key,
    this.photoList,
    int? photoIndex,
    this.photoCount,
  }) : this.photoIndex = photoIndex ?? 0;

  final List<String>? photoList;
  final int photoIndex;
  final int? photoCount;

  @override
  State<CPhotoViewerWidget> createState() => _CPhotoViewerWidgetState();
}

class _CPhotoViewerWidgetState extends State<CPhotoViewerWidget>
    with TickerProviderStateMixin {
  late CPhotoViewerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CPhotoViewerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.photoID = widget.photoIndex;
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
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: SafeArea(
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Stack(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: FlutterFlowExpandedImageView(
                        image: Image.network(
                          (widget.photoList!.elementAtOrNull(_model.photoID))!,
                          fit: BoxFit.contain,
                        ),
                        allowRotation: true,
                        tag: (widget.photoList!
                            .elementAtOrNull(_model.photoID))!,
                        useHeroAnimation: true,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: (widget.photoList!.elementAtOrNull(_model.photoID))!,
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      (widget.photoList!.elementAtOrNull(_model.photoID))!,
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: SvgPicture.asset(
                            'assets/images/Close.svg',
                            width: 36.0,
                            height: 36.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (widget.photoCount! > (_model.photoID + 1))
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (widget.photoCount! > (_model.photoID + 1)) {
                          _model.photoID = _model.photoID + 1;
                          safeSetState(() {});
                          safeSetState(() {});
                        }
                      },
                      child: Container(
                        width: 72.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent2,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: FlutterFlowTheme.of(context).accent4,
                          size: 72.0,
                        ),
                      ),
                    ),
                  ),
                ),
              if (_model.photoID > 0)
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (_model.photoID > 0) {
                          _model.photoID = _model.photoID + -1;
                          safeSetState(() {});
                          safeSetState(() {});
                        }
                      },
                      child: Container(
                        width: 72.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent2,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.chevron_left,
                          color: FlutterFlowTheme.of(context).accent4,
                          size: 72.0,
                        ),
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: 72.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent2,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (_model.photoID + 1).toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '7n0qi3le' /*  /  */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.photoCount?.toString(),
                            '1',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
