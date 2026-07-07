import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/core/widgets/empty_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/wishlist/providers/wishlist_provider.dart';
import 'package:villishop_customer/features/wishlist/presentation/widgets/wishlist_product_card.dart';
import 'package:villishop_customer/features/wishlist/presentation/widgets/favourite_shop_card.dart';
import 'package:villishop_customer/features/wishlist/presentation/widgets/collection_card.dart';

class WishlistScreen extends ConsumerStatefulWidget {
  const WishlistScreen({super.key});

  @override
  ConsumerState<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends ConsumerState<WishlistScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(wishlistProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('My Favourites', style: TextStyle(fontWeight: FontWeight.bold)),
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.primary,
          unselectedLabelColor: Colors.grey,
          indicatorColor: AppColors.primary,
          indicatorWeight: 3,
          tabs: const [
            Tab(text: 'Products'),
            Tab(text: 'Shops'),
            Tab(text: 'Collections'),
          ],
        ),
      ),
      body: state.isLoading
          ? const LoadingWidget()
          : TabBarView(
              controller: _tabController,
              children: [
                _buildProductsTab(state),
                _buildShopsTab(state),
                _buildCollectionsTab(state),
              ],
            ),
    );
  }

  Widget _buildProductsTab(dynamic state) {
    if (state.products.isEmpty) {
      return const EmptyWidget(message: 'No products in wishlist', icon: Icons.favorite_border);
    }
    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.m),
      itemCount: state.products.length,
      separatorBuilder: (context, index) => AppSpacing.vS,
      itemBuilder: (context, index) {
        final item = state.products[index];
        return WishlistProductCard(
          item: item,
          onRemove: () => ref.read(wishlistProvider.notifier).removeFromWishlist(item.product.id),
          onAddToCart: () {},
        );
      },
    );
  }

  Widget _buildShopsTab(dynamic state) {
    if (state.shops.isEmpty) {
      return const EmptyWidget(message: 'No favourite shops', icon: Icons.storefront);
    }
    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.m),
      itemCount: state.shops.length,
      separatorBuilder: (context, index) => AppSpacing.vS,
      itemBuilder: (context, index) {
        final item = state.shops[index];
        return FavouriteShopCard(
          item: item,
          onRemove: () => ref.read(wishlistProvider.notifier).removeShopFromFavourites(item.shop.id),
          onTap: () => context.push('${AppRoutes.shopDetails}/${item.shop.id}'),
        );
      },
    );
  }

  Widget _buildCollectionsTab(dynamic state) {
    if (state.collections.isEmpty) {
      return const EmptyWidget(message: 'No collections created', icon: Icons.collections_bookmark_outlined);
    }
    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacing.m),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacing.m,
        crossAxisSpacing: AppSpacing.m,
        childAspectRatio: 1.1,
      ),
      itemCount: state.collections.length,
      itemBuilder: (context, index) {
        return CollectionCard(
          collection: state.collections[index],
          onTap: () {},
        );
      },
    );
  }
}
