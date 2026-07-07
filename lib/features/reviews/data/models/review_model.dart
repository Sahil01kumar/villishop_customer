import 'package:freezed_annotation/freezed_annotation.dart';
import 'review_image_model.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String id,
    required String userId,
    required String userName,
    String? userProfilePhoto,
    @Default(true) bool isVerifiedPurchase,
    required DateTime reviewDate,
    String? productVariant,
    required double rating,
    String? title,
    required String description,
    @Default([]) List<ReviewImageModel> images,
    @Default([]) List<String> videoUrls,
    @Default(0) int helpfulCount,
    @Default(false) bool isLikedByMe,
    @Default([]) List<ReviewReplyModel> replies,
    
    // AI Ready Fields
    String? aiReviewSummary,
    @Default([]) List<String> positiveKeywords,
    @Default([]) List<String> negativeKeywords,
    @Default(0.0) double sentimentScore,
    @Default(false) bool isFakeSuspected,
    @Default(false) bool isToxic,
    @Default(false) bool isSpam,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
}

@freezed
class ReviewReplyModel with _$ReviewReplyModel {
  const factory ReviewReplyModel({
    required String id,
    required String userId,
    required String userName,
    required String message,
    required DateTime date,
    @Default(false) bool isAdminReply,
  }) = _ReviewReplyModel;

  factory ReviewReplyModel.fromJson(Map<String, dynamic> json) => _$ReviewReplyModelFromJson(json);
}

@freezed
class ReviewAnalyticsModel with _$ReviewAnalyticsModel {
  const factory ReviewAnalyticsModel({
    @Default(0) int totalReviews,
    @Default(0.0) double positivePercentage,
    @Default(0.0) double negativePercentage,
    @Default([]) List<String> mostMentionedPros,
    @Default([]) List<String> mostMentionedCons,
    @Default({}) Map<String, double> averageMonthlyRating,
  }) = _ReviewAnalyticsModel;

  factory ReviewAnalyticsModel.fromJson(Map<String, dynamic> json) => _$ReviewAnalyticsModelFromJson(json);
}
