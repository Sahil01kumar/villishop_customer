import '../../domain/repositories/review_repository.dart';
import '../models/review_model.dart';
import '../models/rating_distribution_model.dart';
import '../models/review_image_model.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  @override
  Future<List<ReviewModel>> getReviews({
    required String targetId,
    String? filter,
    String? sortBy,
    int page = 1,
    int limit = 20,
  }) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      ReviewModel(
        id: 'rev1',
        userId: 'u1',
        userName: 'Suresh Kumar',
        userProfilePhoto: 'https://i.pravatar.cc/150?u=suresh',
        isVerifiedPurchase: true,
        reviewDate: DateTime.now().subtract(const Duration(days: 2)),
        productVariant: '500ml',
        rating: 5.0,
        title: 'Best quality milk in the village!',
        description: 'The milk is very fresh and thick. My kids love it. Delivering it in 10 minutes is a lifesaver.',
        images: [
          const ReviewImageModel(id: 'img1', url: 'https://images.unsplash.com/photo-1550583724-b2692b85b150?w=500'),
        ],
        helpfulCount: 12,
        positiveKeywords: ['Fresh', 'Fast Delivery'],
        sentimentScore: 0.95,
      ),
      ReviewModel(
        id: 'rev2',
        userId: 'u2',
        userName: 'Anjali Sharma',
        userProfilePhoto: 'https://i.pravatar.cc/150?u=anjali',
        isVerifiedPurchase: true,
        reviewDate: DateTime.now().subtract(const Duration(days: 5)),
        productVariant: '1kg',
        rating: 4.0,
        description: 'Quality is good, but once it was delayed by 5 minutes. Overall satisfied.',
        helpfulCount: 3,
        sentimentScore: 0.7,
      ),
    ];
  }

  @override
  Future<RatingDistributionModel> getRatingSummary(String targetId) async {
    return const RatingDistributionModel(
      fiveStar: 120,
      fourStar: 45,
      threeStar: 10,
      twoStar: 5,
      oneStar: 2,
      totalRatings: 182,
      averageRating: 4.6,
    );
  }

  @override
  Future<ReviewAnalyticsModel> getReviewAnalytics(String targetId) async {
    return const ReviewAnalyticsModel(
      totalReviews: 182,
      positivePercentage: 92.0,
      negativePercentage: 8.0,
      mostMentionedPros: ['Freshness', 'Packaging', 'Fast Delivery'],
      mostMentionedCons: ['Price'],
    );
  }

  @override
  Future<void> submitReview({
    required String targetId,
    required double rating,
    required String description,
    String? title,
    List<String>? imagePaths,
    bool isAnonymous = false,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> updateReview(ReviewModel review) async {}

  @override
  Future<void> deleteReview(String reviewId) async {}

  @override
  Future<void> markHelpful(String reviewId) async {}

  @override
  Future<void> reportReview(String reviewId, String reason) async {}
}
