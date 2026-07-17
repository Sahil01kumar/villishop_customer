import 'package:villishop_customer/features/cart/data/models/validation/cart_validation_model.dart';
import 'package:villishop_customer/features/cart/data/models/cart_model.dart';

abstract class CartValidationRepository {
  Future<CartValidationModel> validateCart(CartModel cart);

  Future<void> syncValidationRules();
}
