import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/core/widgets/empty_widget.dart';
import 'package:villishop_customer/core/widgets/skeleton_loader.dart';
import '../../providers/location_provider.dart';
import '../widgets/address_item_tile.dart';

class AddressListScreen extends ConsumerWidget {
  const AddressListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(locationProvider);
    final notifier = ref.read(locationProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('My Addresses',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: state.isLoading
          ? _buildSkeletonList()
          : state.addresses.isEmpty
              ? const EmptyWidget(
                  message:
                      'No addresses saved yet. Add your village address to get started.',
                  icon: Icons.location_on_outlined,
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.m),
                  itemCount: state.addresses.length,
                  itemBuilder: (context, index) {
                    final address = state.addresses[index];
                    final isSelected = state.selectedAddress?.id == address.id;
                    return AddressItemTile(
                      address: address,
                      isSelected: isSelected,
                      onTap: () {
                        notifier.selectAddress(address);
                        context.pop();
                      },
                      onEdit: () =>
                          context.push(AppRoutes.addAddress, extra: address),
                      onDelete: () =>
                          _showDeleteDialog(context, notifier, address.id),
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(AppRoutes.addAddress),
        backgroundColor: AppColors.primary,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('ADD NEW ADDRESS',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900)),
      ),
    );
  }

  Widget _buildSkeletonList() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SkeletonLoader.addressCard(),
      ),
    );
  }

  void _showDeleteDialog(
      BuildContext context, LocationNotifier notifier, String id) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Address?'),
        content: const Text('Are you sure you want to remove this address?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL')),
          TextButton(
            onPressed: () {
              notifier.deleteAddress(id);
              Navigator.pop(context);
            },
            child: const Text('DELETE', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
