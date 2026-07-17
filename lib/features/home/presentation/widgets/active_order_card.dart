import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';

import '../../../orders/domain/entities/order_lifecycle_state.dart';
import '../../../orders/providers/active_order_provider.dart';

class ActiveOrderCard extends ConsumerWidget {
  const ActiveOrderCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = ref.watch(activeOrderProvider);

    if (order == null) return const SizedBox.shrink();

    final progress = ref.watch(activeOrderProgressProvider);
    final totalItems =
        order.shopOrders.fold(0, (sum, so) => sum + so.items.length);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(40),
            blurRadius: 15,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () =>
              context.push('${AppRoutes.orderTracking}/${order.orderId}'),
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.lifecycleState.displayName.toUpperCase(),
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w900,
                            fontSize: 11,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Arriving in ${order.deliverySlotSnapshot.estimatedMinutes} mins',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                    _buildTrackButton(context, order.orderId),
                  ],
                ),
                const SizedBox(height: 20),

                // Progress Indicator
                _buildProgressBar(progress),

                const SizedBox(height: 20),

                // Quick Info Row
                Row(
                  children: [
                    _infoItem(Icons.shopping_bag_outlined, '$totalItems Items'),
                    _verticalDivider(),
                    _infoItem(Icons.payments_outlined,
                        '₹${order.invoiceSnapshot.grandTotal.toStringAsFixed(0)}'),
                    _verticalDivider(),
                    Expanded(
                      child: _infoItem(
                        Icons.location_on_outlined,
                        order.deliveryAddressSnapshot.label,
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 400.ms)
        .slideY(begin: 0.2, end: 0, curve: Curves.easeOutQuad);
  }

  Widget _buildProgressBar(double progress) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white.withAlpha(30),
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
            minHeight: 6,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _dotLabel('Placed', progress >= 0.25),
            _dotLabel('Assigned', progress >= 0.50),
            _dotLabel('On Way', progress >= 0.75),
            _dotLabel('Arrival', progress >= 1.0),
          ],
        ),
      ],
    );
  }

  Widget _dotLabel(String label, bool isActive) {
    return Text(
      label,
      style: TextStyle(
        color: isActive ? Colors.white : Colors.white38,
        fontSize: 9,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
      ),
    );
  }

  Widget _buildTrackButton(BuildContext context, String orderId) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        children: [
          Text(
            'TRACK',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 12,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.arrow_forward_ios_rounded, size: 10, color: Colors.black),
        ],
      ),
    );
  }

  Widget _infoItem(IconData icon, String text, {bool isExpanded = false}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white60, size: 14),
        const SizedBox(width: 6),
        Flexible(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _verticalDivider() {
    return Container(
      height: 12,
      width: 1,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: Colors.white12,
    );
  }
}
