import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/network_image_with_fallback.dart';
import '../../../products/presentation/widgets/product_grid_card.dart';
import '../widgets/details/shop_info_section.dart';
import '../widgets/details/offer_section.dart';
import '../widgets/details/shop_category_tabs.dart';
import '../../providers/shop_details_provider.dart';
import '../../providers/current_shop_provider.dart';
import '../../../main/providers/navigation_provider.dart';

class ShopDetailsScreen extends ConsumerStatefulWidget {
  final String shopId;

  const ShopDetailsScreen({super.key, required this.shopId});

  @override
  ConsumerState<ShopDetailsScreen> createState() => _ShopDetailsScreenState();
}

class _ShopDetailsScreenState extends ConsumerState<ShopDetailsScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(currentShopIdProvider.notifier).state = widget.shopId;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(shopDetailsProvider(widget.shopId));

    if (state.isLoading) return const Scaffold(body: LoadingWidget());
    if (state.errorMessage != null) {
      return Scaffold(
        body: CustomErrorWidget(
          message: state.errorMessage!,
          onRetry: () => ref
              .read(shopDetailsProvider(widget.shopId).notifier)
              .fetchShopDetails(),
        ),
      );
    }

    final shop = state.shop;
    if (shop == null) {
      return const Scaffold(body: Center(child: Text('Shop not found')));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Premium Shop Banner
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: NetworkImageWithFallback(
                imageUrl: shop.imageUrl,
                fit: BoxFit.cover,
                fallbackIcon: Icons.storefront,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                    shop.isFavourite ? Icons.favorite : Icons.favorite_border,
                    color: shop.isFavourite ? Colors.red : null),
                onPressed: () {},
              ),
            ],
          ),

          // Shop Info Section
          SliverToBoxAdapter(
            child: ShopInfoSection(shop: shop),
          ),

          // Offers Section
          SliverToBoxAdapter(
            child: OfferSection(offers: shop.offers),
          ),

          AppSpacing.vL.toSliver(),

          // Categories Tabs (Sticky)
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              child: ShopCategoryTabs(
                categories: const ['All', 'Milk', 'Paneer', 'Ghee', 'Butter'],
                selectedCategory: state.selectedCategory,
                onCategorySelected: (cat) {
                  ref
                      .read(shopDetailsProvider(widget.shopId).notifier)
                      .updateCategory(cat);
                  // Navigate to Categories tab with new taxonomy
                  ref.read(navigationIndexProvider.notifier).state = 1;
                },
              ),
            ),
          ),

          // Product List
          SliverPadding(
            padding: const EdgeInsets.all(AppSpacing.m),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: AppSpacing.m,
                crossAxisSpacing: AppSpacing.m,
                childAspectRatio: 0.60,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductGridCard(product: state.products[index]);
                },
                childCount: state.products.length,
              ),
            ),
          ),

          // Store Info / Policies Section
          SliverToBoxAdapter(
            child: _buildStorePolicySection(context, shop),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }

  Widget _buildStorePolicySection(BuildContext context, dynamic shop) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      color: Colors.grey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Store Information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          AppSpacing.vM,
          _policyItem(Icons.access_time, 'Store Timings', shop.storeTiming),
          _policyItem(Icons.location_on_outlined, 'Store Address',
              shop.address ?? 'Village Center, India'),
          if (shop.policies.isNotEmpty) ...[
            AppSpacing.vL,
            const Text('Shop Policies',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            AppSpacing.vM,
            ...shop.policies.map((p) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle_outline,
                          size: 16, color: Colors.green),
                      const SizedBox(width: 8),
                      Text(p,
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 13)),
                    ],
                  ),
                )),
          ],
        ],
      ),
    );
  }

  Widget _policyItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12)),
              Text(value,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 50;
  @override
  double get maxExtent => 50;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

extension on SizedBox {
  Widget toSliver() => SliverToBoxAdapter(child: this);
}
