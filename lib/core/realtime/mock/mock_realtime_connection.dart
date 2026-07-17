import 'dart:async';
import '../connection_manager.dart';
import '../models/connection_state.dart';
import '../models/realtime_event.dart';

class MockRealtimeConnection implements IRealtimeConnection {
  final _statusController =
      StreamController<RealtimeConnectionStatus>.broadcast();
  final _eventController = StreamController<RealtimeEvent>.broadcast();

  RealtimeConnectionStatus _currentStatus =
      RealtimeConnectionStatus.disconnected;

  @override
  RealtimeConnectionStatus get currentStatus => _currentStatus;

  @override
  Stream<RealtimeEvent> get eventStream => _eventController.stream;

  @override
  Stream<RealtimeConnectionStatus> get statusStream => _statusController.stream;

  @override
  Future<void> connect(String token) async {
    _updateStatus(RealtimeConnectionStatus.connecting);
    await Future.delayed(const Duration(seconds: 1));
    _updateStatus(RealtimeConnectionStatus.connected);
  }

  @override
  Future<void> disconnect() async {
    _updateStatus(RealtimeConnectionStatus.disconnected);
  }

  @override
  void emit(String event, dynamic data) {
    // In mock, just log or echo back if needed
  }

  @override
  void subscribe(String topic) {
    // Start generating mock events for the topic
    if (topic.startsWith('order_')) {
      _startMockOrderUpdates(topic.replaceFirst('order_', ''));
    }
  }

  @override
  void unsubscribe(String topic) {}

  void _updateStatus(RealtimeConnectionStatus status) {
    _currentStatus = status;
    _statusController.add(status);
  }

  void _startMockOrderUpdates(String orderId) {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentStatus != RealtimeConnectionStatus.connected) {
        timer.cancel();
        return;
      }

      // Emit a mock location change event
      _eventController.add(RealtimeEvent.partnerLocationChanged(
        orderId: orderId,
        latitude: 26.9124 + (timer.tick * 0.0001),
        longitude: 75.7873 + (timer.tick * 0.0001),
        heading: 45.0,
        timestamp: DateTime.now(),
      ));

      if (timer.tick >= 20) timer.cancel();
    });
  }

  // Helper for tests
  void simulateEvent(RealtimeEvent event) {
    _eventController.add(event);
  }
}
