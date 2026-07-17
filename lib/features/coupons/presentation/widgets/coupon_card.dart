import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import '../../data/models/coupon_model.dart';

class PremiumCouponCard extends StatelessWidget {
  final CouponModel coupon;
  final VoidCallback onApply;
  final bool isApplied;

  const PremiumCouponCard({
    super.key,
    required this.coupon,
    required this.onApply,
    this.isApplied = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
        border: Border.all(
          color: isApplied ? AppColors.primary : Colors.grey.withAlpha(40),
          width: isApplied ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.m),
            child: Row(
              children: [
                _buildOfferTypeIcon(),
                AppSpacing.hM,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withAlpha(20),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: AppColors.primary.withAlpha(50)),
                            ),
                            child: Text(
                              coupon.code,
                              style: const TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w900,
                                fontSize: 13,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: onApply,
                            child: Text(
                              isApplied ? 'APPLIED' : 'APPLY',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.primary),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        coupon.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      Text(
                        coupon.description,
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildExpiryInfo(),
        ],
      ),
    );
  }

  Widget _buildOfferTypeIcon() {
    IconData icon;
    Color color;

    switch (coupon.type) {
      case CouponType.freeDelivery:
        icon = Icons.delivery_dining_outlined;
        color = Colors.blue;
        break;
      case CouponType.bogo:
        icon = Icons.filter_2_outlined;
        color = Colors.orange;
        break;
      default:
        icon = Icons.local_offer_outlined;
        color = AppColors.primary;
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }

  Widget _buildExpiryInfo() {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius:
            const BorderRadius.vertical(bottom: Radius.circular(AppRadius.m)),
      ),
      child: const Row(
        children: [
          Icon(Icons.timer_outlined, size: 14, color: Colors.grey),
          SizedBox(width: 4),
          Text(
            'Expires in 2 days',
            style: TextStyle(
                color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            'T&C Apply',
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
