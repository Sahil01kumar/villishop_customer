import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/core/widgets/error_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/wishlist/providers/wishlist_provider.dart';
import 'package:villishop_customer/features/cart/presentation/widgets/quantity_stepper.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import '../widgets/details/product_image_gallery.dart';
import '../widgets/details/product_pricing_section.dart';
import '../widgets/details/expandable_detail_section.dart';
import '../widgets/details/manufacturer_info_section.dart';
import '../widgets/product_grid_card.dart';
import '../../providers/product_details_provider.dart';
import '../../providers/recent_products_provider.dart';

class ProductDetailsScreen extends ConsumerWidget {
  final String productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailsProvider(productId));
    final cartCount = ref.watch(cartCountProvider);

    if (state.isLoading) return const Scaffold(body: LoadingWidget());
    if (state.errorMessage != null) {
      return Scaffold(
        body: CustomErrorWidget(
          message: state.errorMessage!,
          onRetry: () =>
              ref.read(productDetailsProvider(productId).notifier).refresh(),
        ),
      );
    }

    final product = state.product;
    if (product == null) {
      return const Scaffold(body: Center(child: Text('Product not found')));
    }

    // Module 8.8: Track recently viewed
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(recentProductsProvider.notifier).addProduct(product);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        actions: [
          IconButton(
              icon: const Icon(Icons.share_outlined, color: Colors.black),
              onPressed: () {}),
          _WishlistAction(product: product),
          AppSpacing.hS,
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gallery
            ProductImageGallery(product: product),

            // Info & Pricing
            ProductPricingSection(product: product),

            const Divider(thickness: 8, color: Color(0xFFF3F4F6)),

            // Highlights Section
            _buildHighlights(product),

            const Divider(thickness: 8, color: Color(0xFFF3F4F6)),

            // Detailed Sections
            ExpandableDetailSection(
                title: 'Product Description',
                content: product.description ?? ''),

            if (product.nutrition.ingredients.isNotEmpty)
              ExpandableDetailSection(
                  title: 'Ingredients',
                  content: product.nutrition.ingredients.join(', ')),

            if (product.nutrition.nutritionalInfo != null &&
                product.nutrition.nutritionalInfo!.isNotEmpty)
              ExpandableDetailSection(
                  title: 'Nutritional Info',
                  content: product.nutrition.nutritionalInfo!),

            _buildStorageInfo(product),

            _buildExpiryInfo(product),

            const Divider(thickness: 8, color: Color(0xFFF3F4F6)),

            _buildProductTrust(product),

            const Divider(thickness: 8, color: Color(0xFFF3F4F6)),

            ManufacturerInfoSection(product: product),

            const Divider(thickness: 8, color: Color(0xFFF3F4F6)),

            _buildReviewSection(context, product),

            const Divider(thickness: 8, color: Color(0xFFF3F4F6)),

            _buildRelatedProducts(product.relatedProducts),

            const SizedBox(height: 140),
          ],
        ),
      ),
      bottomSheet: _buildBottomActions(context, product, ref),
      floatingActionButton: cartCount > 0
          ? FloatingActionButton.extended(
              onPressed: () => context.push(AppRoutes.home),
              label: const Text('CHECKOUT'),
              icon: const Icon(Icons.shopping_cart_checkout),
            )
          : null,
    );
  }

  Widget _buildHighlights(ProductModel product) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Product Highlights',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          AppSpacing.vM,
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _highlightItem(Icons.verified_outlined, 'Organic'),
              _highlightItem(Icons.timer_outlined, '10 Min Delivery'),
              _highlightItem(Icons.recycling_outlined, 'Eco Friendly'),
              _highlightItem(Icons.health_and_safety_outlined, 'Lab Tested'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _highlightItem(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: Colors.green),
        const SizedBox(width: 4),
        Text(label,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),
      ],
    );
  }

  Widget _buildStorageInfo(ProductModel product) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.m, vertical: AppSpacing.s),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Storage & Usage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          const SizedBox(height: 4),
          Text(
            product.storage.storageInstructions ??
                'Keep in a cool and dry place. Shelf life: 7 days from packaging.',
            style: TextStyle(color: Colors.grey[700], fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget _buildExpiryInfo(ProductModel product) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.m, vertical: AppSpacing.s),
      child: Row(
        children: [
          const Icon(Icons.history_toggle_off_rounded,
              size: 18, color: Colors.grey),
          const SizedBox(width: 8),
          Text(
            'Best before 6 months from packaging',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildProductTrust(ProductModel product) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Our Trust Guarantee',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          AppSpacing.vM,
          Row(
            children: [
              _trustItem(Icons.verified_user_rounded, 'Authentic'),
              _trustItem(Icons.eco_rounded, 'Pure'),
              _trustItem(Icons.local_shipping_rounded, 'Safe Delivery'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _trustItem(IconData icon, String label) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 28),
          const SizedBox(height: 4),
          Text(label,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildReviewSection(BuildContext context, ProductModel product) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Customer Reviews',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
              TextButton(
                onPressed: () => context.push(AppRoutes.reviews, extra: {
                  'targetId': product.id,
                  'targetName': product.name
                }),
                child: const Text('Rate Item',
                    style: TextStyle(
                        color: AppColors.primary, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            children: [
              _ratingBadge(product.rating),
              const SizedBox(width: 12),
              Text('${product.totalReviews} ratings',
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ratingBadge(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.green[700], borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Text(rating.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
          const SizedBox(width: 4),
          const Icon(Icons.star, color: Colors.white, size: 16),
        ],
      ),
    );
  }

  Widget _buildRelatedProducts(List<ProductModel> related) {
    if (related.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(AppSpacing.m),
          child: Text('Frequently Bought Together',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: related.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: AppSpacing.m),
              child: SizedBox(
                width: 160,
                child: ProductGridCard(product: related[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomActions(
      BuildContext context, ProductModel product, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
          AppSpacing.m, AppSpacing.m, AppSpacing.m, 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(8),
              blurRadius: 20,
              offset: const Offset(0, -10))
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('UNIT PRICE',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
                Text('₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 22)),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: QuantityStepper(product: product, height: 54),
          ),
        ],
      ),
    );
  }
}

class _WishlistAction extends ConsumerWidget {
  final ProductModel product;
  const _WishlistAction({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isWishlisted = ref.watch(wishlistProvider
        .select((s) => s.products.any((p) => p.product.id == product.id)));
    return IconButton(
      icon: Icon(isWishlisted ? Icons.favorite : Icons.favorite_border,
          color: isWishlisted ? Colors.red : Colors.black),
      onPressed: () =>
          ref.read(wishlistProvider.notifier).toggleProductWishlist(product),
    );
  }
}
