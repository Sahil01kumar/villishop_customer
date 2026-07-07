import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_distribution_model.freezed.dart';
part 'rating_distribution_model.g.dart';

@freezed
class RatingDistributionModel with _$RatingDistributionModel {
  const factory RatingDistributionModel({
    @Default(0) int fiveStar,
    @Default(0) int fourStar,
    @Default(0) int threeStar,
    @Default(0) int twoStar,
    @Default(0) int oneStar,
    @Default(0) int totalRatings,
    @Default(0.0) double averageRating,
  }) = _RatingDistributionModel;

  factory RatingDistributionModel.fromJson(Map<String, dynamic> json) => _$RatingDistributionModelFromJson(json);
}
