import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageWithFallback extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final IconData fallbackIcon;

  const NetworkImageWithFallback({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.fallbackIcon = Icons.image_not_supported_outlined,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return _buildFallback();
    }

    return Image.network(
      imageUrl,
      fit: fit,
      width: width,
      height: height,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: width ?? double.infinity,
            height: height ?? double.infinity,
            color: Colors.white,
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        // Log error in debug mode only
        debugPrint('Image loading failed for: $imageUrl');
        return _buildFallback();
      },
    );
  }

  Widget _buildFallback() {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      color: const Color(0xFFF3F4F6),
      child: Center(
        child: Icon(
          fallbackIcon,
          size: 32,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
