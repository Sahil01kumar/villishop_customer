import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/skeleton_loader.dart';
import '../../providers/coupon_provider.dart';
import 'coupon_card.dart';

class CouponBottomSheet extends ConsumerWidget {
  final double cartValue;
  final double deliveryCharge;
  final List<String> shopIds;
  final List<String> productIds;

  const CouponBottomSheet({
    super.key,
    required this.cartValue,
    required this.deliveryCharge,
    required this.shopIds,
    required this.productIds,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(couponProvider);
    final notifier = ref.read(couponProvider.notifier);

    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 40),
      decoration: const BoxDecoration(
        color: Color(0xFFF7F8FA),
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: Column(
        children: [
          Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2))),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: Row(
              children: [
                Text('Apply Coupon',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        letterSpacing: -0.5)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildManualEntry(context, ref),
          const SizedBox(height: 24),
          Expanded(
            child: state.isLoading
                ? _buildCouponsSkeleton()
                : state.availableCoupons.isEmpty
                    ? _buildEmptyCoupons()
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.m),
                        itemCount: state.availableCoupons.length,
                        itemBuilder: (context, index) {
                          final coupon = state.availableCoupons[index];
                          final isApplied =
                              state.appliedCoupon?.id == coupon.id;
                          return PremiumCouponCard(
                            coupon: coupon,
                            isApplied: isApplied,
                            onApply: () async {
                              final success = await notifier.applyCoupon(
                                coupon,
                                cartValue: cartValue,
                                deliveryCharge: deliveryCharge,
                                shopIds: shopIds,
                                productIds: productIds,
                              );
                              if (success && context.mounted) {
                                Navigator.pop(context);
                              }
                            },
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildCouponsSkeleton() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SkeletonLoader(
            width: double.infinity, height: 100, borderRadius: 20),
      ),
    );
  }

  Widget _buildEmptyCoupons() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.confirmation_num_outlined, size: 64, color: Colors.grey),
          SizedBox(height: 16),
          Text('No coupons available right now',
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildManualEntry(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(5), blurRadius: 10)
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Enter coupon code',
                  border: InputBorder.none,
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                style: const TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            TextButton(
              onPressed: () async {
                final code = controller.text.trim();
                if (code.isNotEmpty) {
                  final success =
                      await ref.read(couponProvider.notifier).applyCouponCode(
                            code,
                            cartValue: cartValue,
                            deliveryCharge: deliveryCharge,
                            shopIds: shopIds,
                            productIds: productIds,
                          );
                  if (success && context.mounted) Navigator.pop(context);
                }
              },
              child: const Text('APPLY',
                  style: TextStyle(
                      color: AppColors.primary, fontWeight: FontWeight.w900)),
            ),
          ],
        ),
      ),
    );
  }
}
