import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/search_bar_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../home/presentation/widgets/product_card.dart';
import '../../../home/presentation/widgets/shop_card.dart';
import '../../providers/search_provider.dart';

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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: CustomSearchBar(
          controller: _searchController,
          hint: 'Search "milk", "bread"...',
          onChanged: (val) =>
              ref.read(searchProvider.notifier).onQueryChanged(val),
          suffixIcon: query.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    _searchController.clear();
                    ref.read(searchProvider.notifier).onQueryChanged('');
                  },
                )
              : IconButton(
                  icon: const Icon(Icons.mic_none, color: AppColors.primary),
                  onPressed: () {},
                ),
        ),
      ),
      body: query.isEmpty
          ? _InitialSearchView(
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
                      message: 'No results found for your search',
                      icon: Icons.search_off_outlined,
                    )
                  : _SearchResultsView(
                      products: searchState.products,
                      shops: searchState.shops,
                    ),
    );
  }
}

class _InitialSearchView extends StatelessWidget {
  final List<String> recent;
  final List<String> trending;
  final Function(String) onSelect;
  final VoidCallback onClearHistory;

  const _InitialSearchView({
    required this.recent,
    required this.trending,
    required this.onSelect,
    required this.onClearHistory,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.m),
      children: [
        if (recent.isNotEmpty) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Searches',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: onClearHistory,
                child: const Text('Clear',
                    style: TextStyle(color: Colors.red, fontSize: 13)),
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
        Text(
          'Trending Searches',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        AppSpacing.vM,
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: trending
              .map((s) => InkWell(
                    onTap: () => onSelect(s),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withAlpha(10),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: AppColors.primary.withAlpha(30)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.trending_up,
                              size: 16, color: AppColors.primary),
                          AppSpacing.hS,
                          Text(s,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
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

class _SearchResultsView extends StatelessWidget {
  final List<dynamic> products;
  final List<dynamic> shops;

  const _SearchResultsView({required this.products, required this.shops});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.m),
      children: [
        if (shops.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: Text(
              'Shops',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          AppSpacing.vS,
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: AppSpacing.m),
              itemCount: shops.length,
              itemBuilder: (context, index) => ShopCard(shop: shops[index]),
            ),
          ),
          AppSpacing.vL,
        ],
        if (products.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            child: Text(
              'Products',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          AppSpacing.vS,
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.7,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) =>
                ProductCard(product: products[index]),
          ),
        ],
      ],
    );
  }
}
