import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/order_model.dart';
import '../../providers/order_success_provider.dart';
import '../../../../core/services/pdf_service.dart';

class OrderSuccessScreen extends ConsumerWidget {
  final OrderModel order;
  const OrderSuccessScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final successData = ref.watch(orderSuccessProvider(order));

    if (successData == null) return const Scaffold(body: LoadingWidget());

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // 1. Success Header with Animation
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.fromLTRB(AppSpacing.m, 60, AppSpacing.m, 32),
              child: Column(
                children: [
                  Center(
                    child: Lottie.asset(
                      'assets/lottie/success_anim.json',
                      height: 150,
                      repeat: false,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.check_circle,
                          size: 80,
                          color: Colors.green),
                    ),
                  )
                      .animate()
                      .scale(duration: 400.ms, curve: Curves.easeOutBack),
                  const SizedBox(height: 16),
                  const Text(
                    'Order Placed Successfully!',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        letterSpacing: -0.5),
                  ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2, end: 0),
                  const SizedBox(height: 8),
                  Text(
                    'Thank you for shopping with VilliShop. Your items are being prepared.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ).animate().fadeIn(delay: 300.ms),
                ],
              ),
            ),
          ),

          // 2. Order Status Card (ETA & Timeline)
          SliverToBoxAdapter(
            child: _buildStatusCard(context, order)
                .animate()
                .fadeIn(delay: 400.ms)
                .slideY(begin: 0.1, end: 0),
          ),

          // 3. Primary Actions
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  _buildPrimaryAction(
                    context,
                    label: 'TRACK ORDER',
                    icon: Icons.map_outlined,
                    onPressed: () {
                      context
                          .push('${AppRoutes.orderTracking}/${order.orderId}');
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildSecondaryAction(
                          label: 'Download Invoice',
                          icon: Icons.file_download_outlined,
                          onPressed: () =>
                              PdfService.generateAndDownloadInvoice(order),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildSecondaryAction(
                          label: 'Share Order',
                          icon: Icons.share_outlined,
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Sharing tracking link...')),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ).animate().fadeIn(delay: 500.ms),
            ),
          ),

          // 4. Order Details Snapshot
          SliverToBoxAdapter(
            child: _buildIdentityCard(order).animate().fadeIn(delay: 600.ms),
          ),

          // 5. Bill Summary Snapshot
          SliverToBoxAdapter(
            child: _buildSummaryCard(order).animate().fadeIn(delay: 700.ms),
          ),

          // 6. Continue Shopping Footer
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.m),
              child: _buildSecondaryAction(
                label: 'Continue Shopping',
                icon: Icons.shopping_basket_outlined,
                width: double.infinity,
                onPressed: () => context.go(AppRoutes.home),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }

  Widget _buildStatusCard(BuildContext context, OrderModel order) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Estimated Arrival',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  Text('${order.deliverySlotSnapshot.estimatedMinutes} mins',
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 22)),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.green.withAlpha(20),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text('PLACED',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w900,
                        fontSize: 11)),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text('ORDER STATUS',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 10,
                  color: Colors.grey,
                  letterSpacing: 1)),
          const SizedBox(height: 16),
          _buildTimelineItem(Icons.check_circle, 'Order Placed',
              'We have received your order', true),
          _buildTimelineItem(Icons.radio_button_unchecked, 'Partner Assigned',
              'Assigning best village rider...', false),
          _buildTimelineItem(Icons.radio_button_unchecked, 'Live Tracking',
              'Rider will start shortly', false),
        ],
      ),
    );
  }

  Widget _buildTimelineItem(
      IconData icon, String title, String subtitle, bool isCompleted) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(icon,
                  color: isCompleted ? Colors.green : Colors.grey[300],
                  size: 24),
              if (title != 'Live Tracking')
                Container(width: 2, height: 20, color: Colors.grey[100]),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                        color: isCompleted ? Colors.black : Colors.grey)),
                Text(subtitle,
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIdentityCard(OrderModel order) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          _infoRow('Order Number', order.orderNumber),
          const Divider(height: 24),
          _infoRow('Tracking ID', order.trackingId),
          const Divider(height: 24),
          _infoRow('Delivery Address', order.deliveryAddressSnapshot.label),
          const Divider(height: 24),
          _infoRow('Payment Method', order.paymentMethodSnapshot.name),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(OrderModel order) {
    final invoice = order.invoiceSnapshot;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Order Summary',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 16),
          _summaryRow('Item Total', invoice.itemsTotal),
          _summaryRow('Product Discount', -invoice.productDiscount,
              isGreen: true),
          if (invoice.couponDiscount > 0)
            _summaryRow('Coupon Discount', -invoice.couponDiscount,
                isGreen: true),
          _summaryRow('Delivery Charge', invoice.deliveryCharge,
              isFree: invoice.deliveryCharge == 0),
          _summaryRow('Platform Fee', invoice.platformFee),
          _summaryRow('Handling & Packing', invoice.packingCharge),
          _summaryRow('Taxes & GST', invoice.gstAmount),
          const Divider(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Grand Total',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
              Text('₹${invoice.grandTotal.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
                fontSize: 13)),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
      ],
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

  Widget _buildPrimaryAction(BuildContext context,
      {required String label,
      required IconData icon,
      required VoidCallback onPressed}) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20),
      label: Text(label,
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 56),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  Widget _buildSecondaryAction(
      {required String label,
      required IconData icon,
      required VoidCallback onPressed,
      double? width}) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label,
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
        minimumSize: Size(width ?? 0, 52),
        side: BorderSide(color: Colors.grey[300]!),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
