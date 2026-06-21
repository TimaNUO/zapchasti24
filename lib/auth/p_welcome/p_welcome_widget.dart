import '/auth/base_auth_user_provider.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'p_welcome_model.dart';
export 'p_welcome_model.dart';

class PWelcomeWidget extends StatefulWidget {
  const PWelcomeWidget({super.key});

  static String routeName = 'pWelcome';
  static String routePath = '/pWelcome';

  @override
  State<PWelcomeWidget> createState() => _PWelcomeWidgetState();
}

class _PWelcomeWidgetState extends State<PWelcomeWidget> {
  late PWelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PWelcomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.buildNumber = await actions.getInstalledBuildNumber();
      FFAppState().buildNumber = _model.buildNumber!;
      _model.installid = await actions.getOrCreateInstallId();
      unawaited(
        () async {
          await actions.initLast10Days();
        }(),
      );
      _model.userRow = await DataUsersTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          FFAppState().userIdApp,
        ),
      );
      while (!(_model.userRow != null && (_model.userRow)!.isNotEmpty) &&
          (_model.iterWaitID <= 100)) {
        _model.iterWaitID = _model.iterWaitID + 1;
        await Future.delayed(
          Duration(
            milliseconds: 100,
          ),
        );
      }
      if (_model.userRow != null && (_model.userRow)!.isNotEmpty) {
        while (_model.roleID == null) {
          _model.roleID = _model.userRow?.firstOrNull?.roleId;
          safeSetState(() {});
          await Future.delayed(
            Duration(
              milliseconds: 200,
            ),
          );
        }
        if (_model.roleID != null) {
          if (_model.roleID == 1) {
            while (
                (_model.isLicensing == null) && (_model.isBlocking == null)) {
              _model.dataUserRow1 =
                  await SupabaseInfoGroup.getRowDataUserCall.call(
                userID: FFAppState().userIdApp,
              );

              _model.iter = _model.iter + 1;
              _model.isLicensing = getJsonField(
                (_model.dataUserRow1?.jsonBody ?? ''),
                r'''$[:].is_licensed''',
              );
              _model.isBlocking = getJsonField(
                (_model.dataUserRow1?.jsonBody ?? ''),
                r'''$[:].is_blocked''',
              );
              safeSetState(() {});
              await Future.delayed(
                Duration(
                  milliseconds: 100,
                ),
              );
            }
            if (_model.isLicensing!) {
              if (_model.isBlocking!) {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('В блоке'),
                      content: Text('Ваша учетная запись заблокирована!'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );

                context.goNamed(PStartReqWidget.routeName);
              } else {
                while (!loggedIn) {
                  await Future.delayed(
                    Duration(
                      milliseconds: 100,
                    ),
                  );
                }
                unawaited(
                  () async {
                    await actions.initAppLanguage(
                      context,
                    );
                  }(),
                );
                _model.comboB = await RPCUsersDeviceAboutGroup
                    .upsertDeviceAndStartSessionCall
                    .call(
                  userID: FFAppState().userIdApp,
                  fcmToken: FFAppState().fcmToken,
                  installid: _model.installid,
                  build: FFAppState().buildNumber,
                  platform: () {
                    if (isAndroid) {
                      return 'Android';
                    } else if (isiOS) {
                      return 'iOS';
                    } else if (isWeb) {
                      return 'Web';
                    } else {
                      return 'Unknow';
                    }
                  }(),
                );

                context.goNamed(PMainBuyerWidget.routeName);
              }
            } else {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Лицензия'),
                    content: Text(
                        'Для продолжения работы примите лицензионное соглашение! '),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Продолжить'),
                      ),
                    ],
                  );
                },
              );

              context.goNamed(PContractBuyerWidget.routeName);
            }
          } else {
            if (_model.roleID == 2) {
              while (
                  (_model.isLicensing == null) && (_model.isBlocking == null)) {
                _model.dataUserRow2 =
                    await SupabaseInfoGroup.getRowDataUserCall.call(
                  userID: FFAppState().userIdApp,
                );

                _model.iter = _model.iter + 1;
                _model.isLicensing = getJsonField(
                  (_model.dataUserRow2?.jsonBody ?? ''),
                  r'''$[:].is_licensed''',
                );
                _model.isBlocking = getJsonField(
                  (_model.dataUserRow2?.jsonBody ?? ''),
                  r'''$[:].is_blocked''',
                );
                safeSetState(() {});
                await Future.delayed(
                  Duration(
                    milliseconds: 100,
                  ),
                );
              }
              if (_model.isLicensing!) {
                if (_model.isBlocking!) {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('В блоке'),
                        content: Text('Ваша учетная запись заблокирована!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );

                  context.pushNamed(PStartReqWidget.routeName);
                } else {
                  while (!loggedIn) {
                    await Future.delayed(
                      Duration(
                        milliseconds: 100,
                      ),
                    );
                  }
                  unawaited(
                    () async {
                      await actions.initAppLanguage(
                        context,
                      );
                    }(),
                  );
                  _model.comboS = await RPCUsersDeviceAboutGroup
                      .upsertDeviceAndStartSessionCall
                      .call(
                    userID: FFAppState().userIdApp,
                    fcmToken: FFAppState().fcmToken,
                    installid: _model.installid,
                    build: FFAppState().buildNumber,
                    platform: () {
                      if (isAndroid) {
                        return 'Android';
                      } else if (isiOS) {
                        return 'iOS';
                      } else if (isWeb) {
                        return 'Web';
                      } else {
                        return 'Unknow';
                      }
                    }(),
                  );

                  context.goNamed(PMainSellerWidget.routeName);
                }
              } else {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Лицензия'),
                      content: Text(
                          'Для продолжения работы примите лицензионное соглашение! '),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Продолжить'),
                        ),
                      ],
                    );
                  },
                );

                context.pushNamed(PContractSellerWidget.routeName);
              }
            } else {
              if (_model.roleID == 777) {
                while (!loggedIn) {
                  await Future.delayed(
                    Duration(
                      milliseconds: 100,
                    ),
                  );
                }

                context.pushNamed(PRequestsAdminWidget.routeName);
              } else {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text(
                          'Непредвиденная ошибка! (Роль не соответствует)'),
                      content: Text(
                          'Пожалуйста, зарегистрируйтесь повторно или обратитесь в службу поддержки'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );

                context.goNamed(PLogInWidget.routeName);
              }
            }
          }
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: Text('Непредвиденная ошибка! (Отсутствует роль)'),
                content: Text(
                    'Пожалуйста, зарегистрируйтесь повторно или обратитесь в службу поддержки'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );

          context.goNamed(PLogInWidget.routeName);
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ошибка!'),
              content: Text(
                  'Пожалуйста, выполните вход повторно, проверьте интернет-соединение или очистите данные и кэш на устройстве'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );

        context.goNamed(PLogInWidget.routeName);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent2,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/Zapchasti24_transparent.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
