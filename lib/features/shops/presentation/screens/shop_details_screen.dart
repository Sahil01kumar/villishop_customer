import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/network_image_with_fallback.dart';
import '../../../../core/widgets/shimmer_widget.dart';
import '../../../home/presentation/widgets/product_card.dart';
import '../widgets/details/shop_info_section.dart';
import '../widgets/details/offer_section.dart';
import '../widgets/details/shop_category_tabs.dart';
import '../../providers/shop_details_provider.dart';
import '../../providers/current_shop_provider.dart';
import '../../../../core/widgets/floating_cart_bar.dart';

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

    if (state.isLoading && state.shop == null) {
      return const _ShopDetailsSkeleton();
    }

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
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // Premium Shop Banner
              SliverAppBar(
                expandedHeight: 220,
                pinned: true,
                elevation: 0,
                scrolledUnderElevation: 0,
                backgroundColor: Colors.white,
                leading: const SizedBox.shrink(), // Custom back button used
                flexibleSpace: FlexibleSpaceBar(
                  background: NetworkImageWithFallback(
                    imageUrl: shop.imageUrl,
                    fit: BoxFit.cover,
                    fallbackIcon: Icons.storefront_rounded,
                  ),
                ),
                actions: [
                  _CircleActionButton(
                    icon: Icons.share_rounded,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 12),
                  _CircleActionButton(
                    icon: shop.isFavourite
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    iconColor: shop.isFavourite ? Colors.red : Colors.black87,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                ],
              ),

              // Shop Info Section
              SliverToBoxAdapter(
                child: ShopInfoSection(shop: shop),
              ),

              // Offers Section
              if (shop.offers.isNotEmpty)
                SliverToBoxAdapter(
                  child: OfferSection(offers: shop.offers),
                ),

              // Categories Tabs (Sticky)
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  child: ShopCategoryTabs(
                    categories: const [
                      'All',
                      'Milk',
                      'Paneer',
                      'Ghee',
                      'Butter',
                      'Curd',
                      'Cheese'
                    ],
                    selectedCategory: state.selectedCategory,
                    onCategorySelected: (cat) {
                      ref
                          .read(shopDetailsProvider(widget.shopId).notifier)
                          .updateCategory(cat);
                    },
                  ),
                ),
              ),

              // Product List
              SliverPadding(
                padding: const EdgeInsets.all(AppSpacing.m),
                sliver: state.products.isEmpty
                    ? const SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 40),
                            child: Text('No products found in this category',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )
                    : SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.58,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return ProductCard(
                                    product: state.products[index],
                                    heroContext: 'shop')
                                .animate()
                                .fadeIn(delay: (index * 50).ms)
                                .scale(begin: const Offset(0.95, 0.95));
                          },
                          childCount: state.products.length,
                        ),
                      ),
              ),

              // Store Info / Policies Section
              SliverToBoxAdapter(
                child: _buildStorePolicySection(context, shop),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 140)),
            ],
          ),

          // Custom Floating Back Button
          Positioned(
            top: MediaQuery.of(context).padding.top + 8,
            left: 16,
            child: _CircleActionButton(
              icon: Icons.arrow_back_ios_new_rounded,
              onPressed: () => context.pop(),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingCartBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildStorePolicySection(BuildContext context, dynamic shop) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.l),
      color: const Color(0xFFF8F9FB),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Store Information',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
          const SizedBox(height: 20),
          _policyItem(Icons.access_time_rounded, 'Store Timings',
              shop.storeTiming ?? 'Open 24/7'),
          _policyItem(Icons.location_on_outlined, 'Store Address',
              shop.address ?? 'Village Center, India'),
          if (shop.policies.isNotEmpty) ...[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Divider(thickness: 0.5),
            ),
            const Text('Shop Policies',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
            const SizedBox(height: 16),
            ...shop.policies.map((p) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.verified_user_outlined,
                          size: 18, color: Colors.green),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(p,
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 14,
                                height: 1.3,
                                fontWeight: FontWeight.w500)),
                      ),
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
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(5), blurRadius: 5)
                ]),
            child: Icon(icon, size: 20, color: AppColors.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Text(value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        letterSpacing: -0.2)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CircleActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? iconColor;

  const _CircleActionButton(
      {required this.icon, required this.onPressed, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(220),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(10),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(icon, color: iconColor ?? Colors.black87, size: 20),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 60;
  @override
  double get maxExtent => 60;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: child,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class _ShopDetailsSkeleton extends StatelessWidget {
  const _ShopDetailsSkeleton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShimmerWidget.rectangular(height: 220),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerWidget.rectangular(
                      height: 24,
                      width: MediaQuery.of(context).size.width * 0.6),
                  const SizedBox(height: 8),
                  ShimmerWidget.rectangular(
                      height: 16,
                      width: MediaQuery.of(context).size.width * 0.4),
                  const SizedBox(height: 24),
                  Row(
                    children: List.generate(
                        3,
                        (index) => const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: ShimmerWidget.rectangular(height: 40),
                              ),
                            )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ShimmerWidget.rectangular(height: 50),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.6,
              ),
              itemCount: 4,
              itemBuilder: (context, index) => const ShimmerWidget.rounded(
                  width: double.infinity, height: 240),
            ),
          ],
        ),
      ),
    );
  }
}
