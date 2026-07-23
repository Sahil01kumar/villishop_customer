import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../widgets/section_header.dart';
import '../widgets/category_item.dart';
import '../../data/models/category_model.dart';
import '../../../main/providers/navigation_provider.dart';
import '../../../categories/providers/category_provider.dart';

class HomeCategoryGrid extends ConsumerWidget {
  final List<CategoryModel> categories;
  const HomeCategoryGrid({super.key, required this.categories});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (categories.isEmpty) return const SizedBox.shrink();

    // Display first 10 categories (2 rows of 5)
    final displayedCategories = categories.take(10).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Shop by Category',
          onSeeAll: () {
            ref.read(navigationIndexProvider.notifier).state = 1;
            context.go(AppRoutes.categories);
          },
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 16,
            crossAxisSpacing: 12,
            childAspectRatio: 0.65,
          ),
          itemCount: displayedCategories.length,
          itemBuilder: (context, index) {
            final category = displayedCategories[index];
            return CategoryItem(
              category: category,
              onTap: () {
                ref.read(pendingCategoryIdProvider.notifier).state =
                    category.id;
                ref.read(navigationIndexProvider.notifier).state = 1;
                context.go(AppRoutes.categories);
              },
            );
          },
        ),
      ],
    );
  }
}
