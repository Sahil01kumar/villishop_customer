import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/search_bar_widget.dart';
import 'package:villishop_customer/core/widgets/error_widget.dart';
import 'package:villishop_customer/core/widgets/shimmer_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import 'package:villishop_customer/features/location/presentation/widgets/location_selector_sheet.dart';

import '../widgets/section_header.dart';
import '../widgets/category_item.dart';
import '../widgets/shop_card.dart';
import '../widgets/product_card.dart';
import '../widgets/home_banner.dart';
import '../widgets/address_card.dart';
import '../../providers/home_provider.dart';
import '../../../main/providers/navigation_provider.dart';
import '../../../authentication/providers/auth_provider.dart';
import '../../../categories/providers/category_provider.dart';

import '../widgets/active_order_card.dart';
import '../widgets/home_trust_banner.dart';
import '../../../../core/realtime/mock/mock_notification_service.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ProviderSubscription? _locationSubscription;

  @override
  void initState() {
    super.initState();
    // Use listenManual to avoid 'ref.listen in build' issues in complex widget trees
    _locationSubscription = ref.listenManual(
      locationProvider.select((s) => s.selectedAddress),
      (prev, next) {
        if (prev?.id != next?.id || (prev?.latitude != next?.latitude)) {
          ref.read(homeProvider.notifier).fetchHomeData();
        }
      },
    );
  }

  @override
  void dispose() {
    _locationSubscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);
    final locationState = ref.watch(locationProvider);
    final cartCount = ref.watch(cartCountProvider);

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
                      _buildAppBar(context, locationState),

                      // Active Order Card (Blinkit/Zepto Style)
                      const SliverToBoxAdapter(child: ActiveOrderCard()),

                      if (!locationState.isServiceable)
                        SliverToBoxAdapter(
                          child: _buildServiceabilityBanner(context),
                        ),

                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                              AppSpacing.m, 0, AppSpacing.m, AppSpacing.m),
                          child: HomeBanner(banners: homeState.banners),
                        ),
                      ),

                      SliverToBoxAdapter(
                        child: _buildCategorySection(homeState),
                      ),

                      // Module 8.5 Test Button
                      if (kDebugMode)
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSpacing.m),
                            child: OutlinedButton(
                              onPressed: () {
                                ref
                                    .read(mockNotificationServiceProvider)
                                    .triggerMockNotification(
                                      title: 'Test Order Update',
                                      message:
                                          'Your village order is arriving in 5 mins!',
                                      orderId: 'active_order',
                                    );
                              },
                              child: const Text('TRIGGER MOCK NOTIFICATION'),
                            ),
                          ),
                        ),

                      if (homeState.todayDeals.isNotEmpty)
                        SliverToBoxAdapter(
                          child: _buildProductSection(
                            title: "Village Best Deals",
                            subtitle: 'Freshly harvested, pocket-friendly',
                            products: homeState.todayDeals
                                .map((d) => d.product)
                                .toList(),
                          ),
                        ),

                      const SliverToBoxAdapter(child: HomeTrustBanner()),

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
                              height: 250,
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

                      SliverToBoxAdapter(
                        child: _buildProductSection(
                          title: 'Recommended for You',
                          subtitle: 'Handpicked items based on your needs',
                          products: homeState.featuredProducts,
                        ),
                      ),

                      const SliverToBoxAdapter(child: SizedBox(height: 120)),
                    ],
                  ),
                ),
      floatingActionButton:
          cartCount > 0 ? _buildFloatingCart(cartCount) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildAppBar(BuildContext context, LocationState locationState) {
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
                    child: locationState.isLoading ||
                            (locationState.selectedAddress == null &&
                                locationState.permissionStatus ==
                                    LocationPermissionStatus.granted)
                        ? const _AddressShimmer()
                        : AddressCard(
                            label: locationState.selectedAddress?.label ??
                                'Set Location',
                            address:
                                locationState.selectedAddress?.fullAddress ??
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
          child: CustomSearchBar(
            hint: 'Search milk, eggs, or fresh vegetables...',
            readOnly: true,
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
    return GestureDetector(
      onTap: () => context.push(AppRoutes.profile),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: AppColors.primary.withAlpha(20), shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          backgroundImage: user?.profilePicture != null
              ? NetworkImage(user!.profilePicture!)
              : null,
          child: user?.profilePicture == null
              ? const Icon(Icons.person_outline, color: AppColors.primary)
              : null,
        ),
      ),
    );
  }

  Widget _buildCategorySection(HomeState homeState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Shop by Category',
          subtitle: 'Pure & fresh from village',
          onSeeAll: () => ref.read(navigationIndexProvider.notifier).state = 1,
        ),
        SizedBox(
          height: 240,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 16,
              childAspectRatio: 1.2,
            ),
            itemCount: homeState.categories.length,
            itemBuilder: (context, index) {
              final category = homeState.categories[index];
              return CategoryItem(
                category: category,
                onTap: () {
                  ref.read(pendingCategoryIdProvider.notifier).state =
                      category.id;
                  ref.read(navigationIndexProvider.notifier).state = 1;
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductSection(
      {required String title,
      required String subtitle,
      required List<dynamic> products}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: title, subtitle: subtitle, onSeeAll: () {}),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.m),
                child: ProductCard(product: products[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingCart(int count) {
    final cart = ref.watch(cartProvider).cart;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: AppColors.primary.withAlpha(80),
              blurRadius: 15,
              offset: const Offset(0, 8)),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => ref.read(navigationIndexProvider.notifier).state = 2,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$count ITEMS',
                        style: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 10)),
                    Text(
                        '₹${cart.overallSummary.grandTotal.toStringAsFixed(0)}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: -0.5)),
                  ],
                ),
                const Spacer(),
                const Text('VIEW CART',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                        letterSpacing: 1.1)),
                const SizedBox(width: 8),
                const Icon(Icons.shopping_bag_outlined,
                    color: Colors.white, size: 22),
              ],
            ),
          ),
        ),
      ),
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
      child: Column(
        children: [
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.all(AppSpacing.m),
            child: Row(
              children: [
                ShimmerWidget.circular(width: 40, height: 40),
                AppSpacing.hM,
                Expanded(child: ShimmerWidget.rectangular(height: 20)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(AppSpacing.m),
            child: ShimmerWidget.rounded(width: double.infinity, height: 50),
          ),
          const Padding(
            padding: EdgeInsets.all(AppSpacing.m),
            child: ShimmerWidget.rounded(width: double.infinity, height: 150),
          ),
          ...List.generate(
              3,
              (index) => const Padding(
                    padding: EdgeInsets.all(AppSpacing.m),
                    child: Row(
                      children: [
                        ShimmerWidget.rounded(width: 140, height: 200),
                        SizedBox(width: 16),
                        ShimmerWidget.rounded(width: 140, height: 200),
                      ],
                    ),
                  )),
        ],
      ),
    );
  }
}
