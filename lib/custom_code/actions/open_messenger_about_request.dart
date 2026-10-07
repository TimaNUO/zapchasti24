// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Открывает WhatsApp или Telegram с готовым текстом по заявке покупателя.
// Тексты шаблонов (seller_request / buyer_request / buyer_ad) — в RPC
// get_contact_message, их можно менять без новой сборки приложения.
Future openMessengerAboutRequest(
  int? requestId,
  String? phone,
  String? messenger,
  String? template,
) async {
  var text = 'Здравствуйте! Пишу из приложения Zapchasti24.';
  if (requestId != null) {
    try {
      final result = await SupaFlow.client.rpc(
        'get_contact_message',
        params: {'p_request_id': requestId, 'p_template': template ?? ''},
      );
      if (result is String && result.trim().isNotEmpty) text = result;
    } catch (_) {}
  }
  var digits = (phone ?? '').replaceAll(RegExp(r'[^0-9]'), '');
  if (digits.length == 11 && digits.startsWith('8')) {
    digits = '7${digits.substring(1)}';
  }
  final encoded = Uri.encodeComponent(text);
  final url = messenger == 'telegram'
      ? 'https://t.me/+$digits?text=$encoded'
      : 'https://wa.me/$digits?text=$encoded';
  await launchURL(url);
}
