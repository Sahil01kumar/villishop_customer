import 'dart:async';
import 'models/realtime_event.dart';

class OfflineEventQueue {
  final List<RealtimeEvent> _queue = [];

  void enqueue(RealtimeEvent event) {
    _queue.add(event);
  }

  Future<List<RealtimeEvent>> dequeueAll() async {
    final events = List<RealtimeEvent>.from(_queue);
    _queue.clear();
    return events;
  }

  bool get isEmpty => _queue.isEmpty;
  int get length => _queue.length;
}
