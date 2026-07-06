import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../../core/router/app_router.dart';
import '../../../location/providers/location_provider.dart';
import '../widgets/section_header.dart';
import '../widgets/category_item.dart';
import '../widgets/shop_card.dart';
import '../widgets/product_card.dart';
import '../widgets/home_banner.dart';
import '../widgets/address_card.dart';
import '../widgets/search_suggestions.dart';
import '../../providers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    final locationState = ref.watch(locationProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: homeState.isLoading && homeState.banners.isEmpty
          ? const LoadingWidget()
          : homeState.errorMessage != null
              ? CustomErrorWidget(
                  message: homeState.errorMessage!,
                  onRetry: () => ref.read(homeProvider.notifier).refresh(),
                )
              : RefreshIndicator(
                  onRefresh: () => ref.read(homeProvider.notifier).refresh(),
                  color: AppColors.primary,
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      // Premium App Bar
                      SliverAppBar(
                        floating: true,
                        pinned: true,
                        snap: true,
                        expandedHeight: 140.0,
                        backgroundColor: AppColors.primary,
                        elevation: 0,
                        automaticallyImplyLeading: false,
                        title: AddressCard(
                          label: locationState.selectedAddress?.label ?? 'Set Location',
                          address: locationState.selectedAddress?.fullAddress ?? 'Click to pick village address',
                          onTap: () => context.push(AppRoutes.addresses),
                        ),
                        actions: [
                          IconButton(
                            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: AppSpacing.m),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white.withAlpha(50),
                              child: const Icon(Icons.person_outline, color: Colors.white, size: 20),
                            ),
                          ),
                        ],
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(80),
                          child: Container(
                            color: AppColors.primary,
                            padding: const EdgeInsets.fromLTRB(AppSpacing.m, 0, AppSpacing.m, AppSpacing.m),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomSearchBar(
                                  hint: 'Search "milk"',
                                  readOnly: true,
                                  onTap: () => context.push(AppRoutes.search),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 1,
                                        color: Colors.grey[200],
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.mic_none, color: AppColors.primary),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Search Suggestions
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: AppSpacing.s),
                          child: SearchSuggestions(),
                        ),
                      ),

                      if (homeState.banners.isEmpty && 
                          homeState.categories.isEmpty && 
                          homeState.popularShops.isEmpty)
                        const SliverFillRemaining(
                          child: EmptyWidget(message: 'No data available'),
                        )
                      else ...[
                        // Premium Banner
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: AppSpacing.s),
                            child: HomeBanner(banners: homeState.banners),
                          ),
                        ),

                        // Categories Section
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SectionHeader(title: 'Shop by Category', subtitle: 'Fresh from local sources'),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 16,
                                    crossAxisSpacing: 12,
                                    childAspectRatio: 0.75,
                                  ),
                                  itemCount: homeState.categories.length,
                                  itemBuilder: (context, index) {
                                    return TweenAnimationBuilder<double>(
                                      tween: Tween(begin: 0.0, end: 1.0),
                                      duration: Duration(milliseconds: 400 + (index * 100)),
                                      child: CategoryItem(
                                        category: homeState.categories[index],
                                        onTap: () {},
                                      ),
                                      builder: (context, value, child) {
                                        return Opacity(
                                          opacity: value,
                                          child: Transform.translate(
                                            offset: Offset(0, 20 * (1 - value)),
                                            child: child,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Today's Deals
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SectionHeader(title: "Today's Best Deals", subtitle: 'Pocket-friendly prices', onSeeAll: () {}),
                              SizedBox(
                                height: 260,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  padding: const EdgeInsets.only(right: AppSpacing.m),
                                  itemCount: homeState.todayDeals.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(product: homeState.todayDeals[index].product);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Popular Shops Section
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SectionHeader(title: 'Popular Shops', subtitle: 'Trusted stores in your village', onSeeAll: () {}),
                              SizedBox(
                                height: 260,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  padding: const EdgeInsets.only(right: AppSpacing.m),
                                  itemCount: homeState.popularShops.length,
                                  itemBuilder: (context, index) {
                                    return ShopCard(shop: homeState.popularShops[index]);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Featured Products
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SectionHeader(title: 'Featured Products', subtitle: 'Handpicked for you'),
                              SizedBox(
                                height: 260,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  padding: const EdgeInsets.only(right: AppSpacing.m),
                                  itemCount: homeState.featuredProducts.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(product: homeState.featuredProducts[index]);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Recommended Products
                        const SliverToBoxAdapter(
                          child: SectionHeader(title: 'Recommended', subtitle: 'Based on your needs'),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, AppSpacing.m),
                          sliver: SliverToBoxAdapter(
                            child: SizedBox(
                              height: 260,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                padding: const EdgeInsets.only(right: AppSpacing.m),
                                itemCount: homeState.featuredProducts.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(product: homeState.featuredProducts[index]);
                                },
                              ),
                            ),
                          ),
                        ),

                        const SliverToBoxAdapter(child: SizedBox(height: 100)),
                      ],
                    ],
                  ),
                ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        elevation: 6,
        icon: Stack(
          children: [
            const Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 24),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(color: AppColors.secondary, shape: BoxShape.circle),
                constraints: const BoxConstraints(minWidth: 12, minHeight: 12),
                child: const Text('2', style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
        label: const Text('VIEW CART', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 13, letterSpacing: 1.1)),
      ),
    );
  }
}
