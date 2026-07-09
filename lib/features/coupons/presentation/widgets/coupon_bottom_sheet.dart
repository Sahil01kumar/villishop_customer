import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/primary_button.dart';
import 'package:villishop_customer/features/coupons/providers/coupon_provider.dart';
import 'package:villishop_customer/features/coupons/data/models/coupon_model.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';

class CouponBottomSheet extends ConsumerStatefulWidget {
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
  ConsumerState<CouponBottomSheet> createState() => _CouponBottomSheetState();
}

class _CouponBottomSheetState extends ConsumerState<CouponBottomSheet> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(couponProvider.notifier).fetchCoupons(
          cartValue: widget.cartValue,
          shopIds: widget.shopIds,
          productIds: widget.productIds,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(couponProvider);

    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.m, 12, AppSpacing.m, 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 4, width: 40,
              decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Apply Coupon', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, letterSpacing: -0.5)),
              IconButton(
                onPressed: () => Navigator.pop(context), 
                icon: const Icon(Icons.close_rounded, color: Colors.black),
                style: IconButton.styleFrom(backgroundColor: Colors.grey[100]),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  textCapitalization: TextCapitalization.characters,
                  style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
                  decoration: InputDecoration(
                    hintText: 'Enter coupon code',
                    hintStyle: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.normal),
                    fillColor: Colors.grey[50],
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.withAlpha(30)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.withAlpha(30)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              TextButton(
                onPressed: () => _handleApply(_controller.text),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  backgroundColor: AppColors.primary.withAlpha(10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: const Text('APPLY', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary, fontSize: 15)),
              ),
            ],
          ),
          if (state.errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 4),
              child: Row(
                children: [
                  const Icon(Icons.error_outline_rounded, color: Colors.red, size: 16),
                  const SizedBox(width: 6),
                  Text(state.errorMessage!, style: const TextStyle(color: Colors.red, fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          const SizedBox(height: 32),
          const Text('AVAILABLE OFFERS', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, color: Colors.grey, letterSpacing: 1.2)),
          const SizedBox(height: 16),
          if (state.isLoading)
            const Center(child: Padding(padding: EdgeInsets.all(20), child: CircularProgressIndicator()))
          else if (state.availableCoupons.isEmpty)
             const Center(child: Padding(padding: EdgeInsets.all(20), child: Text('No offers available for this village yet.')))
          else
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: state.availableCoupons.length,
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final coupon = state.availableCoupons[index];
                  final isApplied = state.appliedCoupon?.id == coupon.id;
                  return _CouponListItem(
                    coupon: coupon,
                    isApplied: isApplied,
                    onApply: () => _handleApply(coupon.code),
                    onRemove: () {
                      ref.read(couponProvider.notifier).removeCoupon();
                      ref.read(cartProvider.notifier).updateWithCoupon(null, null);
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  void _handleApply(String code) async {
    if (code.isEmpty) return;
    FocusScope.of(context).unfocus();
    
    final success = await ref.read(couponProvider.notifier).applyCouponCode(
      code,
      cartValue: widget.cartValue,
      deliveryCharge: widget.deliveryCharge,
      shopIds: widget.shopIds,
      productIds: widget.productIds,
    );

    if (success && mounted) {
      final newState = ref.read(couponProvider);
      ref.read(cartProvider.notifier).updateWithCoupon(newState.calculation, newState.appliedCoupon?.code);
      _showSuccessDialog(newState.calculation?.discountAmount ?? 0);
    }
  }

  void _showSuccessDialog(double amount) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.celebration_rounded, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            const Text('Coupon Applied!', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22)),
            const SizedBox(height: 8),
            Text(
              amount > 0 
                ? 'You saved ₹${amount.toStringAsFixed(0)} on this order!'
                : 'Free delivery applied to your order!', 
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 28),
            PrimaryButton(
              text: 'YAY, THANKS!', 
              onPressed: () {
                Navigator.pop(context); // Close dialog
                Navigator.pop(context); // Close bottom sheet
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CouponListItem extends StatelessWidget {
  final CouponModel coupon;
  final bool isApplied;
  final VoidCallback onApply;
  final VoidCallback onRemove;

  const _CouponListItem({
    required this.coupon,
    required this.isApplied,
    required this.onApply,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isApplied ? Colors.green : Colors.grey.withAlpha(30), width: isApplied ? 2 : 1),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(5), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: isApplied ? Colors.green.withAlpha(10) : AppColors.primary.withAlpha(10),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.confirmation_num_outlined, size: 14, color: isApplied ? Colors.green : AppColors.primary),
                    const SizedBox(width: 6),
                    Text(
                      coupon.code, 
                      style: TextStyle(
                        fontWeight: FontWeight.w900, 
                        color: isApplied ? Colors.green : AppColors.primary, 
                        letterSpacing: 1.1,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              if (isApplied)
                TextButton.icon(
                  onPressed: onRemove,
                  icon: const Icon(Icons.close_rounded, size: 14, color: Colors.red),
                  label: const Text('REMOVE', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 12)),
                )
              else
                TextButton(
                  onPressed: onApply,
                  child: const Text('APPLY', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(coupon.title, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 2),
          Text(coupon.description, style: TextStyle(color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.w500)),
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              Clipboard.setData(ClipboardData(text: coupon.code));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Code ${coupon.code} copied!'),
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            child: Row(
              children: [
                Icon(Icons.copy_rounded, size: 14, color: Colors.grey[400]),
                const SizedBox(width: 4),
                Text('Copy Code', style: TextStyle(color: Colors.grey[500], fontSize: 11, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
