import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/error_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/core/widgets/shimmer_widget.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/wishlist/providers/wishlist_provider.dart';
import 'package:villishop_customer/features/cart/presentation/widgets/quantity_stepper.dart';
import '../widgets/details/product_image_gallery.dart';
import '../widgets/details/product_pricing_section.dart';
import '../widgets/details/expandable_detail_section.dart';
import '../widgets/details/manufacturer_info_section.dart';
import '../../../home/presentation/widgets/product_card.dart';
import '../../providers/product_details_provider.dart';
import '../../providers/recent_products_provider.dart';
import '../../../../core/widgets/floating_cart_bar.dart';

class ProductDetailsScreen extends ConsumerWidget {
  final String productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailsProvider(productId));

    if (state.isLoading && state.product == null) {
      return const _ProductDetailsSkeleton();
    }

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

    // Track recently viewed
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(recentProductsProvider.notifier).addProduct(product);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                pinned: true,
                scrolledUnderElevation: 0,
                leading: const SizedBox.shrink(),
                actions: [
                  _CircleActionButton(
                    icon: Icons.share_rounded,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 12),
                  _WishlistAction(product: product),
                  const SizedBox(width: 16),
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gallery
                    ProductImageGallery(product: product),

                    // Info & Pricing
                    ProductPricingSection(product: product),

                    const Divider(thickness: 8, color: Color(0xFFF8F9FB)),

                    // Highlights Section
                    _buildHighlights(product),

                    const Divider(thickness: 8, color: Color(0xFFF8F9FB)),

                    // Detailed Sections
                    ExpandableDetailSection(
                        title: 'Product Description',
                        content: product.description ??
                            'Fresh and premium quality product from village farms.'),

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

                    const Divider(thickness: 8, color: Color(0xFFF8F9FB)),

                    _buildProductTrust(product),

                    const Divider(thickness: 8, color: Color(0xFFF8F9FB)),

                    ManufacturerInfoSection(product: product),

                    const Divider(thickness: 8, color: Color(0xFFF8F9FB)),

                    _buildReviewSection(context, product),

                    const Divider(thickness: 8, color: Color(0xFFF8F9FB)),

                    _buildRelatedProducts(product.relatedProducts),

                    const SizedBox(height: 160),
                  ],
                ),
              ),
            ],
          ),

          // Custom Floating Back Button
          Positioned(
            top: MediaQuery.of(context).padding.top + 8,
            left: 16,
            child: _CircleActionButton(
              icon: Icons.arrow_back_ios_new_rounded,
              onPressed: () => context.pop(),
            ),
          ),
        ],
      ),
      bottomSheet: _buildBottomActions(context, product, ref),
      floatingActionButton: const FloatingCartBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildHighlights(ProductModel product) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Product Highlights',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  letterSpacing: -0.2)),
          const SizedBox(height: 20),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _highlightItem(Icons.verified_user_outlined, 'Organic'),
              _highlightItem(Icons.timer_outlined, '10 Min Delivery'),
              _highlightItem(Icons.eco_rounded, 'Eco Friendly'),
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
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.green.withAlpha(10),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 18, color: Colors.green),
        ),
        const SizedBox(width: 10),
        Text(label,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Colors.black87)),
      ],
    );
  }

  Widget _buildStorageInfo(ProductModel product) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.l, vertical: AppSpacing.s),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Storage & Usage',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
          const SizedBox(height: 6),
          Text(
            product.storage.storageInstructions ??
                'Keep in a cool and dry place. Shelf life: 7 days from packaging.',
            style:
                TextStyle(color: Colors.grey[700], fontSize: 14, height: 1.4),
          ),
        ],
      ),
    );
  }

  Widget _buildExpiryInfo(ProductModel product) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.l, vertical: AppSpacing.m),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.withAlpha(20)),
        ),
        child: Row(
          children: [
            const Icon(Icons.history_toggle_off_rounded,
                size: 20, color: Colors.orange),
            const SizedBox(width: 12),
            Text(
              'Best before 6 months from packaging',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductTrust(ProductModel product) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Our Trust Guarantee',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  letterSpacing: -0.2)),
          const SizedBox(height: 24),
          Row(
            children: [
              _trustItem(Icons.verified_user_rounded, 'Authentic'),
              _trustItem(Icons.eco_rounded, 'Pure Quality'),
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
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withAlpha(10),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.primary, size: 28),
          ),
          const SizedBox(height: 10),
          Text(label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87)),
        ],
      ),
    );
  }

  Widget _buildReviewSection(BuildContext context, ProductModel product) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Customer Reviews',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      letterSpacing: -0.2)),
              TextButton(
                onPressed: () => context.push(AppRoutes.reviews, extra: {
                  'targetId': product.id,
                  'targetName': product.name
                }),
                child: const Text('Rate Item',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w900,
                        fontSize: 14)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _ratingBadge(product.rating),
              const SizedBox(width: 16),
              Text('${product.totalReviews} village ratings',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w700,
                      fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ratingBadge(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.green[800], borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Text(rating.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16)),
          const SizedBox(width: 4),
          const Icon(Icons.star_rounded, color: Colors.white, size: 18),
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
          padding: EdgeInsets.all(AppSpacing.l),
          child: Text('Frequently Bought Together',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  letterSpacing: -0.2)),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: related.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: AppSpacing.m),
              child: SizedBox(
                width: 170,
                child: ProductCard(
                  product: related[index],
                  heroContext: 'related',
                ),
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
          AppSpacing.l, AppSpacing.m, AppSpacing.l, 30),
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
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5)),
                Text('₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        letterSpacing: -0.5)),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: QuantityStepper(product: product, height: 56, width: 120),
          ),
        ],
      ),
    );
  }
}

class _CircleActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? iconColor;

  const _CircleActionButton(
      {required this.icon, required this.onPressed, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(220),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(10),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(icon, color: iconColor ?? Colors.black87, size: 20),
        ),
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
    return _CircleActionButton(
      icon:
          isWishlisted ? Icons.favorite_rounded : Icons.favorite_border_rounded,
      iconColor: isWishlisted ? Colors.red : Colors.black87,
      onPressed: () =>
          ref.read(wishlistProvider.notifier).toggleProductWishlist(product),
    );
  }
}

class _ProductDetailsSkeleton extends StatelessWidget {
  const _ProductDetailsSkeleton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShimmerWidget.rectangular(height: 320),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerWidget.rectangular(
                      height: 28,
                      width: MediaQuery.of(context).size.width * 0.7),
                  const SizedBox(height: 12),
                  ShimmerWidget.rectangular(
                      height: 18,
                      width: MediaQuery.of(context).size.width * 0.4),
                  const SizedBox(height: 24),
                  const Row(
                    children: [
                      ShimmerWidget.rectangular(height: 40, width: 100),
                      Spacer(),
                      ShimmerWidget.rectangular(height: 40, width: 120),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 8, color: Color(0xFFF8F9FB)),
            ...List.generate(
                3,
                (index) => const Padding(
                      padding: EdgeInsets.all(20),
                      child: ShimmerWidget.rectangular(height: 60),
                    )),
          ],
        ),
      ),
    );
  }
}
