import 'package:flutter/material.dart';
import '../../../orders/data/models/order_model.dart';

class BillSummarySection extends StatelessWidget {
  final OrderModel order;
  const BillSummarySection({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final invoice = order.invoiceSnapshot;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BILL SUMMARY',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 11,
              color: Colors.grey,
              letterSpacing: 1.2),
        ),
        const SizedBox(height: 16),
        _row('Item Total', '₹${invoice.itemsTotal.toStringAsFixed(2)}'),
        if (invoice.productDiscount > 0)
          _row('Product Discount',
              '-₹${invoice.productDiscount.toStringAsFixed(2)}',
              isGreen: true),
        if (invoice.couponDiscount > 0)
          _row('Coupon Discount',
              '-₹${invoice.couponDiscount.toStringAsFixed(2)}',
              isGreen: true),
        _row(
            'Delivery Charge',
            invoice.deliveryCharge == 0
                ? 'FREE'
                : '₹${invoice.deliveryCharge.toStringAsFixed(2)}',
            isGreen: invoice.deliveryCharge == 0),
        _row('Handling & Packing',
            '₹${invoice.packingCharge.toStringAsFixed(2)}'),
        _row('Taxes & GST', '₹${invoice.gstAmount.toStringAsFixed(2)}'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Divider(height: 1, thickness: 0.5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Grand Total',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
            Text('₹${invoice.grandTotal.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          ],
        ),
      ],
    );
  }

  Widget _row(String label, String value, {bool isGreen = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 13)),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 13,
              color: isGreen ? Colors.green : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
