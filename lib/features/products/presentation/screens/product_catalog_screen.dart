import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../home/presentation/widgets/product_card.dart';
import '../widgets/product_list_tile.dart';
import '../../providers/product_catalog_provider.dart';

class ProductCatalogScreen extends ConsumerWidget {
  final String shopId;
  final String shopName;

  const ProductCatalogScreen({
    super.key,
    required this.shopId,
    required this.shopName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productCatalogProvider(shopId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(shopName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const Text('8 mins delivery',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}, // Focus search bar
          ),
          IconButton(
            icon: Icon(state.isGridView ? Icons.view_list : Icons.grid_view),
            onPressed: () => ref
                .read(productCatalogProvider(shopId).notifier)
                .toggleViewMode(),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSearchAndFilter(ref),
          _buildCategoryTabs(state, ref),
          Expanded(
            child: state.isLoading
                ? const LoadingWidget()
                : state.errorMessage != null
                    ? CustomErrorWidget(
                        message: state.errorMessage!,
                        onRetry: () => ref
                            .read(productCatalogProvider(shopId).notifier)
                            .refresh(),
                      )
                    : state.products.isEmpty
                        ? const EmptyWidget(
                            title: 'No Products',
                            message:
                                'We couldn\'t find any products in this category at this shop.',
                          )
                        : _buildProductGrid(state),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchAndFilter(WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Row(
        children: [
          Expanded(
            child: CustomSearchBar(
              hint: 'Search items in this shop',
              onChanged: (val) => ref
                  .read(productCatalogProvider(shopId).notifier)
                  .updateSearchQuery(val),
            ),
          ),
          AppSpacing.hS,
          _buildSortButton(),
        ],
      ),
    );
  }

  Widget _buildSortButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rL,
        border: Border.all(color: Colors.grey.withAlpha(50)),
      ),
      child: IconButton(
        icon: const Icon(Icons.tune, color: AppColors.primary),
        onPressed: () {},
      ),
    );
  }

  Widget _buildCategoryTabs(dynamic state, WidgetRef ref) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFEEEEEE))),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
        itemCount: state.categories.length,
        itemBuilder: (context, index) {
          final category = state.categories[index];
          final isSelected = category == state.selectedCategory;
          return GestureDetector(
            onTap: () => ref
                .read(productCatalogProvider(shopId).notifier)
                .updateCategory(category),
            child: Container(
              margin: const EdgeInsets.only(right: 24),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected ? AppColors.primary : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? AppColors.primary : Colors.grey[600],
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductGrid(dynamic state) {
    if (state.isGridView) {
      return GridView.builder(
        padding: const EdgeInsets.all(AppSpacing.m),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSpacing.m,
          crossAxisSpacing: AppSpacing.m,
          childAspectRatio: 0.62,
        ),
        itemCount: state.products.length,
        itemBuilder: (context, index) =>
            ProductCard(product: state.products[index], width: double.infinity),
      );
    } else {
      return ListView.separated(
        padding: const EdgeInsets.all(AppSpacing.m),
        itemCount: state.products.length,
        separatorBuilder: (context, index) => AppSpacing.vM,
        itemBuilder: (context, index) =>
            ProductListTile(product: state.products[index]),
      );
    }
  }
}
