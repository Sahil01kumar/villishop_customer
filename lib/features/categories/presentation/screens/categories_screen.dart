import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';

import '../../../../core/widgets/shimmer_widget.dart';
import '../../../../core/router/app_router.dart';
import '../../providers/category_provider.dart';
import '../../../../features/products/presentation/widgets/product_grid_card.dart';

class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key});

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  final ScrollController _sidebarController = ScrollController();

  @override
  void dispose() {
    _sidebarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(categoryProvider);

    // Auto-scroll logic when a category is selected from Home
    ref.listen<CategoryState>(categoryProvider, (previous, next) {
      if (next.selectedParent != null && next.parentCategories.isNotEmpty) {
        final index = next.parentCategories
            .indexWhere((c) => c.id == next.selectedParent!.id);
        if (index != -1 && _sidebarController.hasClients) {
          _sidebarController.animateTo(
            index * 100.0, // Fixed height for sidebar items
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          state.selectedParent?.name ?? 'Categories',
          style:
              const TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded, color: Colors.black),
            onPressed: () => context.push(AppRoutes.search),
          ),
        ],
      ),
      body: state.isLoading && state.parentCategories.isEmpty
          ? const _CategoriesSkeleton()
          : Row(
              children: [
                _buildSidebar(context, ref, state),
                Expanded(
                  child: _buildMainContent(context, ref, state),
                ),
              ],
            ),
    );
  }

  Widget _buildSidebar(
      BuildContext context, WidgetRef ref, CategoryState state) {
    return Container(
      width: 90,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        border: Border(right: BorderSide(color: Colors.grey.withAlpha(20))),
      ),
      child: ListView.builder(
        controller: _sidebarController,
        itemCount: state.parentCategories.length,
        itemBuilder: (context, index) {
          final category = state.parentCategories[index];
          final isSelected = state.selectedParent?.id == category.id;

          return GestureDetector(
            onTap: () {
              ref.read(categoryProvider.notifier).selectParent(category);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                border: Border(
                  left: BorderSide(
                    color: isSelected ? AppColors.primary : Colors.transparent,
                    width: 4,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary.withAlpha(10)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: isSelected
                          ? null
                          : [
                              BoxShadow(
                                  color: Colors.black.withAlpha(5),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2))
                            ],
                    ),
                    padding: const EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: category.image.startsWith('http')
                          ? CachedNetworkImage(
                              imageUrl: category.image,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                color: Colors.grey[100],
                              ),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.category_outlined,
                                color: AppColors.primary,
                                size: 24,
                              ),
                            )
                          : Center(
                              child: Text(category.image,
                                  style: const TextStyle(fontSize: 24))),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    category.name,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight:
                          isSelected ? FontWeight.w900 : FontWeight.w700,
                      color: isSelected ? AppColors.primary : Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMainContent(
      BuildContext context, WidgetRef ref, CategoryState state) {
    if (state.selectedParent == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (state.selectedParent!.subCategories.isNotEmpty)
          Container(
            height: 56,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              itemCount: state.selectedParent!.subCategories.length,
              itemBuilder: (context, index) {
                final sub = state.selectedParent!.subCategories[index];
                final isSelected = state.selectedSub?.id == sub.id;

                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(sub.name),
                    selected: isSelected,
                    onSelected: (val) {
                      if (val) {
                        ref.read(categoryProvider.notifier).selectSub(sub);
                      }
                    },
                    selectedColor: AppColors.primary.withAlpha(15),
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight:
                          isSelected ? FontWeight.w900 : FontWeight.w700,
                      color: isSelected ? AppColors.primary : Colors.black87,
                    ),
                    backgroundColor: Colors.grey[100],
                    side: BorderSide(
                        color: isSelected
                            ? AppColors.primary
                            : Colors.transparent),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    showCheckmark: false,
                  ),
                );
              },
            ),
          ),
        Expanded(
          child: state.isLoading && state.products.isEmpty
              ? const _ProductsSkeleton()
              : state.products.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_basket_outlined,
                              size: 64, color: Colors.grey[200]),
                          const SizedBox(height: 16),
                          const Text('No products available',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ).animate().fadeIn()
                  : GridView.builder(
                      padding: const EdgeInsets.all(12),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.55,
                      ),
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return ProductGridCard(product: state.products[index])
                            .animate()
                            .fadeIn(delay: (index * 50).ms)
                            .scale(begin: const Offset(0.95, 0.95));
                      },
                    ),
        ),
      ],
    );
  }
}

class _CategoriesSkeleton extends StatelessWidget {
  const _CategoriesSkeleton();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          color: const Color(0xFFF8F9FB),
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Column(
                children: [
                  ShimmerWidget.circular(width: 50, height: 50),
                  SizedBox(height: 8),
                  ShimmerWidget.rectangular(height: 10, width: 60),
                ],
              ),
            ),
          ),
        ),
        const Expanded(child: _ProductsSkeleton()),
      ],
    );
  }
}

class _ProductsSkeleton extends StatelessWidget {
  const _ProductsSkeleton();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.55,
      ),
      itemCount: 6,
      itemBuilder: (context, index) =>
          const ShimmerWidget.rounded(width: double.infinity, height: 240),
    );
  }
}
