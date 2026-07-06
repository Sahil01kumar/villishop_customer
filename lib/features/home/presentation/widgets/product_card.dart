import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rL,
        border: Border.all(color: Colors.grey.withAlpha(51)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                padding: const EdgeInsets.all(AppSpacing.m),
                decoration: const BoxDecoration(
                  color: Color(0xFFF9FAFB),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(AppRadius.l)),
                ),
                child: Center(
                  child: product.imageUrl.isNotEmpty
                      ? Image.network(product.imageUrl, fit: BoxFit.contain)
                      : Icon(Icons.shopping_bag_outlined, size: 60, color: AppColors.primary.withAlpha(50)),
                ),
              ),
              if (product.discountPercentage > 0)
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: const BoxDecoration(
                      color: Color(0xFF2563EB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppRadius.l),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      '${product.discountPercentage}% OFF',
                      style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.favorite_border, size: 18, color: Colors.grey),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.s),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.timer_outlined, size: 12, color: Colors.green),
                        SizedBox(width: 2),
                        Text('8 MINS', style: TextStyle(color: Colors.green, fontSize: 9, fontWeight: FontWeight.w900)),
                      ],
                    ),
                    if (product.rating > 0)
                      Row(
                        children: [
                          Text(product.rating.toString(), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                          const Icon(Icons.star, size: 10, color: AppColors.secondary),
                        ],
                      ),
                  ],
                ),
                AppSpacing.vXS,
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13, height: 1.2),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(product.weight, style: TextStyle(color: Colors.grey[600], fontSize: 11, fontWeight: FontWeight.w500)),
                AppSpacing.vM,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (product.originalPrice > product.price)
                          Text(
                            '₹${product.originalPrice.toStringAsFixed(0)}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        Text(
                          '₹${product.price.toStringAsFixed(0)}',
                          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                        ),
                      ],
                    ),
                    _AddButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primary, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'ADD',
        style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 12),
      ),
    );
  }
}
