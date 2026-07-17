import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../data/models/order_model.dart';
import '../../providers/order_provider.dart';
import '../../providers/order_history_provider.dart';
import '../../domain/entities/order_lifecycle_state.dart';
import '../../../../core/services/pdf_service.dart';

class OrdersScreen extends ConsumerWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(customerOrdersProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('My Orders',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: ordersAsync.when(
        data: (orders) {
          if (orders.isEmpty) {
            return const EmptyWidget(
              message: 'No orders yet. Start your village shopping journey!',
              icon: Icons.receipt_long_outlined,
            );
          }

          final activeOrders =
              orders.where((o) => !o.lifecycleState.isTerminal).toList();
          final completedOrders =
              orders.where((o) => o.lifecycleState.isTerminal).toList();

          return RefreshIndicator(
            onRefresh: () => ref.refresh(customerOrdersProvider.future),
            child: ListView(
              padding: const EdgeInsets.all(AppSpacing.m),
              children: [
                if (activeOrders.isNotEmpty) ...[
                  const _SectionTitle(title: 'Active Orders'),
                  ...activeOrders.map((o) => _OrderCard(order: o)),
                  const SizedBox(height: 24),
                ],
                if (completedOrders.isNotEmpty) ...[
                  const _SectionTitle(title: 'Completed Orders'),
                  ...completedOrders.map((o) => _OrderCard(order: o)),
                ],
                if (activeOrders.isEmpty && completedOrders.isEmpty)
                  const EmptyWidget(
                    message: 'No order history found.',
                    icon: Icons.history_rounded,
                  ),
              ],
            ),
          );
        },
        loading: () => const LoadingWidget(),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, left: 4),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 11,
            color: Colors.grey,
            letterSpacing: 1.2),
      ),
    );
  }
}

class _OrderCard extends ConsumerWidget {
  final OrderModel order;
  const _OrderCard({required this.order});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsCount =
        order.shopOrders.fold(0, (sum, so) => sum + so.items.length);
    final dateStr = DateFormat('dd MMM yyyy, hh:mm a').format(order.createdAt);
    final isDelivered = order.lifecycleState == OrderLifecycleState.delivered;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 10,
              offset: const Offset(0, 4))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () =>
              context.push('${AppRoutes.orderTracking}/${order.orderId}'),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order #${order.orderNumber}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 13,
                            color: Colors.grey)),
                    _StatusBadge(state: order.lifecycleState),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.primary.withAlpha(10),
                          shape: BoxShape.circle),
                      child: const Icon(Icons.shopping_bag_outlined,
                          color: AppColors.primary, size: 20),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '$itemsCount Items • ₹${order.invoiceSnapshot.grandTotal.toStringAsFixed(0)}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 16)),
                          Text(order.shopOrders.first.shopName,
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded,
                        size: 14, color: Colors.grey),
                  ],
                ),
                const Divider(height: 32),
                Row(
                  children: [
                    const Icon(Icons.access_time_rounded,
                        size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(dateStr,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                    const Spacer(),
                    if (!order.lifecycleState.isTerminal)
                      Text(
                        'ETA: ${order.deliverySlotSnapshot.estimatedMinutes} mins',
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                            fontSize: 12),
                      )
                    else
                      Text(
                        isDelivered
                            ? 'Delivered'
                            : order.lifecycleState.displayName,
                        style: TextStyle(
                            color: isDelivered ? Colors.green : Colors.red,
                            fontWeight: FontWeight.w900,
                            fontSize: 12),
                      ),
                  ],
                ),
                if (order.lifecycleState.isTerminal) ...[
                  const Divider(height: 32),
                  _buildHistoryActions(context, ref),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHistoryActions(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
            child: _actionButton('Reorder', Icons.refresh_rounded, () {
          ref.read(reorderProvider.notifier).reorder(order);
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Items added to cart'),
              backgroundColor: Colors.black));
        })),
        const SizedBox(width: 8),
        Expanded(
            child: _actionButton('Bill', Icons.receipt_long_rounded, () {
          PdfService.generateAndDownloadInvoice(order);
        })),
        const SizedBox(width: 8),
        Expanded(
            child: _actionButton('Rate', Icons.star_outline_rounded, () {
          context.push(AppRoutes.orderRating, extra: order);
        })),
        const SizedBox(width: 8),
        Expanded(
            child: _actionButton('Help', Icons.help_outline_rounded, () {
          context.push(AppRoutes.supportHub);
        })),
      ],
    );
  }

  Widget _actionButton(String label, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withAlpha(40)),
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[50],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 14, color: Colors.black87),
            const SizedBox(width: 4),
            Text(label,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final OrderLifecycleState state;
  const _StatusBadge({required this.state});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.blue;
    String label = state.displayName.toUpperCase();

    switch (state) {
      case OrderLifecycleState.orderPlaced:
        color = Colors.blue;
        break;
      case OrderLifecycleState.deliveryPartnerAssigned:
        color = Colors.orange;
        break;
      case OrderLifecycleState.onTheWay:
        color = Colors.indigo;
        break;
      case OrderLifecycleState.delivered:
        color = Colors.green;
        break;
      case OrderLifecycleState.cancelled:
      case OrderLifecycleState.failed:
        color = Colors.red;
        break;
      default:
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: color.withAlpha(20), borderRadius: BorderRadius.circular(6)),
      child: Text(label,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w900, fontSize: 10)),
    );
  }
}
