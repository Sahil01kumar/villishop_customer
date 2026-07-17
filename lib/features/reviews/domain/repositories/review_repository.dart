import '../../data/models/review_model.dart';

abstract class ReviewRepository {
  Future<List<ReviewModel>> getProductReviews(String productId);
  Future<List<ReviewModel>> getRiderReviews(String riderId);
  Future<void> submitProductReview(String productId, ReviewModel review);
  Future<void> submitRiderReview(String riderId, ReviewModel review);
  Future<ReviewAnalyticsModel> getProductReviewAnalytics(String productId);
}
