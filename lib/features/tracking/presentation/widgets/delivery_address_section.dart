import 'package:flutter/material.dart';
import '../../../orders/data/models/order_model.dart';

class DeliveryAddressSection extends StatelessWidget {
  final OrderModel order;
  const DeliveryAddressSection({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final address = order.deliveryAddressSnapshot;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DELIVERY DETAILS',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 11,
              color: Colors.grey,
              letterSpacing: 1.2),
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12)),
              child: const Icon(Icons.location_on_rounded,
                  color: Colors.black54, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.label,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    address.fullAddress,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  if (order.orderNote != null &&
                      order.orderNote!.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.amber[50],
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Icon(Icons.note_rounded,
                              size: 14, color: Colors.amber[900]),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              order.orderNote!,
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.amber[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
