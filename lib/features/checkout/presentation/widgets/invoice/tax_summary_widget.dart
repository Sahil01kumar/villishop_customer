import 'package:flutter/material.dart';
import '../../../../finance/data/models/invoice_model.dart';

class TaxSummaryWidget extends StatelessWidget {
  final InvoiceModel invoice;
  const TaxSummaryWidget({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.receipt_long_rounded,
                  color: Colors.grey, size: 14),
              const SizedBox(width: 8),
              Text(
                'GST Included in Total',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 11,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...invoice.taxBreakdown.map((tax) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '${tax.category} (${tax.gstPercentage.toStringAsFixed(0)}%)',
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 10)),
                    Text('₹${tax.gstAmount.toStringAsFixed(2)}',
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 10)),
                  ],
                ),
              )),
          const Divider(height: 12, color: Colors.grey),
          Row(
            children: [
              Icon(Icons.verified_user_outlined,
                  color: Colors.blue[300], size: 12),
              const SizedBox(width: 4),
              const Text(
                'Official Tax Invoice will be available after delivery',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 9,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
