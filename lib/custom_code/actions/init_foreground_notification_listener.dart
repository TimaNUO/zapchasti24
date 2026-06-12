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

import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';

bool _foregroundNotificationListenerInitialized = false;

int _toIntSafe(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  return int.tryParse(value.toString()) ?? 0;
}

String _toStr(dynamic value) {
  if (value == null) return '';
  return value.toString();
}

void _savePayloadToAppState(Map<String, dynamic> data) {
  final String typeNotification = _toStr(data['type_notification']);
  final int cardId = _toIntSafe(data['card_id']);

  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = true;
    FFAppState().pendingNotificationType = typeNotification;
    FFAppState().pendingRequestId = cardId;

    switch (typeNotification) {
      case 'new_request_by_filter':
      case 'request_detail':
        FFAppState().pendingRoute = 'request_detail';
        break;
      case 'buyer_request_confirm_actuality':
        FFAppState().pendingRoute = 'buyer_request_actuality';
        break;
      case 'buyer_request_auto_removed':
        FFAppState().pendingRoute = 'buyer_requests_history';
        break;
      case 'ad_detail':
        FFAppState().pendingRoute = 'ad_detail';
        break;
      case 'seller_profile':
        FFAppState().pendingRoute = 'seller_profile';
        break;
      case 'buyer_profile':
        FFAppState().pendingRoute = 'buyer_profile';
        break;
      default:
        FFAppState().pendingRoute = '';
        break;
    }
  });
}

String _getTitle(RemoteMessage message) {
  final t = message.notification?.title?.trim();
  if (t != null && t.isNotEmpty) return t;
  final d = message.data['title']?.toString().trim();
  if (d != null && d.isNotEmpty) return d;
  return 'Новое уведомление';
}

String _getBody(RemoteMessage message) {
  final b = message.notification?.body?.trim();
  if (b != null && b.isNotEmpty) return b;
  final d = message.data['body']?.toString().trim();
  if (d != null && d.isNotEmpty) return d;
  return 'Нажмите, чтобы открыть';
}

// Глобальный менеджер стопки уведомлений
final _NotifStackManager _stackManager = _NotifStackManager();

class _NotifStackManager {
  final List<_NotifEntry> _entries = [];
  final ValueNotifier<List<_NotifEntry>> _notifier = ValueNotifier([]);
  OverlayEntry? _overlayEntry;
  BuildContext? _context;
  int? _currentTopId;

  void init(BuildContext context) {
    _context = context;
  }

