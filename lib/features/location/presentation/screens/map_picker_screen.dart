import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../providers/location_provider.dart';
import '../../../../core/theme/map_theme.dart';

import '../../data/models/zone_model.dart';
import '../../data/models/address_model.dart';
import '../../../../core/router/app_router.dart';
import '../../providers/zone_repository_provider.dart';

class MapPickerScreen extends ConsumerStatefulWidget {
  const MapPickerScreen({super.key});

  @override
  ConsumerState<MapPickerScreen> createState() => _MapPickerScreenState();
}

class _MapPickerScreenState extends ConsumerState<MapPickerScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  LatLng? _pickedLocation;
  String _addressLine = "Locating you...";
  bool _isMoving = false;
  bool _isFetchingAddress = false;
  bool _isServiceable = false;
  bool _isValidatingZone = false;

  @override
  void initState() {
    super.initState();
    _initLocation();
  }

  Future<void> _initLocation() async {
    setState(() {
      _addressLine = "Fetching GPS...";
      _isFetchingAddress = true;
    });
    try {
      final pos = ref.read(locationProvider).currentPosition;
      if (pos != null) {
        _updateLocation(LatLng(pos.latitude, pos.longitude));
      } else {
        final current = await Geolocator.getCurrentPosition();
        _updateLocation(LatLng(current.latitude, current.longitude));
      }
    } catch (e) {
      debugPrint('Error getting current location: $e');
      _updateLocation(const LatLng(26.9124, 75.7873)); // Default Jaipur
    }
  }

  Future<void> _updateLocation(LatLng latLng) async {
    if (!mounted) return;
    setState(() {
      _pickedLocation = latLng;
      _isFetchingAddress = true;
      _isValidatingZone = true;
    });

    final controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLngZoom(latLng, 17));

    await _resolveAddressAndZone(latLng);
  }

  Future<void> _resolveAddressAndZone(LatLng latLng) async {
    final address = await ref
        .read(locationRepositoryProvider)
        .getAddressFromLatLng(latLng.latitude, latLng.longitude);

    final zone = await ref
        .read(zoneRepositoryProvider)
        .getZoneForLocation(latLng.latitude, latLng.longitude);

    if (mounted) {
      setState(() {
        _addressLine = address;
        _isFetchingAddress = false;
        _isServiceable = zone != null && zone.status == ZoneStatus.active;
        _isValidatingZone = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
                target: LatLng(26.9124, 75.7873), zoom: 15),
            onMapCreated: (controller) {
              if (!_controller.isCompleted) {
                _controller.complete(controller);
              }
            },
            style: isDarkMode ? MapTheme.darkTheme : MapTheme.silverTheme,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            onCameraMoveStarted: () => setState(() {
              _isMoving = true;
              _isValidatingZone = true;
            }),
            onCameraMove: (pos) => _pickedLocation = pos.target,
            onCameraIdle: () async {
              setState(() => _isMoving = false);
              final picked = _pickedLocation;
              if (picked != null) {
                setState(() => _isFetchingAddress = true);
                await _resolveAddressAndZone(picked);
              }
            },
          ),

          // Center Marker
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(50), blurRadius: 10)
                        ]),
                    child: const Text(
                      'DELIVERY HERE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1),
                    ),
                  )
                      .animate(target: _isMoving ? 0 : 1)
                      .scale(
                          begin: const Offset(0.8, 0.8),
                          end: const Offset(1, 1))
                      .fadeIn(),
                  const SizedBox(height: 4),
                  const Icon(Icons.location_on_rounded,
                          color: AppColors.primary, size: 44)
                      .animate(target: _isMoving ? 1 : 0)
                      .slideY(begin: 0, end: -0.1),
                ],
              ),
            ),
          ),

          // Top Header
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 16,
            right: 16,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 24,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded,
                        color: Colors.black, size: 18),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      final result = await context.push(AppRoutes.addressSearch)
                          as AddressModel?;
                      if (result != null) {
                        _updateLocation(
                            LatLng(result.latitude, result.longitude));
                      }
                    },
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4))
                        ],
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search_rounded,
                              color: AppColors.primary, size: 20),
                          const SizedBox(width: 12),
                          Text('Search area or village...',
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ).animate().fadeIn().slideY(begin: -0.2, end: 0),
          ),

          // Bottom Confirmation Sheet
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                  AppSpacing.l, AppSpacing.l, AppSpacing.l, 34),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(20),
                      blurRadius: 20,
                      offset: const Offset(0, -5))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Select delivery location',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          letterSpacing: -0.5)),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: (_isServiceable
                                  ? AppColors.primary
                                  : Colors.orange)
                              .withAlpha(15),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                            _isServiceable
                                ? Icons.location_on_rounded
                                : Icons.location_off_rounded,
                            color: _isServiceable
                                ? AppColors.primary
                                : Colors.orange,
                            size: 22),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _isMoving
                                  ? 'Selecting location...'
                                  : (_isFetchingAddress
                                      ? 'Fetching address...'
                                      : _addressLine),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 15),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            if (_isValidatingZone)
                              Text('Checking serviceability...',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold))
                            else if (_isServiceable)
                              const Text('Village delivery is active here',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold))
                            else
                              const Text('Coming soon to this village',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  PrimaryButton(
                    text: _isServiceable
                        ? 'CONFIRM LOCATION'
                        : 'CHECK OTHER LOCATION',
                    onPressed:
                        (_isMoving || _isFetchingAddress || _isValidatingZone)
                            ? () {}
                            : () {
                                if (_isServiceable) {
                                  final pickedAddr = AddressModel(
                                    id: 'picked_${DateTime.now().millisecondsSinceEpoch}',
                                    label: 'Selected Location',
                                    fullAddress: _addressLine,
                                    latitude: _pickedLocation!.latitude,
                                    longitude: _pickedLocation!.longitude,
                                  );
                                  ref
                                      .read(locationProvider.notifier)
                                      .selectAddress(pickedAddr);
                                  Navigator.pop(context);
                                } else {
                                  // Maybe trigger search or just stay
                                }
                              },
                    isDisabled: _isMoving ||
                        _isFetchingAddress ||
                        _isValidatingZone ||
                        (!_isServiceable),
                  ),
                ],
              ),
            ).animate().slideY(
                begin: 1, end: 0, duration: 400.ms, curve: Curves.easeOutCubic),
          ),

          // Current Location Button
          Positioned(
            bottom: 240,
            right: 16,
            child: FloatingActionButton(
              heroTag: 'fab-my-loc',
              onPressed: _initLocation,
              backgroundColor: Colors.white,
              mini: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: const Icon(Icons.my_location_rounded,
                  color: AppColors.primary, size: 20),
            ).animate().fadeIn(delay: 600.ms),
          ),
        ],
      ),
    );
  }
}
