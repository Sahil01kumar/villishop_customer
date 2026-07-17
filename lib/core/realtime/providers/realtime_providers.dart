import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../realtime_engine.dart';
import '../connection_manager.dart';
import '../offline_queue.dart';
import '../models/connection_state.dart';
import '../models/realtime_event.dart';
import '../mock/mock_realtime_connection.dart';

final offlineQueueProvider = Provider<OfflineEventQueue>((ref) {
  return OfflineEventQueue();
});

// Future: Switch to SocketIOConnection when backend is ready
final realtimeConnectionProvider = Provider<IRealtimeConnection>((ref) {
  return MockRealtimeConnection();
});

final realtimeEngineProvider = Provider<RealtimeEngine>((ref) {
  final connection = ref.watch(realtimeConnectionProvider);
  final queue = ref.watch(offlineQueueProvider);
  return RealtimeEngine(connection, queue);
});

final connectionStatusProvider =
    StreamProvider<RealtimeConnectionStatus>((ref) {
  final connection = ref.watch(realtimeConnectionProvider);
  return connection.statusStream;
});

final realtimeEventProvider = StreamProvider<RealtimeEvent>((ref) {
  final engine = ref.watch(realtimeEngineProvider);
  return engine.eventStream;
});

// Domain Specific Streams
final orderRealtimeProvider =
    StreamProvider.family<RealtimeEvent, String>((ref, orderId) {
  final engine = ref.watch(realtimeEngineProvider);
  engine.subscribeToOrder(orderId);

  ref.onDispose(() {
    engine.unsubscribeFromOrder(orderId);
  });

  return engine.eventStream.where((event) {
    return event.maybeWhen(
      orderUpdated: (id, _, __) => id == orderId,
      partnerAssigned: (id, _, __, ___) => id == orderId,
      partnerLocationChanged: (id, _, __, ___, ____) => id == orderId,
      orderDelivered: (id, _) => id == orderId,
      orderCancelled: (id, _, __) => id == orderId,
      orElse: () => false,
    );
  });
});

final shopRealtimeProvider =
    StreamProvider.family<RealtimeEvent, String>((ref, shopId) {
  final engine = ref.watch(realtimeEngineProvider);
  return engine.eventStream.where((event) {
    return event.maybeWhen(
      shopStatusChanged: (id, _, __) => id == shopId,
      orElse: () => false,
    );
  });
});

final notificationRealtimeProvider = StreamProvider<RealtimeEvent>((ref) {
  final engine = ref.watch(realtimeEngineProvider);
  return engine.eventStream.where((event) {
    return event.maybeWhen(
      notificationReceived: (_, __, ___, ____, _____) => true,
      orElse: () => false,
    );
  });
});