  void add({
    required String title,
    required String body,
    required VoidCallback onOpen,
  }) {
    if (_context == null || !(_context!.mounted)) return;

    final entry = _NotifEntry(
      id: DateTime.now().microsecondsSinceEpoch,
      title: title,
      body: body,
      onOpen: onOpen,
    );

    // Останавливаем таймер текущей верхней — она уходит вниз
    if (_entries.isNotEmpty) {
      _entries[0].autoRemoveTimer?.cancel();
      _entries[0].autoRemoveTimer = null;
    }

    _entries.insert(0, entry);
    _notify();

    // Если overlay ещё не создан — создаём один раз
    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (_) => ValueListenableBuilder<List<_NotifEntry>>(
          valueListenable: _notifier,
          builder: (ctx, entries, _) {
            if (entries.isEmpty) return const SizedBox.shrink();
            return _NotifStackWidget(
              entries: entries,
              onRemove: (id) => _removeById(id),
              onOpen: (id) {
                final e = _entries.firstWhere(
                  (e) => e.id == id,
                  orElse: () => _entries.first,
                );
                e.onOpen();
                _removeById(id);
              },
            );
          },
        ),
      );
      Overlay.of(_context!).insert(_overlayEntry!);
    }

    _startTopTimer();
  }

  void _notify() {
    _notifier.value = List.from(_entries);
  }

  void _startTopTimer() {
    if (_entries.isEmpty) return;
    final top = _entries[0];
    if (_currentTopId == top.id) return;
    _currentTopId = top.id;

    top.autoRemoveTimer?.cancel();
    top.autoRemoveTimer = Timer(const Duration(seconds: 5), () {
      if (_entries.length <= 1) {
        _removeById(top.id);
      } else {
        _sinkTop();
      }
    });
  }

  // По таймеру — верхняя уходит в конец стопки
  void _sinkTop() {
    if (_entries.isEmpty) return;
    final top = _entries.removeAt(0);
    top.autoRemoveTimer?.cancel();
    top.autoRemoveTimer = null;
    _currentTopId = null;

    _entries.add(top);
    _notify();

    _startTopTimer();
  }

  // По крестику или кнопке Открыть — полное удаление
  void _removeById(int id) {
    final wasTop = _entries.isNotEmpty && _entries[0].id == id;
    final idx = _entries.indexWhere((e) => e.id == id);
    if (idx == -1) return;
    _entries[idx].autoRemoveTimer?.cancel();
    _entries.removeAt(idx);
    _currentTopId = null;

    if (_entries.isEmpty) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      _notifier.value = [];
    } else {
      _notify();
      if (wasTop) _startTopTimer();
    }
  }

  void clear() {
    for (final e in _entries) {
      e.autoRemoveTimer?.cancel();
    }
    _entries.clear();
    _notifier.value = [];
    _overlayEntry?.remove();
    _overlayEntry = null;
    _currentTopId = null;
  }
}

class _NotifEntry {
  final int id;
  final String title;
  final String body;
  final VoidCallback onOpen;
  Timer? autoRemoveTimer;

  _NotifEntry({
    required this.id,
    required this.title,
    required this.body,
    required this.onOpen,
  });
}

// Виджет всей стопки
class _NotifStackWidget extends StatefulWidget {
  final List<_NotifEntry> entries;
  final void Function(int id) onRemove;
  final void Function(int id) onOpen;

  const _NotifStackWidget({
    required this.entries,
    required this.onRemove,
    required this.onOpen,
  });

  @override
  State<_NotifStackWidget> createState() => _NotifStackWidgetState();
}

class _NotifStackWidgetState extends State<_NotifStackWidget> {
  bool _expanded = false;

  // Для drag-жеста
  double _dragStartY = 0;

  static const double _cardHeight = 72.0;
  static const double _collapsedOffset = 10.0;
  static const double _scaleStep = 0.04;

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;
    final count = widget.entries.length;

    final stackHeight = _expanded
        ? count * _cardHeight + 16
        : (_collapsedOffset * (count - 1).clamp(0, 3)) + _cardHeight + 16;

    return Positioned(
      top: topPad + 8,
      left: 12,
      right: 12,
      child: GestureDetector(
        onVerticalDragStart: (d) => _dragStartY = d.globalPosition.dy,
        onVerticalDragUpdate: (d) {
          final dy = d.globalPosition.dy - _dragStartY;
          if (dy > 12 && !_expanded) setState(() => _expanded = true);
          if (dy < -12 && _expanded) setState(() => _expanded = false);
        },
        child: SizedBox(
          height: stackHeight,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Рисуем с конца чтобы верхнее было поверх
              for (int i = widget.entries.length - 1; i >= 0; i--)
                _buildCard(i),
              // Бейдж количества
              if (count > 1)
                Positioned(
                  top: -6,
                  right: -6,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8302A),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Text(
                      '$count',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(int index) {
    final entry = widget.entries[index];
    final depth = _expanded ? index : index.clamp(0, 3);
    final scale = 1.0 - depth * _scaleStep;
    final yOffset = _expanded ? index * _cardHeight : depth * _collapsedOffset;
    final opacity = index >= 4 ? 0.0 : 1.0 - depth * 0.18;
    final isTop = index == 0;

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOut,
      top: yOffset,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 280),
        opacity: opacity,
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 320),
          alignment: Alignment.topCenter,
          child: _NotifCard(
            entry: entry,
            isTop: isTop,
            expanded: isTop, // только верхняя раскрывается по тапу
            onDismiss: () => widget.onRemove(entry.id),
            onOpen: () => widget.onOpen(entry.id),
          ),
        ),
      ),
    );
  }
}

