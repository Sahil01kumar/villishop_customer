import 'package:villishop_customer/features/cart/data/models/validation/cart_validation_model.dart';
import 'package:villishop_customer/features/cart/data/models/multi_shop_cart_model.dart';

abstract class CartValidationRepository {
  Future<CartValidationModel> validateCart(MultiShopCartModel cart);
  
  Future<void> syncValidationRules();
}
