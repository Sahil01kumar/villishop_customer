import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/review_repository.dart';
import '../data/repositories/review_repository_impl.dart';
import '../data/models/review_model.dart';
import '../data/models/rating_distribution_model.dart';
import 'package:uuid/uuid.dart';
import '../../../core/services/shared_pref_service.dart';

class ReviewState {
  final bool isLoading;
  final bool isSubmitting;
  final List<ReviewModel> reviews;
  final RatingDistributionModel? summary;
  final String? errorMessage;
  final String activeFilter;

  ReviewState({
    this.isLoading = false,
    this.isSubmitting = false,
    this.reviews = const [],
    this.summary,
    this.errorMessage,
    this.activeFilter = 'Latest',
  });

  ReviewState copyWith({
    bool? isLoading,
    bool? isSubmitting,
    List<ReviewModel>? reviews,
    RatingDistributionModel? summary,
    String? errorMessage,
    String? activeFilter,
  }) {
    return ReviewState(
      isLoading: isLoading ?? this.isLoading,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      reviews: reviews ?? this.reviews,
      summary: summary ?? this.summary,
      errorMessage: errorMessage ?? this.errorMessage,
      activeFilter: activeFilter ?? this.activeFilter,
    );
  }
}

class ReviewNotifier extends StateNotifier<ReviewState> {
  final ReviewRepository _repository;
  final String targetId;

  ReviewNotifier(this._repository, this.targetId) : super(ReviewState()) {
    refresh();
  }

  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final reviews = await _repository.getProductReviews(targetId);

      // Calculate distribution manually for now
      final summary = RatingDistributionModel(
        fiveStar: reviews.where((r) => r.rating >= 4.5).length,
        fourStar:
            reviews.where((r) => r.rating >= 3.5 && r.rating < 4.5).length,
        threeStar:
            reviews.where((r) => r.rating >= 2.5 && r.rating < 3.5).length,
        twoStar: reviews.where((r) => r.rating >= 1.5 && r.rating < 2.5).length,
        oneStar: reviews.where((r) => r.rating < 1.5).length,
        totalRatings: reviews.length,
        averageRating: reviews.isEmpty
            ? 0.0
            : reviews.fold(0.0, (sum, r) => sum + r.rating) / reviews.length,
      );

      state =
          state.copyWith(isLoading: false, reviews: reviews, summary: summary);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<bool> submitReview({
    required double rating,
    required String description,
    String? title,
  }) async {
    state = state.copyWith(isSubmitting: true);
    try {
      final review = ReviewModel(
        id: const Uuid().v4(),
        userId: 'cust_1',
        userName: 'Sahil Kumar',
        productId: targetId,
        reviewDate: DateTime.now(),
        rating: rating,
        description: description,
        title: title,
      );
      await _repository.submitProductReview(targetId, review);
      state = state.copyWith(isSubmitting: false);
      refresh();
      return true;
    } catch (e) {
      state = state.copyWith(isSubmitting: false, errorMessage: e.toString());
      return false;
    }
  }

  void updateFilter(String filter) {
    state = state.copyWith(activeFilter: filter);
  }
}

final reviewRepositoryProvider = Provider<ReviewRepository>((ref) {
  return ReviewRepositoryImpl(ref.watch(sharedPreferencesServiceProvider));
});

final reviewProvider =
    StateNotifierProvider.family<ReviewNotifier, ReviewState, String>(
        (ref, targetId) {
  return ReviewNotifier(ref.watch(reviewRepositoryProvider), targetId);
});

class ReviewSubmissionNotifier extends StateNotifier<AsyncValue<void>> {
  final ReviewRepository _repository;

  ReviewSubmissionNotifier(this._repository)
      : super(const AsyncValue.data(null));

  Future<void> submitProductReview(String productId, ReviewModel review) async {
    state = const AsyncValue.loading();
    try {
      await _repository.submitProductReview(productId, review);
      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final reviewSubmissionProvider =
    StateNotifierProvider<ReviewSubmissionNotifier, AsyncValue<void>>((ref) {
  return ReviewSubmissionNotifier(ref.watch(reviewRepositoryProvider));
});
