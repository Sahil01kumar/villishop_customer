import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../home/presentation/widgets/product_card.dart';
import '../../../home/presentation/widgets/shop_card.dart';
import '../../providers/search_provider.dart';
import '../../../../core/widgets/floating_cart_bar.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchProvider);
    final query = searchState.query ?? '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                onPressed: () => context.pop(),
              ),
              Expanded(
                child: CustomSearchBar(
                  controller: _searchController,
                  hint: 'Search milk, bread, butter...',
                  onChanged: (val) =>
                      ref.read(searchProvider.notifier).onQueryChanged(val),
                  suffixIcon: query.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.close_rounded,
                              color: Colors.grey),
                          onPressed: () {
                            _searchController.clear();
                            ref
                                .read(searchProvider.notifier)
                                .onQueryChanged('');
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.mic_none_rounded,
                              color: AppColors.primary),
                          onPressed: () {},
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: query.isEmpty
          ? _InitialProductSearchView(
              recent: searchState.recentSearches,
              trending: searchState.trendingSearches,
              onSelect: (val) {
                _searchController.text = val;
                ref.read(searchProvider.notifier).onQueryChanged(val);
              },
              onClearHistory: () =>
                  ref.read(searchProvider.notifier).clearHistory(),
            )
          : searchState.isLoading
              ? const LoadingWidget()
              : (searchState.products.isEmpty && searchState.shops.isEmpty)
                  ? const EmptyWidget(
                      title: 'No Items Found',
                      message:
                          'Try searching for something else like "Milk" or "Eggs".',
                      icon: Icons.search_off_outlined,
                    )
                  : _SearchResultsSliverView(
                      products: searchState.products,
                      shops: searchState.shops,
                    ),
      floatingActionButton: const FloatingCartBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _InitialProductSearchView extends StatelessWidget {
  final List<String> recent;
  final List<String> trending;
  final Function(String) onSelect;
  final VoidCallback onClearHistory;

  const _InitialProductSearchView({
    required this.recent,
    required this.trending,
    required this.onSelect,
    required this.onClearHistory,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.m),
      physics: const BouncingScrollPhysics(),
      children: [
        if (recent.isNotEmpty) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Searches',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
              ),
              TextButton(
                onPressed: onClearHistory,
                child: const Text('Clear',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Wrap(
            spacing: 8,
            children: recent
                .map((s) => ActionChip(
                      label: Text(s),
                      onPressed: () => onSelect(s),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey.withAlpha(50))),
                    ))
                .toList(),
          ),
          AppSpacing.vL,
        ],
        const Text(
          'Trending Products',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
        ),
        AppSpacing.vM,
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: trending
              .map((s) => InkWell(
                    onTap: () => onSelect(s),
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withAlpha(10),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: AppColors.primary.withAlpha(30)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.trending_up_rounded,
                              size: 16, color: AppColors.primary),
                          AppSpacing.hS,
                          Text(s,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 13)),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}

class _SearchResultsSliverView extends StatelessWidget {
  final List<dynamic> products;
  final List<dynamic> shops;

  const _SearchResultsSliverView({required this.products, required this.shops});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        if (shops.isNotEmpty) ...[
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(
                AppSpacing.m, AppSpacing.m, AppSpacing.m, AppSpacing.s),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Shops',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
                itemCount: shops.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: AppSpacing.m),
                    child: ShopCard(shop: shops[index]),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: AppSpacing.vL),
        ],
        if (products.isNotEmpty) ...[
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(
                AppSpacing.m, 0, AppSpacing.m, AppSpacing.s),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Products',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.58,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => ProductCard(product: products[index])
                    .animate()
                    .fadeIn(delay: (index * 50).ms)
                    .scale(begin: const Offset(0.95, 0.95)),
                childCount: products.length,
              ),
            ),
          ),
        ],
        const SliverToBoxAdapter(child: SizedBox(height: 120)),
      ],
    );
  }
}
