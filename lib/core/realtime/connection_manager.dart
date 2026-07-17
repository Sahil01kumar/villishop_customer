import 'dart:async';
import 'models/connection_state.dart';
import 'models/realtime_event.dart';

abstract class IRealtimeConnection {
  Stream<RealtimeConnectionStatus> get statusStream;
  Stream<RealtimeEvent> get eventStream;

  RealtimeConnectionStatus get currentStatus;

  Future<void> connect(String token);
  Future<void> disconnect();

  void emit(String event, dynamic data);
  void subscribe(String topic);
  void unsubscribe(String topic);
}
