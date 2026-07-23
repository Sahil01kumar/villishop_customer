import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../location/providers/location_provider.dart';
import '../data/models/order_model.dart';
import '../domain/entities/order_lifecycle_state.dart';
import 'order_provider.dart';

/// Provider that filters the latest active order for the current user.
/// Rebuilds automatically when order status changes via backend/socket.
final activeOrderProvider = Provider<OrderModel?>((ref) {
  final ordersAsync = ref.watch(customerOrdersProvider);
  final zoneName =
      ref.watch(locationProvider.select((s) => s.activeZone?.name));

  return ordersAsync.maybeWhen(
    data: (orders) {
      if (orders.isEmpty) return null;

      // Filter for non-terminal states
      // AND filter by the current zone to ensure synchronization
      final activeOrders = orders.where((o) {
        final isNotTerminal = !o.lifecycleState.isTerminal;

        // Simplified check: assume an order belongs to a zone if it matches active zone name or coordinates
        final matchesZone = zoneName != null &&
            (o.deliveryAddressSnapshot.fullAddress
                .contains(zoneName.split(' ').first));

        return isNotTerminal && matchesZone;
      }).toList();

      if (activeOrders.isEmpty) return null;

      // Return the most recent active order
      activeOrders.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      return activeOrders.first;
    },
    orElse: () => null,
  );
});

/// Specific status provider for the active order card to prevent over-rebuilding
final activeOrderStatusProvider = Provider<OrderLifecycleState?>((ref) {
  return ref
      .watch(activeOrderProvider.select((order) => order?.lifecycleState));
});

/// Progress calculation for the UI progress bar (0.0 to 1.0)
final activeOrderProgressProvider = Provider<double>((ref) {
  final state = ref.watch(activeOrderStatusProvider);
  if (state == null) return 0.0;

  switch (state) {
    case OrderLifecycleState.orderPlaced:
      return 0.25;
    case OrderLifecycleState.deliveryPartnerAssigned:
      return 0.50;
    case OrderLifecycleState.onTheWay:
      return 0.75;
    case OrderLifecycleState.delivered:
      return 1.0;
    default:
      return 0.0;
  }
});
