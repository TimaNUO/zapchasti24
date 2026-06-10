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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import '/custom_code/chat_realtime_bus.dart';

Future subscribeToChatMessages(int chatId) async {
  final supabase = Supabase.instance.client;

  if (chatChannel != null) {
    await supabase.removeChannel(chatChannel!);
    chatChannel = null;
  }

  void upsertMessageToAppState(Map<String, dynamic> data) {
    final dynamic msgId = data['id'];

    FFAppState().update(() {
      final list = List<dynamic>.from(FFAppState().chatMessagesLiveJson);

      final index = list.indexWhere((item) {
        if (item is Map<String, dynamic>) return item['id'] == msgId;
        if (item is Map) return item['id'] == msgId;
        return false;
      });

      if (index >= 0) {
        list[index] = data;
      } else {
        list.add(data);
      }

      FFAppState().chatMessagesLiveJson = list;
    });
  }

  void removeMessageFromAppState(dynamic msgId) {
    FFAppState().update(() {
      final list = List<dynamic>.from(FFAppState().chatMessagesLiveJson);

      list.removeWhere((item) {
        if (item is Map<String, dynamic>) return item['id'] == msgId;
        if (item is Map) return item['id'] == msgId;
        return false;
      });

      FFAppState().chatMessagesLiveJson = list;
    });
  }

  chatChannel = supabase.channel('chat_messages_$chatId')
    ..onPostgresChanges(
      event: PostgresChangeEvent.insert,
      schema: 'public',
      table: 'messages',
      filter: PostgresChangeFilter(
        type: PostgresChangeFilterType.eq,
        column: 'chat_id',
        value: chatId,
      ),
      callback: (payload) {
        final data = Map<String, dynamic>.from(payload.newRecord);

        final dynamic senderRaw = data['sender_id'];
        final int? senderId = senderRaw is int
            ? senderRaw
            : int.tryParse(senderRaw?.toString() ?? '');

        if (senderId == null) return;

        // свои INSERT можно не добавлять, если ты их уже локально добавляешь вручную
        if (senderId == FFAppState().userIdApp) return;

        upsertMessageToAppState(data);
      },
    )
    ..onPostgresChanges(
      event: PostgresChangeEvent.update,
      schema: 'public',
      table: 'messages',
      filter: PostgresChangeFilter(
        type: PostgresChangeFilterType.eq,
        column: 'chat_id',
        value: chatId,
      ),
      callback: (payload) {
        final data = Map<String, dynamic>.from(payload.newRecord);
        final dynamic msgId = data['id'];
        final bool isRemoved = data['is_removed'] == true;

        if (msgId == null) return;

        if (isRemoved) {
          removeMessageFromAppState(msgId);
        } else {
          upsertMessageToAppState(data);
        }
      },
    )
    ..subscribe();
}
