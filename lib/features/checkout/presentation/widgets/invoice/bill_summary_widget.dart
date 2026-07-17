import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/widgets/skeleton_loader.dart';
import '../../../../finance/providers/finance_providers.dart';

class BillSummaryWidget extends ConsumerWidget {
  const BillSummaryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoiceAsync = ref.watch(invoiceProvider);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Bill Summary',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 16),
          invoiceAsync.when(
            data: (invoice) => Column(
              children: [
                _summaryRow('Item Total', invoice.itemsTotal),
                _summaryRow('Product Discount', -invoice.productDiscount,
                    isGreen: true),
                if (invoice.couponDiscount > 0)
                  _summaryRow('Coupon Discount', -invoice.couponDiscount,
                      isGreen: true),
                _summaryRow('Delivery Charge', invoice.deliveryCharge,
                    isFree: invoice.deliveryCharge == 0),
                _summaryRow('Handling & Packing', invoice.packingCharge),
                _summaryRow('Platform Fee', invoice.platformFee),
                _summaryRow('Taxes & GST', invoice.gstAmount),
                const Divider(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Grand Total',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18)),
                    Text('₹${invoice.grandTotal.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18)),
                  ],
                ),
              ],
            ),
            loading: () => SkeletonLoader.billSummary(),
            error: (e, _) => Text('Error calculating bill: $e',
                style: const TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  Widget _summaryRow(String label, double value,
      {bool isGreen = false, bool isFree = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
          if (isFree)
            const Text('FREE',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 14))
          else
            Text(
              '${value < 0 ? "-" : ""}₹${value.abs().toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 14,
                color: isGreen ? Colors.green : Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
