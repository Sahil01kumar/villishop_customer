import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../providers/map_infrastructure_provider.dart';
import '../../theme/map_theme.dart';

class TrackingMapWidget extends ConsumerStatefulWidget {
  final CameraPosition initialPosition;
  final Set<Marker> markers;
  final Set<Polyline> polylines;
  final Function(GoogleMapController)? onMapCreated;

  const TrackingMapWidget({
    super.key,
    required this.initialPosition,
    this.markers = const {},
    this.polylines = const {},
    this.onMapCreated,
  });

  @override
  ConsumerState<TrackingMapWidget> createState() => _TrackingMapWidgetState();
}

class _TrackingMapWidgetState extends ConsumerState<TrackingMapWidget> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return GoogleMap(
      initialCameraPosition: widget.initialPosition,
      style: isDarkMode ? MapTheme.darkTheme : MapTheme.silverTheme,
      markers: widget.markers,
      polylines: widget.polylines,
      onMapCreated: (controller) {
        ref.read(mapInfrastructureProvider.notifier).setController(controller);
        if (widget.onMapCreated != null) {
          widget.onMapCreated!(controller);
        }
      },
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      compassEnabled: true,
      mapToolbarEnabled: false,
      indoorViewEnabled: true,
    );
  }
}
