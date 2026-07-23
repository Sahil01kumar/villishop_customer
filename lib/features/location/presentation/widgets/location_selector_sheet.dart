import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../../providers/location_provider.dart';
import '../../data/models/address_model.dart';

class LocationSelectorSheet extends ConsumerWidget {
  const LocationSelectorSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);

    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.m, 12, AppSpacing.m, 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Change Location',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.5)),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded, color: Colors.black),
                style: IconButton.styleFrom(backgroundColor: Colors.grey[100]),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            readOnly: true,
            onTap: () async {
              Navigator.pop(context);
              await context.push(AppRoutes.addressSearch);
            },
            decoration: InputDecoration(
              hintText: 'Search for area, street name...',
              prefixIcon:
                  const Icon(Icons.search_rounded, color: AppColors.primary),
              fillColor: const Color(0xFFF3F4F6),
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none),
            ),
          ),
          const SizedBox(height: 20),
          _buildActionItem(
            context,
            icon: Icons.my_location_rounded,
            title: 'Use Current Location',
            subtitle: locationState.isLoading
                ? 'Detecting village...'
                : 'Using GPS for pinpoint accuracy',
            color: AppColors.primary,
            isLoading: locationState.isLoading,
            onTap: () async {
              await ref.read(locationProvider.notifier).pickCurrentLocation();
              if (context.mounted) Navigator.pop(context);
            },
          ),
          _buildActionItem(
            context,
            icon: Icons.map_outlined,
            title: 'Locate on Map',
            subtitle: 'Manually select your precise location',
            color: Colors.blue,
            onTap: () async {
              Navigator.pop(context);
              await context.push(AppRoutes.mapPicker);
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(height: 1),
          ),
          if (locationState.addresses.isNotEmpty) ...[
            const Text('SAVED ADDRESSES',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                    letterSpacing: 1)),
            const SizedBox(height: 12),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: locationState.addresses.length,
                itemBuilder: (context, index) {
                  final address = locationState.addresses[index];
                  final isSelected =
                      address.id == locationState.selectedAddress?.id;
                  return _buildAddressItem(
                    address: address,
                    isSelected: isSelected,
                    onTap: () {
                      ref
                          .read(locationProvider.notifier)
                          .selectAddress(address);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
          if (locationState.recentAddresses.isNotEmpty) ...[
            const Text('RECENT SEARCHES',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                    letterSpacing: 1)),
            const SizedBox(height: 12),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: locationState.recentAddresses.length,
                itemBuilder: (context, index) {
                  final address = locationState.recentAddresses[index];
                  return _buildAddressItem(
                    address: address,
                    onTap: () {
                      ref
                          .read(locationProvider.notifier)
                          .selectAddress(address);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
              context.push(AppRoutes.addAddress);
            },
            icon: const Icon(Icons.add_location_alt_rounded),
            label: const Text('ADD NEW ADDRESS',
                style: TextStyle(fontWeight: FontWeight.w900)),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF3F4F6),
              foregroundColor: Colors.black87,
              minimumSize: const Size(double.infinity, 56),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    Color? color,
    bool isLoading = false,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: (color ?? Colors.grey[700]!).withAlpha(15),
                  shape: BoxShape.circle),
              child: Icon(icon, color: color ?? Colors.grey[700], size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 16)),
                  Text(subtitle,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            if (isLoading)
              const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2)),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressItem({
    required AddressModel address,
    bool isSelected = false,
    required VoidCallback onTap,
  }) {
    IconData icon = Icons.location_on_outlined;
    if (address.label.toLowerCase() == 'home') icon = Icons.home_rounded;
    if (address.label.toLowerCase() == 'work') icon = Icons.work_rounded;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Row(
          children: [
            Icon(icon,
                color: isSelected ? AppColors.primary : Colors.grey[600],
                size: 22),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(address.label,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: isSelected ? AppColors.primary : Colors.black87,
                      )),
                  Text(address.fullAddress,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            if (isSelected)
              const Icon(Icons.check_circle_rounded,
                  color: Colors.green, size: 22),
          ],
        ),
      ),
    );
  }
}
