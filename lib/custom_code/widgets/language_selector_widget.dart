// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import '/auth/supabase_auth/auth_util.dart';

class LanguageSelectorWidget extends StatefulWidget {
  const LanguageSelectorWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _LanguageSelectorWidgetState createState() => _LanguageSelectorWidgetState();
}

class _LanguageSelectorWidgetState extends State<LanguageSelectorWidget> {
  String? selectedCode; // RU/KZ/EN/...

  @override
  Widget build(BuildContext context) {
    final double w = widget.width == 0 ? 52 : widget.width;
    final double h = widget.height == 0 ? 44 : widget.height;

    return SizedBox(
      width: w,
      height: h,
      child: FutureBuilder<List<LanguagesRow>>(
        future: LanguagesTable().queryRows(
          queryFn: (q) => q.order('id', ascending: true),
        ),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            );
          }

          final langs = snapshot.data!;
          if (langs.isEmpty) return const SizedBox.shrink();

          // --- ВЫБОР ЯЗЫКА ПРИ ПЕРВОМ BUILDE ---
          if (selectedCode == null) {
            final appCode = (FFAppState().langCodeApp).trim();
            final existInList = langs.any((l) => (l.lang ?? '') == appCode);

            if (existInList) {
              selectedCode = appCode;
            } else {
              final ru = langs.firstWhere(
                (l) => l.lang == 'RU',
                orElse: () => langs.first,
              );
              selectedCode = ru.lang ?? 'RU';
            }
          }

          return Container(
            height: h,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent2,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: FlutterFlowTheme.of(context).accent4,
                width: 1,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedCode,
                isExpanded: true,
                icon: const SizedBox.shrink(),
                items: langs.map((lang) {
                  final code = lang.lang ?? 'RU';
                  return DropdownMenuItem<String>(
                    value: code,
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        code,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) async {
                  if (value == null) return;

                  setState(() => selectedCode = value);
                  FFAppState().langCodeApp = value;

                  final row = langs.firstWhere(
                    (l) => l.lang == value,
                    orElse: () => langs.first,
                  );

                  // Берём ff_locale из таблицы languages (без mapLangToFF)
                  final ff =
                      ((row.getField<String>('ff_locale')) ?? 'ru').trim();
                  setAppLanguage(context, ff);

                  final uid = currentUserUid;
                  if (uid.isNotEmpty) {
                    await DataUsersTable().update(
                      data: {'lang_id': row.id},
                      matchingRows: (r) => r.eq('uid', uid),
                    );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
