import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../widgets/shop_discovery_card.dart';
import '../../providers/shop_provider.dart';

class ShopsScreen extends ConsumerWidget {
  const ShopsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopState = ref.watch(shopProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Discovery Nearby Shops'),
        actions: [
          IconButton(
            icon:
                Icon(shopState.isGridView ? Icons.view_list : Icons.grid_view),
            onPressed: () => ref.read(shopProvider.notifier).toggleView(),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.m, vertical: AppSpacing.s),
            child: CustomSearchBar(
              hint: 'Search shops by name...',
              onChanged: (val) =>
                  ref.read(shopProvider.notifier).filterShops(val),
            ),
          ),
        ),
      ),
      body: shopState.isLoading
          ? const LoadingWidget()
          : shopState.errorMessage != null
              ? CustomErrorWidget(
                  message: shopState.errorMessage!,
                  onRetry: () =>
                      ref.read(shopProvider.notifier).fetchNearbyShops(),
                )
              : shopState.filteredShops.isEmpty
                  ? const EmptyWidget(
                      title: 'No Shops Found',
                      message:
                          'We couldn\'t find any shops matching your search nearby.',
                      icon: Icons.storefront_outlined)
                  : RefreshIndicator(
                      onRefresh: () =>
                          ref.read(shopProvider.notifier).fetchNearbyShops(),
                      child: shopState.isGridView
                          ? _ShopsGrid(shops: shopState.filteredShops)
                          : _ShopsList(shops: shopState.filteredShops),
                    ),
    );
  }
}

class _ShopsList extends StatelessWidget {
  final List<dynamic> shops;
  const _ShopsList({required this.shops});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.m),
      itemCount: shops.length,
      separatorBuilder: (context, index) => AppSpacing.vM,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          child: ShopDiscoveryCard(shop: shops[index], isGrid: false),
        );
      },
    );
  }
}

class _ShopsGrid extends StatelessWidget {
  final List<dynamic> shops;
  const _ShopsGrid({required this.shops});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacing.m),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacing.m,
        crossAxisSpacing: AppSpacing.m,
        childAspectRatio: 0.7,
      ),
      itemCount: shops.length,
      itemBuilder: (context, index) {
        return ShopDiscoveryCard(shop: shops[index], isGrid: true);
      },
    );
  }
}
