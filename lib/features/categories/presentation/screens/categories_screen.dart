import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../widgets/category_card.dart';
import '../../providers/category_provider.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredCategoriesAsync = ref.watch(filteredCategoriesProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('All Categories'),
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.m),
            child: Row(
              children: [
                Expanded(
                  child: CustomSearchBar(
                    hint: 'Search categories...',
                    onChanged: (value) {
                      ref.read(categorySearchQueryProvider.notifier).state = value;
                    },
                  ),
                ),
                AppSpacing.hS,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: AppRadius.rL,
                    border: Border.all(color: Colors.grey.withAlpha(51)),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.tune, color: AppColors.primary),
                    onPressed: () {
                      // Show filter bottom sheet
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredCategoriesAsync.when(
              data: (categories) {
                if (categories.isEmpty) {
                  return const Center(
                    child: Text('No categories found'),
                  );
                }
                return GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: AppSpacing.m,
                    crossAxisSpacing: AppSpacing.m,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return CategoryCard(
                      category: category,
                      onTap: () {
                        // Navigate to sub-categories or product list
                      },
                    );
                  },
                );
              },
              loading: () => const LoadingWidget(),
              error: (error, stack) => CustomErrorWidget(
                message: error.toString(),
                onRetry: () => ref.refresh(categoriesProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
