import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../home/data/models/product_model.dart';
import '../../home/data/models/shop_model.dart';
import '../domain/repositories/search_repository.dart';
import '../data/repositories/search_repository_impl.dart';
import '../../../core/services/shared_pref_service.dart';

part 'search_provider.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(false) bool isLoading,
    @Default([]) List<String> recentSearches,
    @Default([]) List<String> trendingSearches,
    @Default([]) List<ProductModel> products,
    @Default([]) List<ShopModel> shops,
    String? query,
    String? errorMessage,
  }) = _SearchState;
}

final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  return SearchRepositoryImpl(ref.watch(sharedPreferencesServiceProvider));
});

class SearchNotifier extends StateNotifier<SearchState> {
  final SearchRepository _repository;
  Timer? _debounce;

  SearchNotifier(this._repository) : super(const SearchState()) {
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    final recent = await _repository.getRecentSearches();
    final trending = await _repository.getTrendingSearches();
    state = state.copyWith(recentSearches: recent, trendingSearches: trending);
  }

  void onQueryChanged(String query) {
    state = state.copyWith(query: query);
    
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    
    if (query.isEmpty) {
      state = state.copyWith(products: [], shops: [], isLoading: false);
      return;
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      _performSearch(query);
    });
  }

  Future<void> _performSearch(String query) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final results = await Future.wait([
        _repository.searchProducts(query),
        _repository.searchShops(query),
      ]);
      
      state = state.copyWith(
        isLoading: false,
        products: results[0] as List<ProductModel>,
        shops: results[1] as List<ShopModel>,
      );
      
      if (state.products.isNotEmpty || state.shops.isNotEmpty) {
        await _repository.saveSearch(query);
        _loadInitialData();
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> clearHistory() async {
    await _repository.clearHistory();
    _loadInitialData();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier(ref.watch(searchRepositoryProvider));
});
