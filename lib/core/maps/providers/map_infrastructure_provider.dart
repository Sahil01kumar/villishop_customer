import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_infrastructure_provider.freezed.dart';

@freezed
class MapInfrastructureState with _$MapInfrastructureState {
  const factory MapInfrastructureState({
    @Default(false) bool isMapLoaded,
    @Default({}) Set<Marker> markers,
    @Default({}) Set<Polyline> polylines,
    @Default(true) bool isAutoFollowEnabled,
    @Default(false) bool isTrafficEnabled,
    CameraPosition? initialPosition,
    GoogleMapController? controller,
  }) = _MapInfrastructureState;
}

class MapInfrastructureNotifier extends StateNotifier<MapInfrastructureState> {
  MapInfrastructureNotifier() : super(const MapInfrastructureState());

  void setController(GoogleMapController controller) {
    state = state.copyWith(controller: controller, isMapLoaded: true);
  }

  void updateMarkers(Set<Marker> markers) {
    state = state.copyWith(markers: markers);
  }

  void updatePolylines(Set<Polyline> polylines) {
    state = state.copyWith(polylines: polylines);
  }

  void setAutoFollow(bool enabled) {
    state = state.copyWith(isAutoFollowEnabled: enabled);
  }

  void toggleTraffic() {
    state = state.copyWith(isTrafficEnabled: !state.isTrafficEnabled);
  }

  Future<void> animateCamera(CameraUpdate update) async {
    await state.controller?.animateCamera(update);
  }

  Future<void> moveCamera(CameraUpdate update) async {
    await state.controller?.moveCamera(update);
  }

  Future<void> fitBounds(LatLngBounds bounds, {double padding = 50.0}) async {
    await state.controller?.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, padding),
    );
  }

  void disposeController() {
    state.controller?.dispose();
    state = state.copyWith(controller: null, isMapLoaded: false);
  }
}

final mapInfrastructureProvider =
    StateNotifierProvider<MapInfrastructureNotifier, MapInfrastructureState>(
        (ref) {
  return MapInfrastructureNotifier();
});
