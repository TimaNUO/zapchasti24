import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_seller_specializations_model.dart';
export 'c_seller_specializations_model.dart';

class CSellerSpecializationsWidget extends StatefulWidget {
  const CSellerSpecializationsWidget({
    super.key,
    this.selectedSpecIds,
  });

  final List<int>? selectedSpecIds;

  @override
  State<CSellerSpecializationsWidget> createState() =>
      _CSellerSpecializationsWidgetState();
}

class _CSellerSpecializationsWidgetState
    extends State<CSellerSpecializationsWidget> with TickerProviderStateMixin {
  late CSellerSpecializationsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CSellerSpecializationsModel());

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
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 133.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FutureBuilder<List<SpecializationsRow>>(
                          future: SpecializationsTable().queryRows(
                            queryFn: (q) => q
                                .eqOrNull(
                                  'is_active',
                                  true,
                                )
                                .order('sort', ascending: true),
                          ),
                          builder: (context, snapshot) {
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
                            List<SpecializationsRow>
                                listViewSpecializationsRowList = snapshot.data!;

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewSpecializationsRowList.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewSpecializationsRow =
                                    listViewSpecializationsRowList[
                                        listViewIndex];
                                return Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent2,
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
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      width: 0.2,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 4.0, 12.0, 4.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: CachedNetworkImage(
                                                  fadeInDuration:
                                                      Duration(milliseconds: 0),
                                                  fadeOutDuration:
                                                      Duration(milliseconds: 0),
                                                  imageUrl:
                                                      listViewSpecializationsRow
                                                          .iconUrl!,
                                                  width: 80.0,
                                                  height: 64.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                listViewSpecializationsRow.name,
                                                'Specialization',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxSpecValueMap[
                                                listViewSpecializationsRow] ??= widget
                                                            .selectedSpecIds !=
                                                        null &&
                                                    (widget.selectedSpecIds)!
                                                        .isNotEmpty
                                                ? widget.selectedSpecIds!
                                                    .contains(
                                                        listViewSpecializationsRow
                                                            .id)
                                                : false,
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                          .checkboxSpecValueMap[
                                                      listViewSpecializationsRow] =
                                                  newValue!);
                                              if (newValue!) {
                                                _model.addToSelectedSpecIds(
                                                    listViewSpecializationsRow
                                                        .id!);
                                                safeSetState(() {});
                                                _model.apiResulte1k2 =
                                                    await RPCSellerSpecializationsGroup
                                                        .saveSellerSpecializationOneCall
                                                        .call(
                                                  sellerID:
                                                      FFAppState().userIdApp,
                                                  specID:
                                                      listViewSpecializationsRow
                                                          .id,
                                                  isActive: _model
                                                      .selectedSpecIds
                                                      .contains(
                                                          listViewSpecializationsRow
                                                              .id),
                                                );

                                                safeSetState(() {});
                                              } else {
                                                _model.removeFromSelectedSpecIds(
                                                    listViewSpecializationsRow
                                                        .id!);
                                                safeSetState(() {});
                                                _model.apiResulte1k =
                                                    await RPCSellerSpecializationsGroup
                                                        .saveSellerSpecializationOneCall
                                                        .call(
                                                  sellerID:
                                                      FFAppState().userIdApp,
                                                  specID:
                                                      listViewSpecializationsRow
                                                          .id,
                                                  isActive: _model
                                                      .selectedSpecIds
                                                      .contains(
                                                          listViewSpecializationsRow
                                                              .id),
                                                );

                                                safeSetState(() {});
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .accent1 !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ].addToEnd(SizedBox(height: 4.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 97.0, 4.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '5vf4ixbn' /* Категории */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
