import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';

class LocationPermissionSheet extends ConsumerWidget {
  const LocationPermissionSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const LocationPermissionSheet(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(locationProvider).permissionStatus;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.l),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 180,
            child: Lottie.asset(
              'assets/lottie/location_anim.json',
              errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.location_on,
                  size: 80,
                  color: AppColors.primary),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Location Access Needed',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 24, letterSpacing: -0.5),
          ),
          const SizedBox(height: 12),
          Text(
            'To provide the fastest village delivery and show nearby shops, VilliShop needs your real-time location.',
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.grey[600], fontSize: 15, height: 1.5),
          ),
          const SizedBox(height: 32),
          if (status == LocationPermissionStatus.deniedForever)
            ElevatedButton(
              onPressed: () async {
                await Geolocator.openAppSettings();
                if (context.mounted) Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Open App Settings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            )
          else if (status == LocationPermissionStatus.disabled)
            ElevatedButton(
              onPressed: () async {
                await Geolocator.openLocationSettings();
                if (context.mounted) Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Enable GPS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            )
          else
            ElevatedButton(
              onPressed: () async {
                await ref.read(locationProvider.notifier).requestPermission();
                if (context.mounted) Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Allow Location Access',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Enter Location Manually',
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
