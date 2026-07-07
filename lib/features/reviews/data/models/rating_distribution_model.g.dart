// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_distribution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingDistributionModelImpl _$$RatingDistributionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingDistributionModelImpl(
      fiveStar: (json['fiveStar'] as num?)?.toInt() ?? 0,
      fourStar: (json['fourStar'] as num?)?.toInt() ?? 0,
      threeStar: (json['threeStar'] as num?)?.toInt() ?? 0,
      twoStar: (json['twoStar'] as num?)?.toInt() ?? 0,
      oneStar: (json['oneStar'] as num?)?.toInt() ?? 0,
      totalRatings: (json['totalRatings'] as num?)?.toInt() ?? 0,
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$RatingDistributionModelImplToJson(
        _$RatingDistributionModelImpl instance) =>
    <String, dynamic>{
      'fiveStar': instance.fiveStar,
      'fourStar': instance.fourStar,
      'threeStar': instance.threeStar,
      'twoStar': instance.twoStar,
      'oneStar': instance.oneStar,
      'totalRatings': instance.totalRatings,
      'averageRating': instance.averageRating,
    };
