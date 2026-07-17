import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/network_image_with_fallback.dart';
import '../../../orders/data/models/order_model.dart';
import 'package:villishop_customer/features/reviews/providers/review_provider.dart';
import 'package:villishop_customer/features/reviews/data/models/review_model.dart';
import 'package:uuid/uuid.dart';

class OrderRatingScreen extends ConsumerStatefulWidget {
  final OrderModel order;
  const OrderRatingScreen({super.key, required this.order});

  @override
  ConsumerState<OrderRatingScreen> createState() => _OrderRatingScreenState();
}

class _OrderRatingScreenState extends ConsumerState<OrderRatingScreen> {
  int _overallRating = 0;
  int _riderRating = 0;
  final Map<String, int> _productRatings = {};
  final Map<String, TextEditingController> _productCommentControllers = {};
  final TextEditingController _overallCommentController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    for (var shop in widget.order.shopOrders) {
      for (var item in shop.items) {
        _productRatings[item.product.id] = 0;
        _productCommentControllers[item.product.id] = TextEditingController();
      }
    }
  }

  @override
  void dispose() {
    _overallCommentController.dispose();
    for (var controller in _productCommentControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final submissionNotifier = ref.read(reviewSubmissionProvider.notifier);

    // 1. Submit Product Reviews
    for (var entry in _productRatings.entries) {
      if (entry.value > 0) {
        final review = ReviewModel(
          id: const Uuid().v4(),
          userId: widget.order.customerId,
          userName: 'Sahil Kumar',
          productId: entry.key,
          rating: entry.value.toDouble(),
          description: _productCommentControllers[entry.key]?.text ?? '',
          reviewDate: DateTime.now(),
        );
        await submissionNotifier.submitProductReview(entry.key, review);
      }
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Feedback submitted. Thank you!'),
            backgroundColor: Colors.green),
      );
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Feedback & Ratings',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () => context.go('/home'),
            child: const Text('SKIP',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Overall App Experience
            _sectionHeader('Rate VilliShop Experience'),
            _starRating(
                _overallRating, (val) => setState(() => _overallRating = val)),
            const SizedBox(height: 12),
            _buildCommentField(
                _overallCommentController, 'What could we improve?'),

            const Divider(height: 64, thickness: 0.5),

            // 2. Delivery Partner
            _sectionHeader('Rate Delivery Partner'),
            _riderMiniCard(),
            const SizedBox(height: 16),
            _starRating(
                _riderRating, (val) => setState(() => _riderRating = val)),

            const Divider(height: 64, thickness: 0.5),

            // 3. Purchased Items
            _sectionHeader('Rate Purchased Items'),
            ...widget.order.shopOrders.expand((so) => so.items).map((item) {
              return _productRatingItem(item);
            }),

            const SizedBox(height: 48),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 0,
                ),
                child: const Text('SUBMIT FEEDBACK',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 12,
            color: Colors.grey,
            letterSpacing: 1.2),
      ),
    );
  }

  Widget _starRating(int current, Function(int) onRating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        final val = index + 1;
        return GestureDetector(
          onTap: () => onRating(val),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Icon(
              val <= current ? Icons.star_rounded : Icons.star_outline_rounded,
              color: val <= current ? Colors.amber : Colors.grey[300],
              size: 44,
            ).animate(target: val <= current ? 1 : 0).scale(
                begin: const Offset(1, 1),
                end: const Offset(1.2, 1.2),
                duration: 200.ms),
          ),
        );
      }),
    );
  }

  Widget _buildCommentField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      maxLines: 2,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[400]),
        filled: true,
        fillColor: Colors.grey[50],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none),
      ),
    );
  }

  Widget _riderMiniCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=rahul'),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rahul Singh',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
                Text('VilliShop Delivery Partner',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productRatingItem(dynamic item) {
    final productId = item.product.id;
    final rating = _productRatings[productId] ?? 0;

    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 48,
                  height: 48,
                  color: Colors.grey[100],
                  child:
                      NetworkImageWithFallback(imageUrl: item.product.imageUrl),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 14)),
                    Text(
                        '${item.quantity} x ${item.product.packaging.weight}${item.product.packaging.unit}',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: List.generate(5, (index) {
              final val = index + 1;
              return GestureDetector(
                onTap: () => setState(() => _productRatings[productId] = val),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Icon(
                    val <= rating
                        ? Icons.star_rounded
                        : Icons.star_outline_rounded,
                    color: val <= rating ? Colors.amber : Colors.grey[300],
                    size: 32,
                  ),
                ),
              );
            }),
          ),
          if (rating > 0) ...[
            const SizedBox(height: 12),
            _buildCommentField(_productCommentControllers[productId]!,
                'What did you think of this product?'),
          ],
        ],
      ),
    ).animate().fadeIn().slideX(begin: 0.1, end: 0);
  }
}
