import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';

class QuantityStepper extends ConsumerWidget {
  final ProductModel product;
  final double? width;
  final double? height;

  const QuantityStepper({
    super.key,
    required this.product,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Optimized: Only watch the specific quantity for this product
    final quantity = ref.watch(cartProvider.select((s) {
      for (var shopCart in s.cart.shopCarts) {
        for (var item in shopCart.items) {
          if (item.product.id == product.id) return item.quantity;
        }
      }
      return 0;
    }));

    if (quantity == 0) {
      return InkWell(
        onTap: () => ref.read(cartProvider.notifier).addToCart(product),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: width ?? 72,
          height: height ?? 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.green.shade700, width: 1.5),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(5),
                  blurRadius: 4,
                  offset: const Offset(0, 2))
            ],
          ),
          child: Text(
            'ADD',
            style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.w900,
                fontSize: 13),
          ),
        ),
      );
    }

    return Container(
      width: width ?? 72,
      height: height ?? 32,
      decoration: BoxDecoration(
        color: Colors.green.shade700,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.green.withAlpha(20),
              blurRadius: 8,
              offset: const Offset(0, 4))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _StepperButton(
            icon: Icons.remove,
            onPressed: () => ref
                .read(cartProvider.notifier)
                .decrementQuantity(product.shopId ?? 'local_shop', product.id),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) =>
                ScaleTransition(scale: animation, child: child),
            child: Text(
              quantity.toString(),
              key: ValueKey<int>(quantity),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 14),
            ),
          ),
          _StepperButton(
            icon: Icons.add,
            onPressed: () => ref
                .read(cartProvider.notifier)
                .incrementQuantity(product.shopId ?? 'local_shop', product.id),
          ),
        ],
      ),
    );
  }
}

class _StepperButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _StepperButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 24,
          height: 32,
          alignment: Alignment.center,
          child: Icon(icon, color: Colors.white, size: 16),
        ),
      ),
    );
  }
}