// Одна карточка уведомления
class _NotifCard extends StatefulWidget {
  final _NotifEntry entry;
  final bool isTop;
  final bool expanded;
  final VoidCallback onDismiss;
  final VoidCallback onOpen;

  const _NotifCard({
    required this.entry,
    required this.isTop,
    required this.expanded,
    required this.onDismiss,
    required this.onOpen,
  });

  @override
  State<_NotifCard> createState() => _NotifCardState();
}

class _NotifCardState extends State<_NotifCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideCtrl;
  late Animation<Offset> _slideAnim;
  bool _bodyOpen = false;

  @override
  void initState() {
    super.initState();
    _slideCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 380),
    );
    _slideAnim = Tween<Offset>(
      begin: const Offset(0, -1.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideCtrl,
      curve: Curves.easeOut,
    ));
    _slideCtrl.forward();
  }

  @override
  void dispose() {
    _slideCtrl.dispose();
    super.dispose();
  }

  void _toggleBody() {
    if (!widget.isTop) return;
    setState(() => _bodyOpen = !_bodyOpen);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnim,
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: _toggleBody,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black.withOpacity(0.08),
                width: 0.5,
              ),
              boxShadow: widget.isTop
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        blurRadius: 14,
                        offset: const Offset(0, 3),
                      ),
                    ]
                  : [],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Шапка
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 12, 10, 12),
                  child: Row(
                    children: [
                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F0FE),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: Color(0xFF1A73E8),
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          widget.entry.title,
                          style: const TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (widget.isTop) ...[
                        const SizedBox(width: 6),
                        AnimatedRotation(
                          turns: _bodyOpen ? 0.5 : 0,
                          duration: const Duration(milliseconds: 280),
                          child: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF999999),
                            size: 20,
                          ),
                        ),
                      ],
                      const SizedBox(width: 2),
                      GestureDetector(
                        onTap: widget.onDismiss,
                        behavior: HitTestBehavior.opaque,
                        child: const Padding(
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.close_rounded,
                            color: Color(0xFFBBBBBB),
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Тело — гармошка
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  crossFadeState: _bodyOpen
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  firstChild: const SizedBox(width: double.infinity, height: 0),
                  secondChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Divider(
                        height: 1,
                        thickness: 0.5,
                        color: Color(0xFFEEEEEE),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 10, 13, 4),
                        child: Text(
                          widget.entry.body,
                          style: const TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 12,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 8, 13, 13),
                        child: GestureDetector(
                          onTap: widget.onOpen,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1A73E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Открыть',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
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
    );
  }
}

Future initForegroundNotificationListener(BuildContext context) async {
  if (_foregroundNotificationListenerInitialized) return;
  _foregroundNotificationListenerInitialized = true;

  _stackManager.init(context);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (!context.mounted) return;

    final Map<String, dynamic> data = Map<String, dynamic>.from(message.data);
    final String typeNotification = _toStr(data['type_notification']);
    final int cardId = _toIntSafe(data['card_id']);

    if (typeNotification.isEmpty) return;

    if (typeNotification != 'buyer_request_auto_removed' &&
        typeNotification != 'buyer_profile' &&
        typeNotification != 'seller_profile' &&
        cardId <= 0) {
      return;
    }

    final String title = _getTitle(message);
    final String body = _getBody(message);

    _stackManager.add(
      title: title,
      body: body,
      onOpen: () {
        if (!context.mounted) return;
        _savePayloadToAppState(data);
        processPendingNotificationNavigation(context);
      },
    );
  });
}
