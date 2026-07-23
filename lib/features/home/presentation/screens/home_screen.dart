import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/error_widget.dart';
import 'package:villishop_customer/core/widgets/shimmer_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import 'package:villishop_customer/features/orders/providers/active_order_provider.dart';
import 'package:villishop_customer/features/orders/domain/entities/order_lifecycle_state.dart';
import 'package:villishop_customer/features/location/presentation/widgets/location_selector_sheet.dart';
import 'package:villishop_customer/core/widgets/rotating_hint_search_bar.dart';
import 'package:villishop_customer/features/main/providers/navigation_provider.dart';

import '../widgets/section_header.dart';
import '../widgets/shop_card.dart';
import '../widgets/product_card.dart';
import '../widgets/address_card.dart';
import '../../providers/home_provider.dart';
import '../../../authentication/providers/auth_provider.dart';

import '../widgets/active_order_card.dart';
import '../widgets/home_trust_banner.dart';
import '../widgets/home_flash_sale.dart';
import '../widgets/home_category_grid.dart';
import '../widgets/home_brand_grid.dart';
import '../widgets/home_promotion_section.dart';
import '../widgets/home_quick_categories.dart';
import '../widgets/home_hero_banner.dart';
import '../../../products/providers/recent_products_provider.dart';
import '../../../../core/widgets/floating_cart_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late ProviderSubscription _locationSubscription;
  late ProviderSubscription _orderSubscription;

  @override
  void initState() {
    super.initState();
    _locationSubscription = ref.listenManual(
      locationProvider.select(
          (s) => '${s.selectedAddress?.id}_${s.selectedAddress?.fullAddress}'),
      (prev, next) {
        if (prev != next) {
          ref.read(homeProvider.notifier).fetchHomeData();
        }
      },
    );

    _orderSubscription = ref.listenManual(
      activeOrderProvider.select((o) => o?.lifecycleState),
      (prev, next) {
        if (next == OrderLifecycleState.delivered) {
          ref.read(homeProvider.notifier).fetchHomeData(silent: true);
        }
      },
    );
  }

  @override
  void dispose() {
    _locationSubscription.close();
    _orderSubscription.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);
    final isServiceable =
        ref.watch(locationProvider.select((s) => s.isServiceable));

    return Scaffold(
      backgroundColor: Colors.white,
      body: homeState.isLoading && homeState.banners.isEmpty
          ? const _HomeSkeleton()
          : homeState.errorMessage != null
              ? CustomErrorWidget(
                  message: homeState.errorMessage!,
                  onRetry: () => ref.read(homeProvider.notifier).refresh(),
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    await ref.read(homeProvider.notifier).refresh();
                    await ref.read(locationProvider.notifier).loadAddresses();
                  },
                  color: AppColors.primary,
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      _buildAppBar(context),

                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: AppSpacing.m),
                          child: HomeHeroBanner(banners: homeState.banners),
                        ),
                      ),

                      // Active Order Card - MOVED LOWER and redesigned
                      const SliverToBoxAdapter(child: ActiveOrderCard()),

                      if (!isServiceable)
                        SliverToBoxAdapter(
                          child: _buildServiceabilityBanner(context),
                        ),

                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: AppSpacing.m),
                          child: HomeQuickCategories(),
                        ),
                      ),

                      // Premium Category Grid
                      SliverToBoxAdapter(
                        child:
                            HomeCategoryGrid(categories: homeState.categories),
                      ),

                      // Flash Sale
                      if (homeState.todayDeals.isNotEmpty)
                        SliverToBoxAdapter(
                          child: HomeFlashSale(
                            products: homeState.todayDeals
                                .map((d) => d.product)
                                .toList(),
                          ),
                        ),

                      // Promotion Section
                      const SliverToBoxAdapter(child: HomePromotionSection()),

                      // Brands
                      const SliverToBoxAdapter(child: HomeBrandGrid()),

                      // Trust Banner
                      const SliverToBoxAdapter(child: HomeTrustBanner()),

                      // Recently Viewed
                      const SliverToBoxAdapter(child: _RecentlyViewedSection()),

                      // Daily Essentials
                      if (homeState.featuredProducts.isNotEmpty)
                        SliverToBoxAdapter(
                          child: _buildProductSection(
                            title: 'Daily Essentials',
                            subtitle: 'Fresh every morning',
                            products: homeState.featuredProducts,
                          ),
                        ),

                      // Nearby Shops
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              title: 'Trusted Local Shops',
                              subtitle: 'Support your village entrepreneurs',
                              onSeeAll: () => context.push(AppRoutes.shops),
                            ),
                            SizedBox(
                              height: 280,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSpacing.m),
                                itemCount: homeState.popularShops.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: AppSpacing.m),
                                    child: ShopCard(
                                        shop: homeState.popularShops[index]),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Bestsellers
                      if (homeState.bestSellers.isNotEmpty)
                        SliverToBoxAdapter(
                          child: _buildProductSection(
                            title: 'Best Sellers',
                            subtitle: 'Loved by your neighbors',
                            products: homeState.bestSellers,
                            heroContext: 'bestsellers',
                          ),
                        ),

                      // Seasonal Collection
                      if (homeState.seasonalCollection.isNotEmpty)
                        SliverToBoxAdapter(
                          child: _buildProductSection(
                            title: 'Seasonal Fresh',
                            subtitle: 'Best of this season',
                            products: homeState.seasonalCollection,
                            heroContext: 'seasonal',
                          ),
                        ),

                      // New Arrivals
                      if (homeState.newArrivals.isNotEmpty)
                        SliverToBoxAdapter(
                          child: _buildProductSection(
                            title: 'New Arrivals',
                            subtitle: 'Just landed in the village',
                            products: homeState.newArrivals,
                            heroContext: 'newarrivals',
                          ),
                        ),

                      // Recommended Products
                      SliverToBoxAdapter(
                        child: _buildProductSection(
                          title: 'Recommended for You',
                          subtitle: 'Handpicked items based on your needs',
                          products: homeState.featuredProducts,
                          heroContext: 'recommended',
                        ),
                      ),

                      const SliverToBoxAdapter(child: SizedBox(height: 120)),
                    ],
                  ),
                ),
      floatingActionButton: const FloatingCartBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final locationLoading =
        ref.watch(locationProvider.select((s) => s.isLoading));
    final selectedAddress =
        ref.watch(locationProvider.select((s) => s.selectedAddress));
    final permissionStatus =
        ref.watch(locationProvider.select((s) => s.permissionStatus));

    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      expandedHeight: 160.0,
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.white,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            const SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
              child: Row(
                children: [
                  Expanded(
                    child: locationLoading ||
                            (selectedAddress == null &&
                                permissionStatus ==
                                    LocationPermissionStatus.granted)
                        ? const _AddressShimmer()
                        : AddressCard(
                            label: selectedAddress?.label ?? 'Set Location',
                            address: selectedAddress?.fullAddress ??
                                'Click to pick village address',
                            onTap: () => _showLocationSelector(context),
                          ),
                  ),
                  _buildNotificationBadge(context),
                  AppSpacing.hS,
                  _buildProfileAvatar(context),
                ],
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(74),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(
              AppSpacing.m, 0, AppSpacing.m, AppSpacing.m),
          child: RotatingHintSearchBar(
            hints: const [
              'Search "milk"',
              'Search "fresh eggs"',
              'Search "organic atta"',
              'Search "seasonal fruits"',
              'Search "dairy fresh"',
            ],
            onTap: () => context.push(AppRoutes.search),
          ),
        ),
      ),
    );
  }

  Widget _buildServiceabilityBanner(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          AppSpacing.m, 0, AppSpacing.m, AppSpacing.m),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red[100]!),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline_rounded, color: Colors.red, size: 20),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Oh no! We don\'t deliver to this village yet. Try another location.',
              style: TextStyle(
                  color: Colors.red, fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => _showLocationSelector(context),
            child: const Text('CHANGE',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontSize: 12)),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationBadge(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFF8F9FB),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.withAlpha(20))),
      child: IconButton(
        icon: const Icon(Icons.notifications_none_rounded,
            color: Colors.black, size: 24),
        onPressed: () => context.push(AppRoutes.notifications),
      ),
    );
  }

  Widget _buildProfileAvatar(BuildContext context) {
    final user = ref
        .watch(authProvider)
        .maybeWhen(authenticated: (u) => u, orElse: () => null);
    final userProfilePic = user?.profilePicture;
    final hasProfilePic = userProfilePic != null && userProfilePic.isNotEmpty;

    return GestureDetector(
      onTap: () {
        ref.read(navigationIndexProvider.notifier).state = 4;
        context.go(AppRoutes.profile);
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: AppColors.primary.withAlpha(20), shape: BoxShape.circle),
        child: hasProfilePic
            ? CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(userProfilePic),
              )
            : Image.asset(
                'assets/images/logo.png',
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
      ),
    );
  }

  Widget _buildProductSection(
      {required String title,
      required String subtitle,
      required List<dynamic> products,
      String heroContext = 'home'}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: title, subtitle: subtitle, onSeeAll: () {}),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.m),
                child: ProductCard(
                  product: products[index],
                  heroContext: heroContext,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showLocationSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const LocationSelectorSheet(),
    );
  }
}

