import '/backend/supabase/supabase.dart';
import '/components/c_back_components/c_back_components_widget.dart';
import '/components/c_details_check_box_list_tile_false/c_details_check_box_list_tile_false_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_details_check_box_list_tile_true_model.dart';
export 'c_details_check_box_list_tile_true_model.dart';

class CDetailsCheckBoxListTileTrueWidget extends StatefulWidget {
  const CDetailsCheckBoxListTileTrueWidget({super.key});

  @override
  State<CDetailsCheckBoxListTileTrueWidget> createState() =>
      _CDetailsCheckBoxListTileTrueWidgetState();
}

class _CDetailsCheckBoxListTileTrueWidgetState
    extends State<CDetailsCheckBoxListTileTrueWidget> {
  late CDetailsCheckBoxListTileTrueModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CDetailsCheckBoxListTileTrueModel());

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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 8.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'r69r4uwd' /* Список категорий автозапчастей */,
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent4,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).accent3,
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileAllValue ??= true,
                          onChanged: (newValue) async {
                            safeSetState(() =>
                                _model.checkboxListTileAllValue = newValue!);

                            if (!newValue!) {
                              FFAppState().categoriesIDListApp = [];
                              FFAppState().isAllCategories = false;
                              safeSetState(() {});
                              Navigator.pop(context);
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child:
                                        CDetailsCheckBoxListTileFalseWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'l2sl0h9o' /* Выбрать все */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent4,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).accent2,
                          activeColor: FlutterFlowTheme.of(context).accent1,
                          checkColor: FlutterFlowTheme.of(context).accent2,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 8.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    FutureBuilder<List<PartsCategoryRow>>(
                      future: PartsCategoryTable().queryRows(
                        queryFn: (q) => q.order('category', ascending: true),
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
                        List<PartsCategoryRow> listViewPartsCategoryRowList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewPartsCategoryRowList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewPartsCategoryRow =
                                listViewPartsCategoryRowList[listViewIndex];
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  width: 0.2,
                                ),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).accent3,
                                  ),
                                  child: CheckboxListTile(
                                    value: _model.checkboxListTileOneValueMap[
                                            listViewPartsCategoryRow] ??=
                                        FFAppState()
                                            .categoriesIDListApp
                                            .contains(
                                                listViewPartsCategoryRow.id),
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxListTileOneValueMap[
                                                  listViewPartsCategoryRow] =
                                              newValue!);
                                      if (newValue!) {
                                        FFAppState().addToCategoriesIDListApp(
                                            listViewPartsCategoryRow.id);
                                        safeSetState(() {});
                                      } else {
                                        FFAppState()
                                            .removeFromCategoriesIDListApp(
                                                listViewPartsCategoryRow.id);
                                        safeSetState(() {});
                                      }
                                    },
                                    title: Text(
                                      listViewPartsCategoryRow.category,
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                    tileColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    activeColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    checkColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ]
                      .addToStart(SizedBox(height: 89.0))
                      .addToEnd(SizedBox(height: 50.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent2,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        FFAppState().newFilterCategories = FFAppState()
                            .categoriesIDListApp
                            .toList()
                            .cast<int>();
                        Navigator.pop(context);
                        await Future.delayed(
                          Duration(
                            milliseconds: 250,
                          ),
                        );
                        _model.updatePage(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'cx7go7n7' /* Подтвердить */,
                      ),
                      options: FFButtonOptions(
                        width: 150.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).accent1,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent2,
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
