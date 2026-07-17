import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../providers/map_infrastructure_provider.dart';
import '../providers/map_state_provider.dart';
import '../providers/location_service_provider.dart';
import '../services/map_camera_engine.dart';
import '../../theme/map_theme.dart';
import '../../widgets/loading_widget.dart';
import '../../../features/tracking/providers/rider_tracking_provider.dart';

class EnterpriseTrackingMap extends ConsumerStatefulWidget {
  final LatLng initialCameraPosition;
  final bool showControls;
  final bool autoFitBounds;

  const EnterpriseTrackingMap({
    super.key,
    required this.initialCameraPosition,
    this.showControls = true,
    this.autoFitBounds = true,
  });

  @override
  ConsumerState<EnterpriseTrackingMap> createState() =>
      _EnterpriseTrackingMapState();
}

class _EnterpriseTrackingMapState extends ConsumerState<EnterpriseTrackingMap> {
  @override
  void initState() {
    super.initState();
    _checkLocationService();
  }

  Future<void> _checkLocationService() async {
    await ref.read(locationServiceProvider.notifier).checkStatus();
  }

  @override
  Widget build(BuildContext context) {
    final mapInfra = ref.watch(mapInfrastructureProvider);
    final markers = ref.watch(mapMarkersProvider);
    final polylines = ref.watch(mapPolylinesProvider);
    final locationStatus = ref.watch(locationServiceProvider);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Auto-follow rider logic
    ref.listen(riderLocationProvider, (prev, next) {
      if (next != null &&
          mapInfra.isAutoFollowEnabled &&
          mapInfra.controller != null) {
        mapInfra.controller!.animateCamera(
          CameraUpdate.newLatLng(next.position),
        );
      }
    });

    if (locationStatus == LocationServiceStatus.loading) {
      return const Center(child: LoadingWidget());
    }

    if (locationStatus == LocationServiceStatus.disabled ||
        locationStatus == LocationServiceStatus.permissionDenied) {
      return _buildErrorState(
        icon: Icons.location_off_rounded,
        title: 'Location Service Required',
        message:
            'Please enable GPS and grant location permission to track your order.',
        onRetry: _checkLocationService,
      );
    }

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: widget.initialCameraPosition,
            zoom: 15,
          ),
          style: isDarkMode ? MapTheme.darkTheme : MapTheme.silverTheme,
          markers: markers,
          polylines: polylines,
          trafficEnabled: mapInfra.isTrafficEnabled,
          onMapCreated: (controller) {
            ref
                .read(mapInfrastructureProvider.notifier)
                .setController(controller);

            if (widget.autoFitBounds && markers.isNotEmpty) {
              final points = markers.map((m) => m.position).toList();
              MapCameraEngine(controller).fitBounds(points);
            }
          },
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          compassEnabled: true,
          mapToolbarEnabled: false,
          indoorViewEnabled: true,
          onCameraMoveStarted: () {
            // Disable auto-follow when user manually moves the camera
            ref.read(mapInfrastructureProvider.notifier).setAutoFollow(false);
          },
        ),
        if (widget.showControls)
          Positioned(
            right: 16,
            bottom: 100,
            child: Column(
              children: [
                _MapControlButton(
                  icon: mapInfra.isTrafficEnabled
                      ? Icons.traffic_rounded
                      : Icons.traffic_outlined,
                  onPressed: () => ref
                      .read(mapInfrastructureProvider.notifier)
                      .toggleTraffic(),
                  isActive: mapInfra.isTrafficEnabled,
                ),
                const SizedBox(height: 12),
                if (!mapInfra.isAutoFollowEnabled)
                  _MapControlButton(
                    icon: Icons.center_focus_strong_rounded,
                    onPressed: () {
                      ref
                          .read(mapInfrastructureProvider.notifier)
                          .setAutoFollow(true);
                      final riderLoc = ref.read(riderLocationProvider);
                      if (riderLoc != null) {
                        ref
                            .read(mapInfrastructureProvider.notifier)
                            .animateCamera(
                              CameraUpdate.newLatLng(riderLoc.position),
                            );
                      }
                    },
                  ),
                const SizedBox(height: 12),
                _MapControlButton(
                  icon: Icons.my_location_rounded,
                  onPressed: () {
                    final controller =
                        ref.read(mapInfrastructureProvider).controller;
                    if (controller != null &&
                        markers.any((m) => m.markerId.value == 'customer')) {
                      final customerPos = markers
                          .firstWhere((m) => m.markerId.value == 'customer')
                          .position;
                      MapCameraEngine(controller)
                          .animateToLocation(customerPos);
                      ref
                          .read(mapInfrastructureProvider.notifier)
                          .setAutoFollow(false);
                    }
                  },
                ),
                const SizedBox(height: 12),
                _MapControlButton(
                  icon: Icons.add_rounded,
                  onPressed: () {
                    ref
                        .read(mapInfrastructureProvider)
                        .controller
                        ?.animateCamera(CameraUpdate.zoomIn());
                  },
                ),
                const SizedBox(height: 12),
                _MapControlButton(
                  icon: Icons.remove_rounded,
                  onPressed: () {
                    ref
                        .read(mapInfrastructureProvider)
                        .controller
                        ?.animateCamera(CameraUpdate.zoomOut());
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildErrorState({
    required IconData icon,
    required String title,
    required String message,
    required VoidCallback onRetry,
  }) {
    return Container(
      color: const Color(0xFFF7F8FA),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: Colors.orange),
          const SizedBox(height: 24),
          Text(title,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
          const SizedBox(height: 12),
          Text(message,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600], fontSize: 14)),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Try Again',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}

class _MapControlButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isActive;

  const _MapControlButton({
    required this.icon,
    required this.onPressed,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: null,
      onPressed: onPressed,
      backgroundColor: isActive ? Colors.black : Colors.white,
      foregroundColor: isActive ? Colors.white : Colors.black,
      child: Icon(icon),
    );
  }
}
