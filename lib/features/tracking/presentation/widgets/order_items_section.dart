import 'package:flutter/material.dart';
import '../../../orders/data/models/order_model.dart';
import '../../../../core/widgets/network_image_with_fallback.dart';

class OrderItemsSection extends StatelessWidget {
  final OrderModel order;
  const OrderItemsSection({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final items = order.shopOrders.expand((s) => s.items).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'ORDER SUMMARY',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 11,
                  color: Colors.grey,
                  letterSpacing: 1.2),
            ),
            Text(
              '${items.length} ITEMS',
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 11,
                  color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...items.map((item) => _itemRow(item)),
      ],
    );
  }

  Widget _itemRow(dynamic item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey[50], borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: NetworkImageWithFallback(imageUrl: item.product.imageUrl),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.product.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${item.quantity} x ${item.product.packaging.weight}${item.product.packaging.unit}',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Text(
            '₹${(item.product.pricing.sellingPrice * item.quantity).toStringAsFixed(0)}',
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
