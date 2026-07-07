import 'package:flutter/material.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../home/data/models/product_model.dart';

class ManufacturerInfoSection extends StatelessWidget {
  final ProductModel product;
  const ManufacturerInfoSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Important Information',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          AppSpacing.vM,
          _buildInfoItem('Shelf Life', product.manufacturing.shelfLife),
          _buildInfoItem('FSSAI License', product.manufacturing.fssaiNumber),
          _buildInfoItem('Country of Origin', product.manufacturing.countryOfOrigin),
          _buildInfoItem('Manufacturer', product.manufacturing.manufacturer),
          _buildInfoItem('Packed By', product.manufacturing.packedBy),
          _buildInfoItem('Unit', '${product.packaging.weight} ${product.packaging.unit}'),
          _buildInfoItem('SKU', product.sku),
          _buildInfoItem('Disclaimer', 'Every effort is made to maintain accuracy of all information. However, actual product packaging and materials may contain more and/or different information. It is recommended not to solely rely on the information presented.'),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 13, height: 1.4),
          ),
        ],
      ),
    );
  }
}
