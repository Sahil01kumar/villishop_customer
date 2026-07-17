import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/order_model.dart';
import '../domain/entities/order_lifecycle_state.dart';
import 'order_provider.dart';
import '../../cart/providers/cart_provider.dart';

/// Provider for completed/terminal orders history
final orderHistoryProvider = Provider<List<OrderModel>>((ref) {
  final ordersAsync = ref.watch(customerOrdersProvider);

  return ordersAsync.maybeWhen(
    data: (orders) {
      // Filter for terminal states (Delivered, Cancelled, etc.)
      final history = orders.where((o) => o.lifecycleState.isTerminal).toList();

      // Sort by newest first
      history.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      return history;
    },
    orElse: () => [],
  );
});

/// Provider to handle reordering logic
final reorderProvider =
    StateNotifierProvider<ReorderNotifier, AsyncValue<void>>((ref) {
  return ReorderNotifier(ref);
});

class ReorderNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;
  ReorderNotifier(this._ref) : super(const AsyncValue.data(null));

  Future<void> reorder(OrderModel order) async {
    state = const AsyncValue.loading();
    try {
      // In production, we would check product availability here
      // For now, we add items back to cart using the cart repository
      final cartNotifier = _ref.read(cartProvider.notifier);

      for (var shopOrder in order.shopOrders) {
        for (var item in shopOrder.items) {
          await cartNotifier.addToCart(item.product, quantity: item.quantity);
        }
      }

      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
