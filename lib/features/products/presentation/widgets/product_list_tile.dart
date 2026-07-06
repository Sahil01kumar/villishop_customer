import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../home/data/models/product_model.dart';

class ProductListTile extends StatelessWidget {
  final ProductModel product;

  const ProductListTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
        border: Border.all(color: Colors.grey.withAlpha(40)),
      ),
      child: Row(
        children: [
          _buildProductImage(),
          AppSpacing.hM,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBadges(),
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (product.brand != null)
                  Text(
                    product.brand!,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                AppSpacing.vS,
                Text(
                  '${product.weight} ${product.unit ?? ''}',
                  style: TextStyle(color: Colors.grey[500], fontSize: 13),
                ),
                const Spacer(),
                _buildPriceSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: AppRadius.rM,
          ),
          child: const Center(child: Icon(Icons.shopping_bag_outlined, size: 40, color: Colors.grey)),
        ),
        if (product.stockStatus == StockStatus.outOfStock)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(150),
                borderRadius: AppRadius.rM,
              ),
              child: const Center(
                child: Text('OUT OF STOCK', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildBadges() {
    return Row(
      children: [
        if (product.isVeg)
          const Icon(Icons.radio_button_checked, color: Colors.green, size: 14),
        if (product.isBestseller) ...[
          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(4)),
            child: const Text('BESTSELLER', style: TextStyle(color: Colors.orange, fontSize: 8, fontWeight: FontWeight.bold)),
          ),
        ],
      ],
    );
  }

  Widget _buildPriceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.originalPrice > product.price)
              Text(
                '₹${product.originalPrice.toStringAsFixed(0)}',
                style: const TextStyle(color: Colors.grey, fontSize: 12, decoration: TextDecoration.lineThrough),
              ),
            Text(
              '₹${product.price.toStringAsFixed(0)}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: AppColors.textPrimary),
            ),
          ],
        ),
        _AddButton(),
      ],
    );
  }
}

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: AppRadius.rM,
      ),
      child: const Text('ADD', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
    );
  }
}
