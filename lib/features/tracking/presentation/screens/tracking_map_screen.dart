import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/maps/widgets/enterprise_tracking_map.dart';
import '../../../../core/maps/providers/map_state_provider.dart';
import '../../../../core/maps/models/tracking_points.dart';
import '../../providers/tracking_provider.dart';
import '../../providers/rider_tracking_provider.dart';

class TrackingMapScreen extends ConsumerStatefulWidget {
  final String orderId;

  const TrackingMapScreen({super.key, required this.orderId});

  @override
  ConsumerState<TrackingMapScreen> createState() => _TrackingMapScreenState();
}

class _TrackingMapScreenState extends ConsumerState<TrackingMapScreen> {
  @override
  Widget build(BuildContext context) {
    final trackingAsync = ref.watch(trackingProvider(widget.orderId));

    // Activate Tracking Engine for this specific order
    ref.watch(trackingEngineProvider(widget.orderId));

    final eta = ref.watch(etaProvider);
    final distance = ref.watch(distanceProvider);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Live Tracking',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
            Text(
              'ETA: $eta mins • ${distance.toStringAsFixed(1)} km',
              style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
      ),
      body: trackingAsync.when(
        data: (tracking) {
          // Sync initial/static tracking data with map state
          // Note: rider position is handled by riderLocationProvider smoothly
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(trackingPointsProvider.notifier).state = TrackingPoints(
              customer: LatLng(tracking.destinationLocation.latitude,
                  tracking.destinationLocation.longitude),
              store: LatLng(tracking.sourceLocation.latitude,
                  tracking.sourceLocation.longitude),
              rider: tracking.currentRiderLocation != null
                  ? LatLng(tracking.currentRiderLocation!.latitude,
                      tracking.currentRiderLocation!.longitude)
                  : null,
            );
          });

          return EnterpriseTrackingMap(
            initialCameraPosition: LatLng(
              tracking.destinationLocation.latitude,
              tracking.destinationLocation.longitude,
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
