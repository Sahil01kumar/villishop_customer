import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/data/models/product_model.dart';

part 'save_for_later_model.freezed.dart';
part 'save_for_later_model.g.dart';

@freezed
class SaveForLaterModel with _$SaveForLaterModel {
  const factory SaveForLaterModel({
    required String id,
    required ProductModel product,
    required DateTime savedAt,
    @Default(0.0) double aiRelevanceScore,
    @Default(false) bool priceDropAlertReady,
    @Default(false) bool stockBackAlertReady,
  }) = _SaveForLaterModel;

  factory SaveForLaterModel.fromJson(Map<String, dynamic> json) => _$SaveForLaterModelFromJson(json);
}
