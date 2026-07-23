import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../widgets/offer_card.dart';
import '../widgets/coupon_card.dart';
import '../../providers/offer_provider.dart';

class OffersScreen extends ConsumerWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(offerProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Offers & Coupons',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: state.isLoading
          ? const LoadingWidget()
          : state.errorMessage != null
              ? CustomErrorWidget(
                  message: state.errorMessage!,
                  onRetry: () => ref.read(offerProvider.notifier).refresh())
              : RefreshIndicator(
                  onRefresh: () => ref.read(offerProvider.notifier).refresh(),
                  child: CustomScrollView(
                    slivers: [
                      if (state.campaigns.isNotEmpty)
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.m),
                            child: ClipRRect(
                              borderRadius: AppRadius.rL,
                              child: Container(
                                height: 180,
                                color: Colors.grey[200],
                                child: const Center(
                                    child: Icon(Icons.campaign_outlined,
                                        size: 80, color: AppColors.primary)),
                              ),
                            ),
                          ),
                        ),
                      if (state.flashSales.isNotEmpty) ...[
                        const SliverToBoxAdapter(
                          child: _SectionHeader(
                              title: 'Flash Sale', isFlash: true),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.only(left: AppSpacing.m),
                              itemCount: state.flashSales.length,
                              itemBuilder: (context, index) => OfferCard(
                                  offer: state.flashSales[index], onTap: () {}),
                            ),
                          ),
                        ),
                      ],
                      const SliverToBoxAdapter(
                        child: _SectionHeader(title: 'Available Coupons'),
                      ),
                      if (state.coupons.isEmpty)
                        const SliverToBoxAdapter(
                          child: EmptyWidget(
                            title: 'No Coupons Available',
                            message: 'Check back later for exciting discounts.',
                          ),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.m),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => CouponCard(
                                coupon: state.coupons[index],
                                isSelected: state.selectedCouponCode ==
                                    state.coupons[index].code,
                                onApply: () => ref
                                    .read(offerProvider.notifier)
                                    .applyCoupon(
                                        state.coupons[index].code, 500),
                              ),
                              childCount: state.coupons.length,
                            ),
                          ),
                        ),
                      const SliverToBoxAdapter(
                          child: _SectionHeader(title: 'Best Offers For You')),
                      if (state.offers.isEmpty)
                        const SliverToBoxAdapter(
                          child: EmptyWidget(
                            title: 'No Active Offers',
                            message:
                                'We are working on bringing the best village deals for you.',
                          ),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.m),
                          sliver: SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: AppSpacing.m,
                              childAspectRatio: 2.2,
                            ),
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => OfferCard(
                                  offer: state.offers[index], onTap: () {}),
                              childCount: state.offers.length,
                            ),
                          ),
                        ),
                      const SliverToBoxAdapter(child: SizedBox(height: 100)),
                    ],
                  ),
                ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final bool isFlash;
  const _SectionHeader({required this.title, this.isFlash = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Row(
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
          if (isFlash) ...[
            AppSpacing.hS,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(4)),
              child: const Text('ENDING SOON',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ],
      ),
    );
  }
}
