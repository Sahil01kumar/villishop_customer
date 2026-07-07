import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/review_model.dart';
import '../data/models/rating_distribution_model.dart';

part 'review_state.freezed.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(true) bool isLoading,
    @Default([]) List<ReviewModel> reviews,
    RatingDistributionModel? summary,
    ReviewAnalyticsModel? analytics,
    String? errorMessage,
    @Default('Latest') String activeFilter,
    @Default(false) bool isSubmitting,
  }) = _ReviewState;
}
