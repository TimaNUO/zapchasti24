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
import '/auth/supabase_auth/auth_util.dart';

// ─── Логирование в Supabase (таблица public.logs) ─────────────────
// SnackBar-диагностику не видно если пользователь не смотрит на экран
// в нужный момент (особенно для foreground-уведомлений и закрытого
// тестирования). Пишем в таблицу, чтобы смотреть результат после теста.
void _logEvent(String level, String message, [Map<String, dynamic>? ctx]) {
  unawaited(() async {
    try {
      await SupaFlow.client.from('logs').insert({
        'level': level,
        'message': message,
        'context': ctx,
        'uid': currentUserUid,
      });
    } catch (_) {}
  }());
}

/// ─── Точка входа ────────────────────────────────────────────────
/// Вызывается из FlutterFlow на главном экране (onPageLoad).
///
/// Инициализирует слушатель FCM foreground-уведомлений. Показывает стопку
/// карточек сверху экрана. Тап по карточке = навигация. Крестик = закрыть.
/// ────────────────────────────────────────────────────────────────
Future initForegroundNotificationListener(BuildContext context) async {
  _logEvent('debug', 'foreground:onPageLoad',
      {'alreadyInitialized': _foregroundListenerInitialized});

  if (_foregroundListenerInitialized) return;

  try {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: false,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _logEvent('info', 'foreground:onMessage', message.data);

      final data = Map<String, dynamic>.from(message.data);
      final type = _toStr(data['type_notification']);
      final cardId = _toIntSafe(data['card_id']);

      if (type.isEmpty) {
        _logEvent('warn', 'foreground:skippedTypeEmpty', data);
        return;
      }

      if (type != 'buyer_request_auto_removed' &&
          type != 'buyer_profile' &&
          type != 'seller_profile' &&
          cardId <= 0) {
        _logEvent('warn', 'foreground:skippedNoCardId', data);
        return;
      }

      final String displayTitle =
          cardId > 0 ? '${_getTitle(message)} $cardId' : _getTitle(message);

      _StackManager.instance.add(_NotifItem(
        id: DateTime.now().microsecondsSinceEpoch,
        title: displayTitle,
        body: _getBody(message),
        data: data,
      ));
    });

    _foregroundListenerInitialized = true;
    _logEvent('info', 'foreground:listenerRegistered');
  } catch (e) {
    _logEvent('error', 'foreground:initError', {'error': e.toString()});
  }
}

// ─── Вспомогательные функции ─────────────────────────────────────

bool _foregroundListenerInitialized = false;

int _toIntSafe(dynamic v) {
  if (v == null) return 0;
  if (v is int) return v;
  return int.tryParse(v.toString()) ?? 0;
}

String _toStr(dynamic v) => v?.toString() ?? '';

String _getTitle(RemoteMessage m) {
  final t = m.notification?.title?.trim();
  if (t != null && t.isNotEmpty) return t;
  final d = m.data['title']?.toString().trim() ?? '';
  return d.isNotEmpty ? d : 'Новое уведомление';
}

String _getBody(RemoteMessage m) {
  final b = m.notification?.body?.trim();
  if (b != null && b.isNotEmpty) return b;
  final d = m.data['body']?.toString().trim() ?? '';
  return d.isNotEmpty ? d : '';
}

void _savePayload(Map<String, dynamic> data) {
  final type = _toStr(data['type_notification']);
  final cardId = _toIntSafe(data['card_id']);

  FFAppState().update(() {
    FFAppState().isAppOpenedFromPush = true;
    FFAppState().pendingNotificationType = type;
    FFAppState().pendingRequestId = cardId;

    switch (type) {
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
    }
  });
}

// ─── Модель уведомления ──────────────────────────────────────────

class _NotifItem {
  final int id;
  final String title;
  final String body;
  final Map<String, dynamic> data;
  Timer? timer;

  _NotifItem({
    required this.id,
    required this.title,
    required this.body,
    required this.data,
  });
}

// ─── Менеджер стопки — singleton ─────────────────────────────────
// Хранит список уведомлений, управляет таймерами и Overlay.
// add()    — добавить новое (верхнее получает таймер 5 сек)
// remove() — полное удаление (крестик / тап)
// _sink()  — верхняя уходит в конец стопки по таймеру

