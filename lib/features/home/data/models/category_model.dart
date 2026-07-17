import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

enum CategoryLevel { department, category, subCategory, productGroup, variant }

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name,
    String? parentId,
    @Default(CategoryLevel.category) CategoryLevel level,
    required String image,
    String? icon,
    String? banner,
    String? description,
    String? slug,
    @Default(0) int displayOrder,
    @Default(0) int priority,
    @Default(true) bool isVisible,
    @Default(true) bool isActive,
    @Default(false) bool isTrending,
    @Default(false) bool isFeatured,
    @Default(false) bool isPopular,
    @Default(false) bool isSeasonal,
    @Default(false) bool isFestival,
    @Default(false) bool isRecommended,
    @Default(false) bool isPremium,

    // Taxonomy Ready
    @Default(0) int productCount,
    @Default(0) int subCategoryCount,
    String? departmentId,

    // AI Ready Architecture
    @Default(0.0) double aiRecommendationScore,
    @Default(0.0) double aiTrendingScore,
    @Default(0.0) double aiSeasonalRanking,
    @Default([]) List<CategoryModel> subCategories,
    Map<String, dynamic>? metadata,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
