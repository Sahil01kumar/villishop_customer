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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Text(
            'BILL DETAILS',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 10,
                color: Colors.grey,
                letterSpacing: 1.2),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _row('Item Total', '₹${invoice.itemsTotal.toStringAsFixed(0)}'),
              if (invoice.productDiscount > 0)
                _row('Product Discount',
                    '-₹${invoice.productDiscount.toStringAsFixed(0)}',
                    isGreen: true),
              if (invoice.couponDiscount > 0)
                _row('Coupon Discount',
                    '-₹${invoice.couponDiscount.toStringAsFixed(0)}',
                    isGreen: true),
              _row(
                  'Delivery Charge',
                  invoice.deliveryCharge == 0
                      ? 'FREE'
                      : '₹${invoice.deliveryCharge.toStringAsFixed(0)}',
                  isGreen: invoice.deliveryCharge == 0),
              _row('Handling & Packing',
                  '₹${invoice.packingCharge.toStringAsFixed(0)}'),
              _row('Platform Fee', '₹2.00'),
              _row('Taxes & GST', '₹${invoice.gstAmount.toStringAsFixed(2)}'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(height: 1, thickness: 0.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Grand Total',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          letterSpacing: -0.5)),
                  Text('₹${(invoice.grandTotal + 2.0).toStringAsFixed(0)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          letterSpacing: -0.5)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _row(String label, String value, {bool isGreen = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 13)),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14,
              color: isGreen ? Colors.green : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