class _StackManager {
  _StackManager._();
  static final _StackManager instance = _StackManager._();

  final ValueNotifier<List<_NotifItem>> notifier = ValueNotifier([]);
  final List<_NotifItem> _items = [];

  OverlayEntry? _overlay;

  void add(_NotifItem item) {
    if (_items.isNotEmpty) {
      _items[0].timer?.cancel();
      _items[0].timer = null;
    }
    _items.insert(0, item);
    _sync();
    _ensureOverlay();
    _startTimer();
  }

  void _startTimer() {
    if (_items.isEmpty) return;
    final top = _items[0];
    top.timer?.cancel();
    top.timer = Timer(const Duration(seconds: 5), () {
      if (_items.length > 1) {
        _sink();
      } else {
        remove(top.id);
      }
    });
  }

  void _sink() {
    if (_items.isEmpty) return;
    final top = _items.removeAt(0);
    top.timer?.cancel();
    top.timer = null;
    _items.add(top);
    _sync();
    _startTimer();
  }

  void remove(int id) {
    final wasTop = _items.isNotEmpty && _items[0].id == id;
    final idx = _items.indexWhere((e) => e.id == id);
    if (idx == -1) return;
    _items[idx].timer?.cancel();
    _items.removeAt(idx);
    _sync();
    if (_items.isEmpty) {
      _destroyOverlay();
    } else if (wasTop) {
      _startTimer();
    }
  }

  void _sync() {
    notifier.value = List.unmodifiable(_items);
  }

  void _ensureOverlay([int attempt = 0]) {
    // appNavigatorKey.currentState?.overlay даёт OverlayState напрямую из
    // Navigator без lookup вверх по дереву. Предыдущий подход с
    // Overlay.maybeOf(appNavigatorKey.currentContext) всегда возвращал null:
    // currentContext — это контекст самого Navigator, а Overlay создаётся
    // НИЖЕ него, поэтому Overlay-предка у этого контекста нет.
    if (_overlay != null) return;

    final overlayState = appNavigatorKey.currentState?.overlay;
    if (overlayState == null) {
      if (attempt >= 20) {
        _logEvent('error', 'foreground:overlayGaveUp');
        return;
      }
      _logEvent('warn', 'foreground:overlayNotReadyYet');
      Future.delayed(
          const Duration(milliseconds: 300), () => _ensureOverlay(attempt + 1));
      return;
    }

    _overlay = OverlayEntry(builder: (_) => _StackOverlay(manager: this));
    try {
      overlayState.insert(_overlay!);
      _logEvent('info', 'foreground:overlayInserted');
    } catch (e) {
      _logEvent(
          'error', 'foreground:overlayInsertFailed', {'error': e.toString()});
      _overlay = null;
    }
  }

  void _destroyOverlay() {
    _overlay?.remove();
    _overlay = null;
    notifier.value = [];
  }

  void clear() {
    for (final e in _items) {
      e.timer?.cancel();
    }
    _items.clear();
    _destroyOverlay();
  }
}

// ─── Overlay — подписан на ValueNotifier ─────────────────────────
// StatelessWidget, пересоздаётся через ValueListenableBuilder.
// Не хранит состояния — только передаёт список вниз.

class _StackOverlay extends StatelessWidget {
  final _StackManager manager;
  const _StackOverlay({required this.manager});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<_NotifItem>>(
      valueListenable: manager.notifier,
      builder: (_, items, __) {
        if (items.isEmpty) return const SizedBox.shrink();
        return _StackView(
          items: items,
          onRemove: (id) => manager.remove(id),
          onOpen: (id) {
            final idx = manager._items.indexWhere((e) => e.id == id);
            if (idx == -1) return;
            final item = manager._items[idx];
            final data = Map<String, dynamic>.from(item.data);
            _savePayload(data);
            manager.remove(id);
            if (context.mounted) {
              processPendingNotificationNavigation(context);
            }
          },
        );
      },
    );
  }
}

// ─── Виджет стопки — drag + анимация ────────────────────────────
// _expanded: потяни вниз — все карточки разворачиваются.
// Каждая карточка позиционируется через AnimatedPositioned.
// IgnorePointer на не-верхних — тапы только у верхней.

