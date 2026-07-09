import '../../data/models/order_review_model.dart';

abstract class OrderRepository {
  Future<bool> validateOrder(OrderReviewModel review);
}
