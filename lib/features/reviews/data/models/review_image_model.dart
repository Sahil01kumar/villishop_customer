import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_image_model.freezed.dart';
part 'review_image_model.g.dart';

@freezed
class ReviewImageModel with _$ReviewImageModel {
  const factory ReviewImageModel({
    required String id,
    required String url,
    String? thumbnailUrl,
  }) = _ReviewImageModel;

  factory ReviewImageModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewImageModelFromJson(json);
}
