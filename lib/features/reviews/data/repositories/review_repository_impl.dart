import 'dart:convert';
import '../../domain/repositories/review_repository.dart';
import '../models/review_model.dart';
import '../../../../core/services/shared_pref_service.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final SharedPreferenceService? _prefs;
  static const String _reviewKeyPrefix = 'persistent_reviews_v1_';
  final List<ReviewModel> _memoryReviews = [];

  ReviewRepositoryImpl([this._prefs]);

  @override
  Future<List<ReviewModel>> getProductReviews(String productId) async {
    final cached = _loadFromPrefs(productId);
    return [
      ...cached,
      ..._memoryReviews.where((r) => r.productId == productId)
    ];
  }

  @override
  Future<List<ReviewModel>> getRiderReviews(String riderId) async {
    return [];
  }

  @override
  Future<void> submitProductReview(String productId, ReviewModel review) async {
    _memoryReviews.insert(0, review);
    await _saveToPrefs(productId, review);
  }

  @override
  Future<void> submitRiderReview(String riderId, ReviewModel review) async {
    // Rider reviews can also be persisted if needed
  }

  @override
  Future<ReviewAnalyticsModel> getProductReviewAnalytics(
      String productId) async {
    return const ReviewAnalyticsModel();
  }

  List<ReviewModel> _loadFromPrefs(String productId) {
    if (_prefs == null) return [];
    final jsonStr = _prefs!.getString('$_reviewKeyPrefix$productId');
    if (jsonStr == null) return [];
    try {
      final List<dynamic> list = jsonDecode(jsonStr);
      return list.map((item) => ReviewModel.fromJson(item)).toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> _saveToPrefs(String productId, ReviewModel review) async {
    if (_prefs == null) return;
    final current = _loadFromPrefs(productId);
    current.insert(0, review);
    await _prefs!.setString('$_reviewKeyPrefix$productId',
        jsonEncode(current.map((e) => e.toJson()).toList()));
  }
}
