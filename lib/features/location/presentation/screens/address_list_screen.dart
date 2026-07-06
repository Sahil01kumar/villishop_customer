import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
      appBar: AppBar(
        title: const Text('Saved Addresses'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.push(AppRoutes.addAddress),
          ),
        ],
      ),
      body: locationState.isLoading
          ? const LoadingWidget()
          : locationState.addresses.isEmpty
              ? const EmptyWidget(
                  message: 'No saved addresses found',
                  icon: Icons.location_off_outlined,
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(AppSpacing.m),
                  itemCount: locationState.addresses.length,
                  separatorBuilder: (context, index) => AppSpacing.vS,
                  itemBuilder: (context, index) {
                    final address = locationState.addresses[index];
                    return AddressItemTile(
                      address: address,
                      isSelected: locationState.selectedAddress?.id == address.id,
                      onTap: () {
                        ref.read(locationProvider.notifier).selectAddress(address);
                        Navigator.pop(context);
                      },
                      onDelete: () => ref.read(locationProvider.notifier).deleteAddress(address.id),
                    );
                  },
                ),
    );
  }
}
