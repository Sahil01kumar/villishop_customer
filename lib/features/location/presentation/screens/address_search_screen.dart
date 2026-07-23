import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../providers/address_search_provider.dart';
import '../../providers/location_provider.dart';
import '../../data/models/address_model.dart';
import '../../../../core/router/app_router.dart';

class AddressSearchScreen extends ConsumerStatefulWidget {
  const AddressSearchScreen({super.key});

  @override
  ConsumerState<AddressSearchScreen> createState() =>
      _AddressSearchScreenState();
}

class _AddressSearchScreenState extends ConsumerState<AddressSearchScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(addressSearchProvider);
    final locationState = ref.watch(locationProvider);
    final query = searchState.query ?? '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                onPressed: () => context.pop(),
              ),
              Expanded(
                child: CustomSearchBar(
                  controller: _searchController,
                  hint: 'Search area, village or PIN...',
                  onChanged: (val) => ref
                      .read(addressSearchProvider.notifier)
                      .onQueryChanged(val),
                  suffixIcon: query.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.close_rounded,
                              color: Colors.grey),
                          onPressed: () {
                            _searchController.clear();
                            ref
                                .read(addressSearchProvider.notifier)
                                .onQueryChanged('');
                          },
                        )
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
      body: query.isEmpty
          ? _InitialAddressView(
              savedAddresses: locationState.addresses,
              recentSearches: locationState.recentAddresses,
              onSelect: (val) => _handleAddressSelection(val),
              onUseCurrentLocation: () async {
                final navigator = Navigator.of(context);
                await ref.read(locationProvider.notifier).pickCurrentLocation();
                if (mounted) navigator.pop();
              },
              onLocateOnMap: () async {
                final navigator = Navigator.of(context);
                final result = await context.push(AppRoutes.mapPicker)
                    as Map<String, dynamic>?;
                if (!mounted) return;
                if (result != null) {
                  final lat = result['lat'] as double;
                  final lng = result['lng'] as double;
                  final address = result['address'] as String;

                  final pickedAddr = AddressModel(
                    id: 'picked_${DateTime.now().millisecondsSinceEpoch}',
                    label: 'Selected Location',
                    fullAddress: address,
                    latitude: lat,
                    longitude: lng,
                  );
                  ref.read(locationProvider.notifier).selectAddress(pickedAddr);
                  navigator.pop();
                }
              },
            )
          : searchState.isLoading
              ? const LoadingWidget()
              : searchState.suggestions.isEmpty
                  ? const EmptyWidget(
                      title: 'No Locations Found',
                      message: 'Try searching with a village name or PIN code.',
                      icon: Icons.location_off_outlined,
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.all(AppSpacing.m),
                      itemCount: searchState.suggestions.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final suggestion = searchState.suggestions[index];
                        return ListTile(
                          leading: const Icon(Icons.location_on_outlined,
                              color: AppColors.primary),
                          title: Text(suggestion,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          onTap: () => _handleAddressSelection(suggestion),
                        );
                      },
                    ),
    );
  }

  void _handleAddressSelection(String address) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);

    final pos = await ref
        .read(locationRepositoryProvider)
        .getPositionFromAddress(address);

    if (pos != null) {
      final selectedAddress = AddressModel(
        id: 'search_${DateTime.now().millisecondsSinceEpoch}',
        label: address.split(',').first,
        fullAddress: address,
        latitude: pos.latitude,
        longitude: pos.longitude,
      );

      if (mounted) {
        ref.read(locationProvider.notifier).selectAddress(selectedAddress);
        navigator.pop();
      }
    } else {
      if (mounted) {
        scaffoldMessenger.showSnackBar(
          const SnackBar(
              content: Text('Could not resolve location. Please try map.')),
        );
      }
    }
  }
}

class _InitialAddressView extends StatelessWidget {
  final List<AddressModel> savedAddresses;
  final List<AddressModel> recentSearches;
  final Function(String) onSelect;
  final VoidCallback onUseCurrentLocation;
  final VoidCallback onLocateOnMap;

  const _InitialAddressView({
    required this.savedAddresses,
    required this.recentSearches,
    required this.onSelect,
    required this.onUseCurrentLocation,
    required this.onLocateOnMap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.m),
      children: [
        _buildActionItem(
          icon: Icons.my_location_rounded,
          title: 'Use Current Location',
          subtitle: 'Pinpoint your village automatically',
          color: AppColors.primary,
          onTap: onUseCurrentLocation,
        ),
        _buildActionItem(
          icon: Icons.map_outlined,
          title: 'Locate on Map',
          subtitle: 'Select manually for better precision',
          color: Colors.blue,
          onTap: onLocateOnMap,
        ),
        if (savedAddresses.isNotEmpty) ...[
          AppSpacing.vL,
          const Text('SAVED ADDRESSES',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                  letterSpacing: 1)),
          const SizedBox(height: 12),
          ...savedAddresses.map((addr) => _buildAddressTile(addr)),
        ],
        if (recentSearches.isNotEmpty) ...[
          AppSpacing.vL,
          const Text('RECENT SEARCHES',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                  letterSpacing: 1)),
          const SizedBox(height: 12),
          ...recentSearches.map((addr) => _buildAddressTile(addr)),
        ],
        AppSpacing.vL,
        const Text('POPULAR VILLAGES',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Colors.grey,
                letterSpacing: 1)),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: ['Jaipur', 'Khetri', 'Chirawa', 'Jhunjhunu']
              .map((s) => ActionChip(
                    label: Text(s),
                    onPressed: () => onSelect(s),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.grey.withAlpha(50))),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildActionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration:
            BoxDecoration(color: color.withAlpha(15), shape: BoxShape.circle),
        child: Icon(icon, color: color, size: 22),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w900)),
      subtitle: Text(subtitle,
          style: TextStyle(color: Colors.grey[600], fontSize: 12)),
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildAddressTile(AddressModel address) {
    return ListTile(
      onTap: () => onSelect(address.fullAddress),
      leading: const Icon(Icons.history_rounded, color: Colors.grey),
      title: Text(address.label,
          style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(address.fullAddress,
          maxLines: 1, overflow: TextOverflow.ellipsis),
      contentPadding: EdgeInsets.zero,
    );
  }
}