class _StackView extends StatefulWidget {
  final List<_NotifItem> items;
  final void Function(int) onRemove;
  final void Function(int) onOpen;

  const _StackView({
    required this.items,
    required this.onRemove,
    required this.onOpen,
  });

  @override
  State<_StackView> createState() => _StackViewState();
}

class _StackViewState extends State<_StackView> {
  bool _expanded = false;
  double _dragStartY = 0;

  static const double _cardH = 52.0;
  static const double _peekOffset = 9.0;
  static const double _scaleStep = 0.04;

  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    final n = items.length;
    final topPad = MediaQuery.of(context).padding.top;

    final h = _expanded
        ? n * _cardH + 8
        : (_peekOffset * (n - 1).clamp(0, 3)) + _cardH + 8;

    return Positioned(
      top: topPad + 8,
      left: 12,
      right: 12,
      child: GestureDetector(
        onVerticalDragStart: (d) => _dragStartY = d.globalPosition.dy,
        onVerticalDragUpdate: (d) {
          final dy = d.globalPosition.dy - _dragStartY;
          if (dy > 14 && !_expanded) setState(() => _expanded = true);
          if (dy < -14 && _expanded) setState(() => _expanded = false);
        },
        child: SizedBox(
          height: h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              for (int i = items.length - 1; i >= 0; i--) _buildCard(items, i),
              if (n > 1)
                Positioned(
                  top: -6,
                  right: -6,
                  child: _Badge(count: n),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(List<_NotifItem> items, int i) {
    final depth = _expanded ? i : i.clamp(0, 3);
    final scale = 1.0 - depth * _scaleStep;
    final yOff = _expanded ? i * _cardH : depth * _peekOffset;
    final opacity = i >= 4 ? 0.0 : 1.0 - depth * 0.18;

    return AnimatedPositioned(
      key: ValueKey(items[i].id),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: yOff,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 260),
        opacity: opacity,
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.topCenter,
          child: IgnorePointer(
            ignoring: i != 0,
            child: _NotifCard(
              key: ValueKey('card_${items[i].id}'),
              item: items[i],
              isTop: i == 0,
              onDismiss: () => widget.onRemove(items[i].id),
              onOpen: () => widget.onOpen(items[i].id),
            ),
          ),
        ),
      ),
    );
  }
}

// ─── Карточка уведомления ────────────────────────────────────────
// Дизайн: белый фон, красная иконка (#E8302A = цвет приложения).
// Тап = сразу переход (onOpen). Крестик = закрыть (onDismiss).
// Слайд-анимация сверху при появлении.

class _NotifCard extends StatefulWidget {
  final _NotifItem item;
  final bool isTop;
  final VoidCallback onDismiss;
  final VoidCallback onOpen;

  const _NotifCard({
    super.key,
    required this.item,
    required this.isTop,
    required this.onDismiss,
    required this.onOpen,
  });

  @override
  State<_NotifCard> createState() => _NotifCardState();
}

class _NotifCardState extends State<_NotifCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 360),
    );
    _slide = Tween<Offset>(
      begin: const Offset(0, -1.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    _ctrl.forward();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slide,
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: widget.isTop ? widget.onOpen : null,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black.withOpacity(0.08),
                width: 0.5,
              ),
              boxShadow: widget.isTop
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      )
                    ]
                  : [],
            ),
            padding: const EdgeInsets.fromLTRB(11, 10, 8, 10),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCEBEB),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFFE8302A),
                    size: 17,
                  ),
                ),
                const SizedBox(width: 9),
                Expanded(
                  child: Text(
                    widget.item.title,
                    style: const TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: widget.onDismiss,
                  child: const Padding(
                    padding: EdgeInsets.all(7),
                    child: Icon(
                      Icons.close_rounded,
                      color: Color(0xFFCCCCCC),
                      size: 15,
                    ),
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

// ─── Бейдж количества ────────────────────────────────────────────
// Красный кружок в правом верхнем углу стопки.
// Показывается когда уведомлений больше одного.

class _Badge extends StatelessWidget {
  final int count;
  const _Badge({required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFFE8302A),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
