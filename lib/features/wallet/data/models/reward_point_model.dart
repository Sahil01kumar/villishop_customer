import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_point_model.freezed.dart';
part 'reward_point_model.g.dart';

enum RewardSource { signup, referral, daily, festival, loyalty, order }

@freezed
class RewardPointModel with _$RewardPointModel {
  const factory RewardPointModel({
    required String id,
    required int points,
    required RewardSource source,
    required DateTime earnedAt,
    DateTime? expiryDate,
    @Default(false) bool isExpired,
    String? description,
  }) = _RewardPointModel;

  factory RewardPointModel.fromJson(Map<String, dynamic> json) =>
      _$RewardPointModelFromJson(json);
}
