import 'package:villishop_customer/features/cart/domain/repositories/validation/cart_validation_repository.dart';
import 'package:villishop_customer/features/cart/data/models/validation/cart_validation_model.dart';
import 'package:villishop_customer/features/cart/data/models/validation/validation_result_model.dart';
import 'package:villishop_customer/features/cart/data/models/cart_model.dart';
import 'package:villishop_customer/features/products/data/models/sub_models/inventory_info.dart';

class CartValidationRepositoryImpl implements CartValidationRepository {
  @override
  Future<CartValidationModel> validateCart(CartModel cart) async {
    await Future.delayed(const Duration(milliseconds: 600));
    
    List<ValidationResultModel> results = [];
    int errors = 0;
    int warnings = 0;

    for (var shopCart in cart.shopCarts) {
      // 1. Shop Open Validation
      if (!shopCart.isOpen) {
        results.add(ValidationResultModel(
          ruleId: 'shop_closed',
          message: '${shopCart.shopName} is currently closed.',
          severity: ValidationSeverity.error,
          isValid: false,
          errorCode: 'SHOP_CLOSED',
        ));
        errors++;
      }

      // 2. Minimum Order Validation
      if (shopCart.summary.subTotal < shopCart.minOrderValue) {
        results.add(ValidationResultModel(
          ruleId: 'min_order',
          message: 'Min order for ${shopCart.shopName} is ₹${shopCart.minOrderValue.toStringAsFixed(0)}',
          severity: ValidationSeverity.warning,
          isValid: false,
          errorCode: 'MIN_ORDER_NOT_MET',
        ));
        warnings++;
      }

      for (var item in shopCart.items) {
        final product = item.product;

        // 3. Stock Validation
        if (product.inventory.stockStatus == StockStatus.outOfStock) {
          results.add(ValidationResultModel(
            ruleId: 'oos_${product.id}',
            message: '${product.name} is out of stock.',
            severity: ValidationSeverity.error,
            isValid: false,
            errorCode: 'OUT_OF_STOCK',
          ));
          errors++;
        } else if (product.inventory.stockStatus == StockStatus.lowStock) {
          results.add(ValidationResultModel(
            ruleId: 'low_stock_${product.id}',
            message: 'Only ${product.inventory.availableQuantity} left for ${product.name}.',
            severity: ValidationSeverity.warning,
            isValid: true,
            errorCode: 'LOW_STOCK_WARNING',
          ));
          warnings++;
        }

        // 4. Quantity Limit Validation
        if (item.quantity > product.inventory.maxOrderQuantity) {
          results.add(ValidationResultModel(
            ruleId: 'max_qty_${product.id}',
            message: 'Max limit for ${product.name} is ${product.inventory.maxOrderQuantity}.',
            severity: ValidationSeverity.error,
            isValid: false,
            errorCode: 'MAX_QTY_EXCEEDED',
          ));
          errors++;
        }
      }
    }

    return CartValidationModel(
      cartId: 'current_cart',
      results: results,
      isCheckoutAllowed: errors == 0,
      validatedAt: DateTime.now(),
      errorCount: errors,
      warningCount: warnings,
    );
  }

  @override
  Future<void> syncValidationRules() async {
    // API Ready
  }
}
