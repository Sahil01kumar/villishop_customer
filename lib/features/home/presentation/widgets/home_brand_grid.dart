import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../widgets/section_header.dart';

class HomeBrandGrid extends StatelessWidget {
  const HomeBrandGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> brands = [
      {'name': 'Amul', 'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968204.png'},
      {'name': 'Mother Dairy', 'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968204.png'},
      {'name': 'Nestle', 'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968204.png'},
      {'name': 'Aashirvaad', 'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968204.png'},
      {'name': 'Fortune', 'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968204.png'},
      {'name': 'Tata', 'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968204.png'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: 'Popular Brands',
          subtitle: 'Quality you can trust',
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: brands.length,
            itemBuilder: (context, index) {
              return Container(
                width: 80,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.withAlpha(25)),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.network(
                        brands[index]['image']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      brands[index]['name']!,
                      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
