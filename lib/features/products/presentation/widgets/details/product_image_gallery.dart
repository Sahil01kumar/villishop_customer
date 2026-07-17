import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../home/data/models/product_model.dart';
import '../../../providers/product_details_provider.dart';

class ProductImageGallery extends ConsumerWidget {
  final ProductModel product;
  const ProductImageGallery({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(
        productDetailsProvider(product.id).select((s) => s.selectedImageIndex));
    final images =
        product.imageUrls.isNotEmpty ? product.imageUrls : [product.imageUrl];

    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 320,
              width: double.infinity,
              color: Colors.white,
              child: PageView.builder(
                onPageChanged: (index) => ref
                    .read(productDetailsProvider(product.id).notifier)
                    .updateImageIndex(index),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Hero(
                    tag: 'product-${product.id}',
                    child: InteractiveViewer(
                      minScale: 1.0,
                      maxScale: 3.0,
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: images[index],
                          fit: BoxFit.contain,
                          placeholder: (context, url) => Container(
                            color: Colors.white,
                            child: const Center(child: CircularProgressIndicator()),
                          ),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.shopping_bag_outlined,
                            size: 64,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            
            // Image indicators
            if (images.length > 1)
              Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 6,
                      width: selectedIndex == index ? 20 : 6,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColors.primary
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(3),
                      ),
                    );
                  }),
                ),
              ),

            // Vegan/Organic icons overlay
            Positioned(
              top: 16,
              left: 16,
              child: Column(
                children: [
                  if (product.healthLabels.isVegan)
                    _buildStatusIcon(Icons.radio_button_checked, Colors.green),
                  if (product.healthLabels.isOrganic)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: _buildStatusIcon(Icons.eco_rounded, Colors.green),
                    ),
                ],
              ),
            ),

            // Zoom hint
            Positioned(
              bottom: 16,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(100),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.zoom_in_rounded, color: Colors.white, size: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatusIcon(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 1),
      ),
      child: Icon(icon, color: color, size: 18),
    );
  }
}
