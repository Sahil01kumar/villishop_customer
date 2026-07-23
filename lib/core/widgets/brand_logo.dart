import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class BrandLogo extends StatelessWidget {
  final double height;
  final double width;
  final BoxFit fit;

  const BrandLogo({
    super.key,
    this.height = 120,
    this.width = 120,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      height: height,
      width: width,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        // Fallback robust branding if asset fails
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.primary.withAlpha(20),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.shopping_basket_rounded,
            size: height * 0.5,
            color: AppColors.primary,
          ),
        );
      },
    );
  }
}
