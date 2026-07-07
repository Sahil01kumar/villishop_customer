import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../home/data/models/product_model.dart';
import '../../data/models/sub_models/inventory_info.dart';

class ProductGridCard extends StatelessWidget {
  final ProductModel product;

  const ProductGridCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('${AppRoutes.productDetails}/${product.id}'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.rL,
          border: Border.all(color: Colors.grey.withAlpha(40)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageSection(),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoSection(),
                  AppSpacing.vM,
                  _buildActionSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.l)),
          ),
          child: Center(
            child: Hero(
              tag: 'product-${product.id}',
              child: product.imageUrl.isNotEmpty
                  ? Image.network(product.imageUrl, fit: BoxFit.contain)
                  : Icon(Icons.shopping_bag_outlined, size: 50, color: Colors.grey.withAlpha(100)),
            ),
          ),
        ),
        if (product.pricing.discountPercentage > 0)
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
                '${product.pricing.discountPercentage}% OFF',
                style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        if (product.inventory.stockStatus == StockStatus.outOfStock)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(100),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.l)),
              ),
              child: const Center(child: Text('SOLD OUT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
            ),
          ),
      ],
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (product.healthLabels.isVegan)
              const Icon(Icons.radio_button_checked, color: Colors.green, size: 12),
            const Spacer(),
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
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, height: 1.2),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '${product.packaging.weight} ${product.packaging.unit}',
          style: TextStyle(color: Colors.grey[600], fontSize: 11),
        ),
      ],
    );
  }

  Widget _buildActionSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.pricing.mrp > product.pricing.sellingPrice)
              Text(
                '₹${product.pricing.mrp.toStringAsFixed(0)}',
                style: const TextStyle(color: Colors.grey, fontSize: 10, decoration: TextDecoration.lineThrough),
              ),
            Text(
              '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        _AddButton(isOutOfStock: product.inventory.stockStatus == StockStatus.outOfStock),
      ],
    );
  }
}

class _AddButton extends StatelessWidget {
  final bool isOutOfStock;
  const _AddButton({required this.isOutOfStock});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isOutOfStock ? Colors.grey[300] : Colors.white,
        border: Border.all(color: isOutOfStock ? Colors.transparent : AppColors.primary, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'ADD',
        style: TextStyle(
          color: isOutOfStock ? Colors.grey[600] : AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      ),
    );
  }
}
