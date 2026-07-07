import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/coupons/providers/coupon_provider.dart';
import 'coupon_card.dart';

class CouponBottomSheet extends ConsumerStatefulWidget {
  final double cartValue;
  final List<String> shopIds;
  final List<String> productIds;

  const CouponBottomSheet({
    super.key,
    required this.cartValue,
    required this.shopIds,
    required this.productIds,
  });

  @override
  ConsumerState<CouponBottomSheet> createState() => _CouponBottomSheetState();
}

class _CouponBottomSheetState extends ConsumerState<CouponBottomSheet> {
  final _couponController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(couponProvider.notifier).loadCoupons(
          cartValue: widget.cartValue,
          shopIds: widget.shopIds,
          productIds: widget.productIds,
        ));
  }

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(couponProvider);

    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Apply Coupon',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          AppSpacing.vM,
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _couponController,
                  decoration: InputDecoration(
                    hintText: 'Enter coupon code',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                ),
              ),
              AppSpacing.hM,
              PrimaryButton(
                text: 'APPLY',
                isLoading: state.isValidating,
                width: 100,
                onPressed: () async {
                  final success = await ref.read(couponProvider.notifier).applyCoupon(
                    _couponController.text,
                    cartValue: widget.cartValue,
                    shopIds: widget.shopIds,
                    productIds: widget.productIds,
                  );
                  if (success && mounted) {
                    if (context.mounted) Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
          if (state.errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                state.errorMessage!,
                style: const TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          AppSpacing.vL,
          const Text(
            'Available Coupons',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
          ),
          AppSpacing.vM,
          if (state.isLoading)
            const LoadingWidget()
          else
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.availableCoupons.length,
                itemBuilder: (context, index) {
                  final coupon = state.availableCoupons[index];
                  return PremiumCouponCard(
                    coupon: coupon,
                    isApplied: state.appliedCoupon?.id == coupon.id,
                    onApply: () {
                      ref.read(couponProvider.notifier).applyCoupon(
                        coupon.code,
                        cartValue: widget.cartValue,
                        shopIds: widget.shopIds,
                        productIds: widget.productIds,
                      );
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
