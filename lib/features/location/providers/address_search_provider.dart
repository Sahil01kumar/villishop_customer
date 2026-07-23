import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/repositories/location_repository.dart';
import 'location_provider.dart';

part 'address_search_provider.freezed.dart';

@freezed
class AddressSearchState with _$AddressSearchState {
  const factory AddressSearchState({
    @Default(false) bool isLoading,
    @Default([]) List<String> suggestions,
    String? query,
    String? errorMessage,
  }) = _AddressSearchState;
}

class AddressSearchNotifier extends StateNotifier<AddressSearchState> {
  final LocationRepository _repository;
  Timer? _debounce;

  AddressSearchNotifier(this._repository) : super(const AddressSearchState());

  void onQueryChanged(String query) {
    state = state.copyWith(query: query);

    if (_debounce?.isActive ?? false) _debounce?.cancel();

    if (query.isEmpty) {
      state = state.copyWith(suggestions: [], isLoading: false);
      return;
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      _performSearch(query);
    });
  }

  Future<void> _performSearch(String query) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final results = await _repository.searchPlaces(query);
      state = state.copyWith(isLoading: false, suggestions: results);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}

final addressSearchProvider =
    StateNotifierProvider<AddressSearchNotifier, AddressSearchState>((ref) {
  return AddressSearchNotifier(ref.watch(locationRepositoryProvider));
});
