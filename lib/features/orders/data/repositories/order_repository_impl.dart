import '../../domain/repositories/order_repository.dart';
import '../models/order_review_model.dart';

class OrderRepositoryImpl implements OrderRepository {
  @override
  Future<bool> validateOrder(OrderReviewModel review) async {
    // Simulate API validation
    await Future.delayed(const Duration(milliseconds: 500));
    
    if (review.cart.shopCarts.isEmpty) return false;
    
    // Check if all shops are open (Simulated)
    for (var shopCart in review.cart.shopCarts) {
       if (!shopCart.isOpen) return false;
    }
    
    // Check min order value (Simulated)
    if (review.cart.overallSummary.grandTotal < 50) return false;

    return true;
  }
}
