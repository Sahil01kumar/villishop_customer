import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/shared_pref_service.dart';
import '../../../core/realtime/providers/realtime_providers.dart';
import '../data/models/order_tracking_model.dart';
import '../domain/repositories/tracking_repository.dart';
import '../data/repositories/tracking_repository_impl.dart';

final trackingRepositoryProvider = Provider<TrackingRepository>((ref) {
  final prefs = ref.watch(sharedPreferencesServiceProvider);
  final engine = ref.watch(realtimeEngineProvider);
  return TrackingRepositoryImpl(prefs, engine);
});

final trackingProvider =
    StreamProvider.family<OrderTrackingModel, String>((ref, orderId) {
  final repository = ref.watch(trackingRepositoryProvider);
  
  ref.onDispose(() {
    repository.stopTracking(orderId);
  });

  return repository.getTrackingStream(orderId);
});

class ActiveOrderIdNotifier extends StateNotifier<AsyncValue<String?>> {
  final TrackingRepository _repository;

  ActiveOrderIdNotifier(this._repository) : super(const AsyncValue.loading()) {
    _load();
  }

  Future<void> _load() async {
    try {
      final id = await _repository.getActiveOrderId();
      state = AsyncValue.data(id);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  void updateId(String? id) {
    state = AsyncValue.data(id);
  }

  void clear() {
    state = const AsyncValue.data(null);
  }
}

final activeOrderIdProvider =
    StateNotifierProvider<ActiveOrderIdNotifier, AsyncValue<String?>>((ref) {
  return ActiveOrderIdNotifier(ref.watch(trackingRepositoryProvider));
});

final isSessionRestoredProvider = StateProvider<bool>((ref) => false);
final currentTrackingIdProvider = StateProvider<String?>((ref) => null);

/// State management for the Map
class MapState {
  final bool isMapLoaded;
  final String? mapTheme;

  MapState({this.isMapLoaded = false, this.mapTheme});

  MapState copyWith({bool? isMapLoaded, String? mapTheme}) {
    return MapState(
      isMapLoaded: isMapLoaded ?? this.isMapLoaded,
      mapTheme: mapTheme ?? this.mapTheme,
    );
  }
}

class MapStateNotifier extends StateNotifier<MapState> {
  MapStateNotifier() : super(MapState());
  void setLoaded(bool loaded) => state = state.copyWith(isMapLoaded: loaded);
}

final mapStateProvider = StateNotifierProvider<MapStateNotifier, MapState>(
    (ref) => MapStateNotifier());