class _RecentlyViewedSection extends ConsumerWidget {
  const _RecentlyViewedSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentProducts = ref.watch(recentProductsProvider);

    if (recentProducts.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: 'Recently Viewed',
          subtitle: 'Items you might need again',
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: recentProducts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.m),
                child: ProductCard(
                  product: recentProducts[index],
                  heroContext: 'recent',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AddressShimmer extends StatelessWidget {
  const _AddressShimmer();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ShimmerWidget.circular(width: 30, height: 30),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerWidget.rectangular(height: 18, width: 100),
              SizedBox(height: 4),
              ShimmerWidget.rectangular(height: 12, width: double.infinity),
            ],
          ),
        ),
      ],
    );
  }
}

class _HomeSkeleton extends StatelessWidget {
  const _HomeSkeleton();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          // Location Shimmer
          Padding(
            padding: const EdgeInsets.all(AppSpacing.m),
            child: Row(
              children: [
                const ShimmerWidget.circular(width: 40, height: 40),
                AppSpacing.hM,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerWidget.rectangular(
                          height: 12,
                          width: MediaQuery.of(context).size.width * 0.3),
                      const SizedBox(height: 6),
                      ShimmerWidget.rectangular(
                          height: 16,
                          width: MediaQuery.of(context).size.width * 0.5),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Search Bar Shimmer
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: ShimmerWidget.rounded(width: double.infinity, height: 54),
          ),
          AppSpacing.vL,
          // Banner Shimmer
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: ShimmerWidget.rounded(width: double.infinity, height: 180),
          ),
          AppSpacing.vL,
          // Category Grid Shimmer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 16,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => const Column(
                children: [
                  ShimmerWidget.circular(width: 56, height: 56),
                  SizedBox(height: 8),
                  ShimmerWidget.rectangular(height: 8, width: 40),
                ],
              ),
            ),
          ),
          AppSpacing.vL,
          // Section Title Shimmer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: ShimmerWidget.rectangular(
                height: 24, width: MediaQuery.of(context).size.width * 0.4),
          ),
          AppSpacing.vM,
          // Product Horizontal Shimmer
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
              itemCount: 4,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 16),
                child: ShimmerWidget.rounded(width: 156, height: 240),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
