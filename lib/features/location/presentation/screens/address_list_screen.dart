import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../../core/router/app_router.dart';
import '../../providers/location_provider.dart';
import '../widgets/address_item_tile.dart';

class AddressListScreen extends ConsumerWidget {
  const AddressListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Addresses', style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          _buildAddAction(context),
          const Divider(height: 1, color: Color(0xFFF3F4F6)),
          Expanded(
            child: locationState.isLoading && locationState.addresses.isEmpty
                ? const LoadingWidget()
                : locationState.addresses.isEmpty
                    ? const EmptyWidget(
                        message: 'No saved village addresses yet.',
                        icon: Icons.location_off_outlined,
                      )
                    : ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(AppSpacing.m),
                        itemCount: locationState.addresses.length,
                        separatorBuilder: (context, index) => const SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          final address = locationState.addresses[index];
                          return AddressItemTile(
                            address: address,
                            isSelected: locationState.selectedAddress?.id == address.id,
                            onTap: () {
                              ref.read(locationProvider.notifier).selectAddress(address);
                              // context.pop(); // Handled in UI flow
                            },
                            onEdit: () => context.push(AppRoutes.addAddress, extra: address),
                            onDelete: () => _confirmDelete(context, ref, address.id),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddAction(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRoutes.addAddress),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.m),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: AppColors.primary.withAlpha(20), shape: BoxShape.circle),
              child: const Icon(Icons.add, color: AppColors.primary, size: 24),
            ),
            const SizedBox(width: 16),
            const Text('Add New Address', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary, fontSize: 15)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: AppColors.primary),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, String id) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Address?'),
        content: const Text('Are you sure you want to remove this village address?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          TextButton(
            onPressed: () {
              ref.read(locationProvider.notifier).deleteAddress(id);
              Navigator.pop(context);
            },
            child: const Text('DELETE', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
