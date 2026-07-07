import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/review_repository.dart';
import '../data/repositories/review_repository_impl.dart';
import 'review_state.dart';

final reviewRepositoryProvider = Provider<ReviewRepository>((ref) {
  return ReviewRepositoryImpl();
});

class ReviewNotifier extends StateNotifier<ReviewState> {
  final ReviewRepository _repository;
  final String targetId;

  ReviewNotifier(this._repository, this.targetId) : super(const ReviewState()) {
    init();
  }

  Future<void> init() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final summary = await _repository.getRatingSummary(targetId);
      final analytics = await _repository.getReviewAnalytics(targetId);
      final reviews = await _repository.getReviews(targetId: targetId);
      
      state = state.copyWith(
        isLoading: false,
        summary: summary,
        analytics: analytics,
        reviews: reviews,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void updateFilter(String filter) {
    state = state.copyWith(activeFilter: filter);
    // In real app, trigger repository fetch with filter
  }

  Future<bool> submitReview({
    required double rating,
    required String description,
    String? title,
    List<String>? images,
  }) async {
    state = state.copyWith(isSubmitting: true);
    try {
      await _repository.submitReview(
        targetId: targetId,
        rating: rating,
        description: description,
        title: title,
        imagePaths: images,
      );
      state = state.copyWith(isSubmitting: false);
      init(); // Refresh
      return true;
    } catch (e) {
      state = state.copyWith(isSubmitting: false);
      return false;
    }
  }

  Future<void> refresh() => init();
}

final reviewProvider = StateNotifierProvider.family<ReviewNotifier, ReviewState, String>((ref, targetId) {
  return ReviewNotifier(ref.watch(reviewRepositoryProvider), targetId);
});
