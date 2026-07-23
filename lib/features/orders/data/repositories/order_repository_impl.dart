import 'dart:async';
import 'dart:convert';
import '../../domain/repositories/order_repository.dart';
import '../models/order_review_model.dart';
import '../models/order_model.dart';
import '../../domain/entities/order_lifecycle_state.dart';
import '../../domain/services/order_lifecycle_engine.dart';
import '../../../../core/services/shared_pref_service.dart';

class OrderRepositoryImpl implements OrderRepository {
  final SharedPreferenceService? _prefs;
  static const String _pendingOrderKey = 'pending_order_v2';
  static const String _orderHistoryKey = 'order_history_v2';
  List<OrderModel> _orders = [];

  final _orderStreamController = StreamController<OrderModel?>.broadcast();
  final _allOrdersStreamController =
      StreamController<List<OrderModel>>.broadcast();

  OrderRepositoryImpl([this._prefs]) {
    _loadOrdersFromPrefs();
  }

  Future<void> _loadOrdersFromPrefs() async {
    if (_prefs == null) return;
    final jsonStr = _prefs!.getString(_orderHistoryKey);
    if (jsonStr != null) {
      try {
        final List<dynamic> list = jsonDecode(jsonStr);
        _orders = list.map((item) => OrderModel.fromJson(item)).toList();
        _allOrdersStreamController.add(_orders);
      } catch (_) {}
    }
  }

  Future<void> _saveOrdersToPrefs() async {
    if (_prefs == null) return;
    await _prefs!.setString(
        _orderHistoryKey, jsonEncode(_orders.map((o) => o.toJson()).toList()));
  }

  @override
  Future<bool> validateOrder(OrderReviewModel review) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return review.cart.shopCarts.isNotEmpty &&
        review.address.fullAddress.isNotEmpty;
  }

  @override
  Future<OrderModel> createOrder(OrderModel order) async {
    // Production ready: Persistence before network
    _orders.insert(0, order);
    await _saveOrdersToPrefs();

    // Emit initial state
    _orderStreamController.add(order);
    _allOrdersStreamController.add(_orders);

    return order;
  }

  @override
  Future<OrderModel?> getOrderById(String orderId) async {
    try {
      return _orders.firstWhere((o) => o.orderId == orderId);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<List<OrderModel>> getCustomerOrders(String customerId) async {
    return _orders.where((o) => o.customerId == customerId).toList();
  }

  @override
  Stream<List<OrderModel>> watchCustomerOrders(String customerId) {
    return _allOrdersStreamController.stream.map(
        (orders) => orders.where((o) => o.customerId == customerId).toList());
  }

  @override
  Future<OrderModel?> updateOrderStatus(
      String orderId, OrderLifecycleState newState) async {
    final index = _orders.indexWhere((o) => o.orderId == orderId);
    if (index != -1) {
      final oldOrder = _orders[index];

      // Use the lifecycle engine to apply transition and validation
      final updatedOrder =
          OrderLifecycleEngine.applyTransition(oldOrder, newState);

      _orders[index] = updatedOrder;
      await _saveOrdersToPrefs();

      // Notify observers
      _orderStreamController.add(updatedOrder);
      _allOrdersStreamController.add(_orders);
      return updatedOrder;
    }
    return null;
  }

  @override
  Stream<OrderModel?> observeOrder(String orderId) {
    // In production, this would be a Firebase/Supabase stream
    return _orderStreamController.stream
        .where((order) => order?.orderId == orderId);
  }

  @override
  Future<void> savePendingOrder(OrderModel order) async {
    if (_prefs == null) return;
    await _prefs!.setString(_pendingOrderKey, jsonEncode(order.toJson()));
  }

  @override
  Future<OrderModel?> getPendingOrder() async {
    if (_prefs == null) return null;
    final jsonStr = _prefs!.getString(_pendingOrderKey);
    if (jsonStr == null) return null;
    try {
      return OrderModel.fromJson(jsonDecode(jsonStr));
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> clearPendingOrder() async {
    if (_prefs == null) return;
    await _prefs!.remove(_pendingOrderKey);
  }
}
