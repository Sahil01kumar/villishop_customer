import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/theme/map_theme.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';
import 'package:villishop_customer/features/tracking/providers/tracking_provider.dart';

class PremiumMapWidget extends ConsumerStatefulWidget {
  final OrderTrackingModel tracking;
  const PremiumMapWidget({super.key, required this.tracking});

  @override
  ConsumerState<PremiumMapWidget> createState() => _PremiumMapWidgetState();
}

class _PremiumMapWidgetState extends ConsumerState<PremiumMapWidget>
    with TickerProviderStateMixin {
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};

  LatLng? _lastRiderPos;
  double _lastRotation = 0;

  AnimationController? _movementController;
  Tween<double>? _latTween;
  Tween<double>? _lngTween;
  Tween<double>? _rotationTween;

  @override
  void initState() {
    super.initState();
    _movementController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _movementController!.addListener(_handleMovementTick);

    _initializeMapData();
  }

  @override
  void dispose() {
    _movementController?.removeListener(_handleMovementTick);
    _movementController?.dispose();
    // GoogleMapController is disposed by the widget itself or via _controller future.
    super.dispose();
  }

  void _initializeMapData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _updateMarkers();
      _updatePolyline();
    });
  }

  void _handleMovementTick() {
    if (!mounted || _latTween == null || _lngTween == null) return;

    final animatedPos = LatLng(
      _latTween!.evaluate(_movementController!),
      _lngTween!.evaluate(_movementController!),
    );
    final animatedRotation =
        _rotationTween?.evaluate(_movementController!) ?? _lastRotation;

    _updateMarkers(riderPos: animatedPos, riderRotation: animatedRotation);
  }

  void _updateMarkers({LatLng? riderPos, double? riderRotation}) {
    if (!mounted) return;

    final customerLatLng = LatLng(widget.tracking.destinationLocation.latitude,
        widget.tracking.destinationLocation.longitude);
    final storeLatLng = LatLng(widget.tracking.sourceLocation.latitude,
        widget.tracking.sourceLocation.longitude);

    final currentRiderPos = riderPos ??
        (widget.tracking.currentRiderLocation != null
            ? LatLng(widget.tracking.currentRiderLocation!.latitude,
                widget.tracking.currentRiderLocation!.longitude)
            : null);

    final Set<Marker> newMarkers = {
      Marker(
        markerId: const MarkerId('customer_home'),
        position: customerLatLng,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        anchor: const Offset(0.5, 0.5),
        zIndexInt: 5,
        infoWindow: const InfoWindow(title: 'Your Home'),
      ),
      Marker(
        markerId: const MarkerId('store_location'),
        position: storeLatLng,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        anchor: const Offset(0.5, 0.5),
        zIndexInt: 4,
        infoWindow: const InfoWindow(title: 'VilliShop Store'),
      ),
    };

    if (currentRiderPos != null) {
      newMarkers.add(
        Marker(
          markerId: const MarkerId('rider_bike'),
          position: currentRiderPos,
          rotation: riderRotation ?? _lastRotation,
          anchor: const Offset(0.5, 0.5),
          flat: true,
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
          zIndexInt: 10,
        ),
      );
    }

    setState(() {
      _markers = newMarkers;
    });

    if (currentRiderPos != null && riderPos == null) {
      _lastRiderPos = currentRiderPos;
    }
  }

  void _updatePolyline() {
    if (!mounted) return;
    final storePos = LatLng(widget.tracking.sourceLocation.latitude,
        widget.tracking.sourceLocation.longitude);
    final customerPos = LatLng(widget.tracking.destinationLocation.latitude,
        widget.tracking.destinationLocation.longitude);

    setState(() {
      _polylines = {
        Polyline(
          polylineId: const PolylineId('delivery_route'),
          points: [storePos, customerPos],
          color: AppColors.primary,
          width: 5,
          geodesic: true,
          jointType: JointType.round,
        ),
      };
    });

    _fitCameraBounds();
  }

  void _animateRider(LatLng newPos) {
    if (!mounted) return;
    if (_lastRiderPos == null) {
      _lastRiderPos = newPos;
      _updateMarkers(riderPos: newPos, riderRotation: 0);
      return;
    }

    final rotation = _calculateRotation(_lastRiderPos!, newPos);

    _latTween =
        Tween<double>(begin: _lastRiderPos!.latitude, end: newPos.latitude);
    _lngTween =
        Tween<double>(begin: _lastRiderPos!.longitude, end: newPos.longitude);
    _rotationTween = Tween<double>(begin: _lastRotation, end: rotation);

    _movementController?.forward(from: 0);

    _lastRiderPos = newPos;
    _lastRotation = rotation;

    _fitCameraBounds();
  }

  double _calculateRotation(LatLng start, LatLng end) {
    final lat1 = start.latitude * pi / 180;
    final lng1 = start.longitude * pi / 180;
    final lat2 = end.latitude * pi / 180;
    final lng2 = end.longitude * pi / 180;

    final y = sin(lng2 - lng1) * cos(lat2);
    final x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(lng2 - lng1);
    final bearing = atan2(y, x) * 180 / pi;
    return (bearing + 360) % 360;
  }

  Future<void> _fitCameraBounds() async {
    if (!mounted) return;
    try {
      final controller =
          await _controller.future.timeout(const Duration(seconds: 1));
      if (!mounted) return;

      final storePos = LatLng(widget.tracking.sourceLocation.latitude,
          widget.tracking.sourceLocation.longitude);
      final customerPos = LatLng(widget.tracking.destinationLocation.latitude,
          widget.tracking.destinationLocation.longitude);
      final riderPos = _lastRiderPos ?? storePos;

      LatLngBounds bounds = _calculateBounds([storePos, customerPos, riderPos]);

      await controller.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100));
    } catch (_) {
      // Timeout or controller already disposed
    }
  }

  LatLngBounds _calculateBounds(List<LatLng> points) {
    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (final point in points) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLng) minLng = point.longitude;
      if (point.longitude > maxLng) maxLng = point.longitude;
    }

    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    ref.listen<AsyncValue<OrderTrackingModel>>(
        trackingProvider(widget.tracking.orderId), (prev, next) {
      final riderLoc = next.value?.currentRiderLocation;
      if (riderLoc != null) {
        _animateRider(LatLng(riderLoc.latitude, riderLoc.longitude));
      }
    });

    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(widget.tracking.destinationLocation.latitude,
            widget.tracking.destinationLocation.longitude),
        zoom: 14,
      ),
      style: isDarkMode ? MapTheme.darkTheme : MapTheme.silverTheme,
      onMapCreated: (controller) {
        if (!_controller.isCompleted) {
          _controller.complete(controller);
        }
        _fitCameraBounds();
      },
      markers: _markers,
      polylines: _polylines,
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      compassEnabled: false,
      mapToolbarEnabled: false,
      padding: const EdgeInsets.only(bottom: 20),
    );
  }
}
