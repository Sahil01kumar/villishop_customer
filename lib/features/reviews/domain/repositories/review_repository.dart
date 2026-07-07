import '../../data/models/review_model.dart';
import '../../data/models/rating_distribution_model.dart';

abstract class ReviewRepository {
  Future<List<ReviewModel>> getReviews({
    required String targetId, // productId or shopId
    String? filter,
    String? sortBy,
    int page = 1,
    int limit = 20,
  });

  Future<RatingDistributionModel> getRatingSummary(String targetId);
  
  Future<ReviewAnalyticsModel> getReviewAnalytics(String targetId);

  Future<void> submitReview({
    required String targetId,
    required double rating,
    required String description,
    String? title,
    List<String>? imagePaths,
    bool isAnonymous = false,
  });

  Future<void> updateReview(ReviewModel review);
  
  Future<void> deleteReview(String reviewId);

  Future<void> markHelpful(String reviewId);
  
  Future<void> reportReview(String reviewId, String reason);
}
