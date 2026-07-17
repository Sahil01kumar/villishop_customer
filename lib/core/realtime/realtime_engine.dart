import 'dart:async';

import 'connection_manager.dart';
import 'models/connection_state.dart';
import 'models/realtime_event.dart';
import 'offline_queue.dart';
import '../utils/logger.dart';

class RealtimeEngine {
  final IRealtimeConnection _connection;
  final OfflineEventQueue _offlineQueue;

  final _eventController = StreamController<RealtimeEvent>.broadcast();
  Stream<RealtimeEvent> get eventStream => _eventController.stream;

  RealtimeEngine(this._connection, this._offlineQueue) {
    _init();
  }

  void _init() {
    _connection.statusStream.listen((status) {
      AppLogger.i('RealtimeEngine Status: $status');
      if (status == RealtimeConnectionStatus.connected) {
        _processOfflineQueue();
      }
    });

    _connection.eventStream.listen((event) {
      AppLogger.d('RealtimeEvent Received: ${event.runtimeType}');
      _eventController.add(event);
    });
  }

  Future<void> connect(String token) async {
    await _connection.connect(token);
  }

  Future<void> disconnect() async {
    await _connection.disconnect();
  }

  void emit(RealtimeEvent event) {
    if (_connection.currentStatus == RealtimeConnectionStatus.connected) {
      _connection.emit('event', event.toJson());
    } else {
      AppLogger.w('Realtime disconnected. Queuing event: ${event.runtimeType}');
      _offlineQueue.enqueue(event);
    }
  }

  Future<void> _processOfflineQueue() async {
    final events = await _offlineQueue.dequeueAll();
    if (events.isNotEmpty) {
      AppLogger.i('Processing ${events.length} offline events');
      for (var event in events) {
        emit(event);
      }
    }
  }

  void subscribeToOrder(String orderId) {
    _connection.subscribe('order_$orderId');
  }

  void unsubscribeFromOrder(String orderId) {
    _connection.unsubscribe('order_$orderId');
  }

  RealtimeConnectionStatus get status => _connection.currentStatus;
}
