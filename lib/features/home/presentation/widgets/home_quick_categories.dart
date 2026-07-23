import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';

class HomeQuickCategories extends StatelessWidget {
  const HomeQuickCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'name': 'Milk', 'icon': Icons.local_cafe_outlined, 'color': Colors.blue},
      {'name': 'Vegetables', 'icon': Icons.eco_outlined, 'color': Colors.green},
      {'name': 'Fruits', 'icon': Icons.apple_outlined, 'color': Colors.orange},
      {'name': 'Atta', 'icon': Icons.grain_outlined, 'color': Colors.brown},
      {
        'name': 'Bakery',
        'icon': Icons.bakery_dining_outlined,
        'color': Colors.red
      },
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: (item['color'] as Color).withAlpha(10),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: (item['color'] as Color).withAlpha(30)),
            ),
            child: Row(
              children: [
                Icon(item['icon'] as IconData,
                    size: 18, color: item['color'] as Color),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    item['name'] as String,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      color: item['color'] as Color,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
