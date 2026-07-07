import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/router/app_router.dart';
import '../widgets/details/product_image_gallery.dart';
import '../widgets/details/product_pricing_section.dart';
import '../widgets/details/expandable_detail_section.dart';
import '../widgets/details/manufacturer_info_section.dart';
import '../widgets/product_grid_card.dart';
import '../../providers/product_details_provider.dart';

class ProductDetailsScreen extends ConsumerWidget {
  final String productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailsProvider(productId));

    if (state.isLoading) return const Scaffold(body: LoadingWidget());
    if (state.errorMessage != null) {
      return Scaffold(
        body: CustomErrorWidget(
          message: state.errorMessage!,
          onRetry: () => ref.read(productDetailsProvider(productId).notifier).refresh(),
        ),
      );
    }

    final product = state.product;
    if (product == null) return const Scaffold(body: Center(child: Text('Product not found')));

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(icon: const Icon(Icons.share_outlined), onPressed: () {}),
          IconButton(
            icon: Icon(
              product.discovery.isWishlisted ? Icons.favorite : Icons.favorite_border,
              color: product.discovery.isWishlisted ? Colors.red : null,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageGallery(product: product),
            ProductPricingSection(product: product),
            AppSpacing.vS.toSliver(),
            ExpandableDetailSection(title: 'Description', content: product.description),
            ExpandableDetailSection(title: 'Ingredients', content: product.nutrition.ingredients.join(', ')),
            ExpandableDetailSection(title: 'Nutritional Info', content: product.nutrition.nutritionalInfo),
            ExpandableDetailSection(title: 'Storage & Usage', content: '${product.storage.storageTemperature ?? ''}\n\n${product.usageInstructions ?? ''}'),
            AppSpacing.vS.toSliver(),
            ManufacturerInfoSection(product: product),
            AppSpacing.vS.toSliver(),
            _buildReviewPreview(context, product),
            AppSpacing.vS.toSliver(),
            _buildRelatedProducts(product.relatedProducts),
            const SizedBox(height: 120),
          ],
        ),
      ),
      bottomSheet: _buildBottomActions(context, product),
    );
  }

  Widget _buildReviewPreview(BuildContext context, dynamic product) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Reviews & Ratings', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
              TextButton(
                onPressed: () => context.push(AppRoutes.reviews, extra: {
                  'targetId': product.id,
                  'targetName': product.name,
                }),
                child: const Text('View All'),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.star, color: AppColors.secondary, size: 24),
              const SizedBox(width: 8),
              Text(
                product.rating.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(width: 8),
              Text(
                '(${product.totalReviews} reviews)',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRelatedProducts(List<dynamic> related) {
    if (related.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(AppSpacing.m),
          child: Text(
            'Frequently Bought Together',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: AppSpacing.m),
            itemCount: related.length,
            itemBuilder: (context, index) => ProductGridCard(product: related[index]),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomActions(BuildContext context, dynamic product) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(13), blurRadius: 10, offset: const Offset(0, -4)),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, 54),
                  side: const BorderSide(color: AppColors.primary, width: 1.5),
                  shape: RoundedRectangleBorder(borderRadius: AppRadius.rM),
                ),
                child: const Text('BUY NOW', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary)),
              ),
            ),
            AppSpacing.hM,
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(0, 54),
                  shape: RoundedRectangleBorder(borderRadius: AppRadius.rM),
                ),
                child: const Text('ADD TO CART', style: TextStyle(fontWeight: FontWeight.w900)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension on SizedBox {
  Widget toSliver() => Container(height: height, color: Colors.grey[100]);
}
