import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../home/data/models/product_model.dart';
import '../../../providers/product_details_provider.dart';

class ProductImageGallery extends ConsumerWidget {
  final ProductModel product;
  const ProductImageGallery({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(productDetailsProvider(product.id).select((s) => s.selectedImageIndex));
    final images = product.imageUrls.isNotEmpty ? product.imageUrls : [product.imageUrl];

    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.white,
              child: PageView.builder(
                onPageChanged: (index) => ref.read(productDetailsProvider(product.id).notifier).updateImageIndex(index),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Hero(
                    tag: 'product-${product.id}',
                    child: Center(
                      child: images[index].isNotEmpty
                          ? Image.network(images[index], fit: BoxFit.contain)
                          : Icon(Icons.shopping_bag_outlined, size: 120, color: AppColors.primary.withAlpha(50)),
                    ),
                  );
                },
              ),
            ),
            if (product.healthLabels.isVegan) // Enterprise model uses isVegan
              const Positioned(
                top: 16,
                left: 16,
                child: Icon(Icons.radio_button_checked, color: Colors.green, size: 24),
              ),
          ],
        ),
        if (images.length > 1) ...[
          AppSpacing.vS,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: selectedIndex == index ? 24 : 8,
                decoration: BoxDecoration(
                  color: selectedIndex == index ? AppColors.primary : Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ],
      ],
    );
  }
}
