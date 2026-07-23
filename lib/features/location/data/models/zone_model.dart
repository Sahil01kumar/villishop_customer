import 'package:freezed_annotation/freezed_annotation.dart';

part 'zone_model.freezed.dart';
part 'zone_model.g.dart';

enum ZoneStatus {
  @JsonValue('active')
  active,
  @JsonValue('launching_soon')
  launchingSoon,
  @JsonValue('coming_soon')
  comingSoon,
}

@freezed
class ZoneModel with _$ZoneModel {
  const factory ZoneModel({
    required String id,
    required String name,
    required ZoneStatus status,
    @Default([]) List<List<double>> polygon, // Latitude, Longitude pairs
    String? estimatedLaunchDate,
    @Default(0) int interestedUsers,
    @Default(0) int upcomingStores,
    @Default(0) int shopCount,
    @Default(0) int partnerCount,
  }) = _ZoneModel;

  factory ZoneModel.fromJson(Map<String, dynamic> json) =>
      _$ZoneModelFromJson(json);
}
