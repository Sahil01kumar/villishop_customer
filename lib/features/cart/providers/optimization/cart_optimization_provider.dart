import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/cart/domain/repositories/optimization/cart_optimization_repository.dart';
import 'package:villishop_customer/features/cart/data/repositories/optimization/cart_optimization_repository_impl.dart';
import 'package:villishop_customer/core/services/shared_pref_service.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'package:villishop_customer/features/cart/data/models/optimization/cart_sync_model.dart';
import 'cart_optimization_state.dart';

final cartOptimizationRepositoryProvider =
    Provider<CartOptimizationRepository>((ref) {
  final prefs = ref.watch(sharedPreferencesServiceProvider);
  return CartOptimizationRepositoryImpl(prefs);
});

class CartOptimizationNotifier extends StateNotifier<CartOptimizationState> {
  final CartOptimizationRepository _repository;
  final Ref _ref;

  CartOptimizationNotifier(this._repository, this._ref)
      : super(const CartOptimizationState()) {
    init();
  }

  Future<void> init() async {
    final analytics = await _repository.getCartAnalytics();
    state = state.copyWith(
      isInitialised: true,
      analytics: analytics,
    );
  }

  Future<void> syncCart() async {
    final cart = _ref.read(cartProvider).cart;
    state = state.copyWith(
        syncStatus: state.syncStatus.copyWith(status: SyncStatus.syncing));

    try {
      final result = await _repository.syncCart(cart);
      state = state.copyWith(syncStatus: result);
      await _repository.cacheCartLocally(cart);
    } catch (e) {
      state = state.copyWith(
          syncStatus: state.syncStatus
              .copyWith(status: SyncStatus.failed, errorMessage: e.toString()));
    }
  }

  Future<void> trackEvent(
      String eventName, Map<String, dynamic> metadata) async {
    await _repository.trackCartEvent(eventName, metadata);
  }

  Future<void> loadRecommendations() async {
    final cart = _ref.read(cartProvider).cart;
    final opt = await _repository.getOptimizationData(cart);
    state = state.copyWith(optimization: opt);
  }
}

final cartOptimizationProvider =
    StateNotifierProvider<CartOptimizationNotifier, CartOptimizationState>(
        (ref) {
  return CartOptimizationNotifier(
      ref.watch(cartOptimizationRepositoryProvider), ref);
});
