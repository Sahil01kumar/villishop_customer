import 'package:freezed_annotation/freezed_annotation.dart';
import 'offer_model.dart';

part 'campaign_model.freezed.dart';
part 'campaign_model.g.dart';

@freezed
class CampaignModel with _$CampaignModel {
  const factory CampaignModel({
    required String id,
    required String name,
    required String bannerUrl,
    required DateTime startDate,
    required DateTime endDate,
    @Default([]) List<OfferModel> offers,
    String? description,
    @Default(false) bool isActive,
  }) = _CampaignModel;

  factory CampaignModel.fromJson(Map<String, dynamic> json) => _$CampaignModelFromJson(json);
}
