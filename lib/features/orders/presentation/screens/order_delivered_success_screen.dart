import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/order_model.dart';
import '../../providers/order_history_provider.dart';
import '../../../../core/services/pdf_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../core/widgets/brand_logo.dart';

class OrderDeliveredSuccessScreen extends ConsumerStatefulWidget {
  final OrderModel order;
  const OrderDeliveredSuccessScreen({super.key, required this.order});

  @override
  ConsumerState<OrderDeliveredSuccessScreen> createState() =>
      _OrderDeliveredSuccessScreenState();
}

class _OrderDeliveredSuccessScreenState
    extends ConsumerState<OrderDeliveredSuccessScreen> {
  int _orderRating = 0;
  int _riderRating = 0;
  bool _showRating = false;

  @override
  void initState() {
    super.initState();
    AppLogger.i('SUCCESS_HUB: Screen initialized for order ${widget.order.orderNumber}');

    // 1. Auto-show rating section after celebration (2.5 seconds)
    Future.delayed(const Duration(milliseconds: 2500), () {
      if (mounted) {
        AppLogger.i('SUCCESS_HUB: Transitioning to rating view');
        setState(() => _showRating = true);
      }
    });

    // 2. Auto-navigate to home after 10 seconds of total inactivity
    // to ensure user doesn't get stuck on this screen.
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted && _orderRating == 0 && _riderRating == 0) {
        AppLogger.i('SUCCESS_HUB: Auto-navigating to home due to inactivity');
        context.go(AppRoutes.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Center(child: BrandLogo(height: 100, width: 100)),
              const SizedBox(height: 20),

              if (!_showRating) ...[
                // Celebration Animation
                Center(
                  child: Lottie.asset(
                    'assets/lottie/success_anim.json',
                    height: 200,
                    repeat: false,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.check_circle_rounded,
                        size: 100,
                        color: Colors.green),
                  ),
                ).animate().scale(duration: 600.ms, curve: Curves.elasticOut),

                const SizedBox(height: 16),
                const Text(
                  'Delivered Successfully!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -1,
                    color: Color(0xFF0B5D1E),
                  ),
                ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.3, end: 0),

                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Your order from ${widget.order.shopOrders.first.shopName} has been delivered.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ).animate().fadeIn(delay: 400.ms),
              ] else ...[
                // Rating Section
                Padding(
                  padding: const EdgeInsets.all(AppSpacing.l),
                  child: Column(
                    children: [
                      const Text(
                        'Rate your Experience',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.black87),
                      ).animate().fadeIn(),
                      const SizedBox(height: 32),
                      _buildRatingSection(
                          'Rate your Order',
                          (val) => setState(() => _orderRating = val),
                          _orderRating),
                      const SizedBox(height: 32),
                      _buildRatingSection(
                          'Rate your Rider (Rahul)',
                          (val) => setState(() => _riderRating = val),
                          _riderRating),
                      const SizedBox(height: 48),
                      ElevatedButton(
                        onPressed: (_orderRating > 0 && _riderRating > 0)
                            ? _onRatingComplete
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0B5D1E),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 56),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        child: const Text('SUBMIT & CONTINUE',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, letterSpacing: 1)),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () => context.go(AppRoutes.home),
                        child: const Text(
                          'Skip & Go to Home',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              const SizedBox(height: 32),
              _buildActionGrid(),

              const SizedBox(height: 32),
              _buildOrderSnapshot(),

              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
                child: OutlinedButton(
                  onPressed: () => context.go(AppRoutes.home),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 56),
                    side: const BorderSide(color: Colors.black12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: const Text(
                    'BACK TO HOME',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _onRatingComplete() {
    // In production, send rating to API
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Thank you for your feedback!')),
    );
    context.go(AppRoutes.home);
  }

  Widget _buildRatingSection(
      String title, Function(int) onRate, int currentRating) {
    return Column(
      children: [
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            final starIndex = index + 1;
            return GestureDetector(
              onTap: () => onRate(starIndex),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Icon(
                  starIndex <= currentRating
                      ? Icons.star_rounded
                      : Icons.star_outline_rounded,
                  color: starIndex <= currentRating
                      ? Colors.orange
                      : Colors.grey[300],
                  size: 40,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildActionGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      child: Row(
        children: [
          Expanded(
            child: _secondaryAction('Reorder', Icons.refresh_rounded, () {
              ref.read(reorderProvider.notifier).reorder(widget.order);
              context.go(AppRoutes.cart);
            }),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _secondaryAction('Invoice', Icons.receipt_long_rounded, () {
              PdfService.generateAndDownloadInvoice(widget.order);
            }),
          ),
        ],
      ),
    );
  }

  Widget _secondaryAction(String label, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F9FB),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withAlpha(20)),
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.black87, size: 24),
            const SizedBox(height: 8),
            Text(label,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderSnapshot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Column(
        children: [
          _row('Order Number', '#${widget.order.orderNumber}'),
          const Divider(height: 24, thickness: 0.5),
          _row('Total Paid',
              '₹${widget.order.invoiceSnapshot.grandTotal.toStringAsFixed(0)}'),
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13)),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
      ],
    );
  }
}
