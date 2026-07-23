import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/entities/order_lifecycle_state.dart';
import '../data/models/order_model.dart';
import '../domain/repositories/order_repository.dart';
import 'order_provider.dart';

/// Single Source of Truth for the current order state
final currentOrderProvider =
    StreamProvider.family<OrderModel?, String>((ref, orderId) {
  final repository = ref.watch(orderRepositoryProvider);
  return repository.observeOrder(orderId);
});

/// Specific lifecycle state provider for efficient rebuilding
final orderStateProvider =
    Provider.family<OrderLifecycleState?, String>((ref, orderId) {
  final orderAsync = ref.watch(currentOrderProvider(orderId));
  return orderAsync.maybeWhen(
    data: (order) => order?.lifecycleState,
    orElse: () => null,
  );
});

/// Lifecycle engine provider to handle UI actions and transitions
class OrderLifecycleNotifier extends StateNotifier<AsyncValue<void>> {
  final OrderRepository _repository;

  OrderLifecycleNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<void> updateStatus(
      String orderId, OrderLifecycleState newState) async {
    state = const AsyncValue.loading();
    try {
      await _repository.updateOrderStatus(orderId, newState);
      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final orderLifecycleProvider =
    StateNotifierProvider<OrderLifecycleNotifier, AsyncValue<void>>((ref) {
  return OrderLifecycleNotifier(ref.watch(orderRepositoryProvider));
});
