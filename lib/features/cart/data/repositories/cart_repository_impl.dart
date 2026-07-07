import '../../domain/repositories/cart_repository.dart';
import '../models/cart_model.dart';
import '../models/cart_item_model.dart';
import '../models/cart_summary_model.dart';
import '../../../home/data/models/product_model.dart';

class CartRepositoryImpl implements CartRepository {
  CartModel _currentCart = const CartModel();

  @override
  Future<CartModel> getCart() async {
    return _currentCart;
  }

  @override
  Future<void> addToCart(ProductModel product, {int quantity = 1}) async {
    final existingIndex = _currentCart.items.indexWhere((i) => i.product.id == product.id);
    List<CartItemModel> updatedItems = List.from(_currentCart.items);

    if (existingIndex != -1) {
      updatedItems[existingIndex] = updatedItems[existingIndex].copyWith(
        quantity: updatedItems[existingIndex].quantity + quantity,
      );
    } else {
      updatedItems.add(CartItemModel(
        product: product,
        quantity: quantity,
        addedAt: DateTime.now(),
      ));
    }

    _updateCart(updatedItems);
  }

  @override
  Future<void> removeFromCart(String productId) async {
    final updatedItems = _currentCart.items.where((i) => i.product.id != productId).toList();
    _updateCart(updatedItems);
  }

  @override
  Future<void> updateQuantity(String productId, int quantity) async {
    if (quantity <= 0) {
      await removeFromCart(productId);
      return;
    }
    
    final index = _currentCart.items.indexWhere((i) => i.product.id == productId);
    if (index != -1) {
      List<CartItemModel> updatedItems = List.from(_currentCart.items);
      updatedItems[index] = updatedItems[index].copyWith(quantity: quantity);
      _updateCart(updatedItems);
    }
  }

  @override
  Future<void> clearCart() async {
    _updateCart([]);
  }

  @override
  Future<void> saveForLater(String productId) async {
    // Logic for local storage persistence would go here
  }

  @override
  Future<void> moveToWishlist(String productId) async {
    await removeFromCart(productId);
  }

  @override
  Future<void> syncCartWithServer() async {
    // API Ready for Module 5 Task 3
  }

  void _updateCart(List<CartItemModel> items) {
    double subTotal = 0;
    double discount = 0;
    int totalQty = 0;

    for (var item in items) {
      subTotal += item.product.pricing.mrp * item.quantity;
      discount += (item.product.pricing.mrp - item.product.pricing.sellingPrice) * item.quantity;
      totalQty += item.quantity;
    }

    // Shop grouping logic
    Map<String, List<CartItemModel>> grouped = {};
    for (var item in items) {
      final shopId = item.product.shopId ?? 'Local Shop';
      if (!grouped.containsKey(shopId)) grouped[shopId] = [];
      grouped[shopId]!.add(item);
    }

    _currentCart = _currentCart.copyWith(
      items: items,
      itemsByShop: grouped,
      summary: CartSummaryModel(
        subTotal: subTotal,
        totalDiscount: discount,
        totalItems: items.length,
        totalQuantity: totalQty,
        grandTotal: subTotal - discount,
        deliveryCharge: subTotal - discount > 500 ? 0 : 15,
      ),
    );
  }
}
