// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      productId: json['productId'] as String?,
      userProfilePhoto: json['userProfilePhoto'] as String?,
      isVerifiedPurchase: json['isVerifiedPurchase'] as bool? ?? true,
      reviewDate: DateTime.parse(json['reviewDate'] as String),
      productVariant: json['productVariant'] as String?,
      rating: (json['rating'] as num).toDouble(),
      title: json['title'] as String?,
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ReviewImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoUrls: (json['videoUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      helpfulCount: (json['helpfulCount'] as num?)?.toInt() ?? 0,
      isLikedByMe: json['isLikedByMe'] as bool? ?? false,
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => ReviewReplyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      aiReviewSummary: json['aiReviewSummary'] as String?,
      positiveKeywords: (json['positiveKeywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      negativeKeywords: (json['negativeKeywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sentimentScore: (json['sentimentScore'] as num?)?.toDouble() ?? 0.0,
      isFakeSuspected: json['isFakeSuspected'] as bool? ?? false,
      isToxic: json['isToxic'] as bool? ?? false,
      isSpam: json['isSpam'] as bool? ?? false,
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'productId': instance.productId,
      'userProfilePhoto': instance.userProfilePhoto,
      'isVerifiedPurchase': instance.isVerifiedPurchase,
      'reviewDate': instance.reviewDate.toIso8601String(),
      'productVariant': instance.productVariant,
      'rating': instance.rating,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'videoUrls': instance.videoUrls,
      'helpfulCount': instance.helpfulCount,
      'isLikedByMe': instance.isLikedByMe,
      'replies': instance.replies,
      'aiReviewSummary': instance.aiReviewSummary,
      'positiveKeywords': instance.positiveKeywords,
      'negativeKeywords': instance.negativeKeywords,
      'sentimentScore': instance.sentimentScore,
      'isFakeSuspected': instance.isFakeSuspected,
      'isToxic': instance.isToxic,
      'isSpam': instance.isSpam,
    };

_$ReviewReplyModelImpl _$$ReviewReplyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewReplyModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      message: json['message'] as String,
      date: DateTime.parse(json['date'] as String),
      isAdminReply: json['isAdminReply'] as bool? ?? false,
    );

Map<String, dynamic> _$$ReviewReplyModelImplToJson(
        _$ReviewReplyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'message': instance.message,
      'date': instance.date.toIso8601String(),
      'isAdminReply': instance.isAdminReply,
    };

_$ReviewAnalyticsModelImpl _$$ReviewAnalyticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewAnalyticsModelImpl(
      totalReviews: (json['totalReviews'] as num?)?.toInt() ?? 0,
      positivePercentage:
          (json['positivePercentage'] as num?)?.toDouble() ?? 0.0,
      negativePercentage:
          (json['negativePercentage'] as num?)?.toDouble() ?? 0.0,
      mostMentionedPros: (json['mostMentionedPros'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      mostMentionedCons: (json['mostMentionedCons'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      averageMonthlyRating:
          (json['averageMonthlyRating'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ) ??
              const {},
    );

Map<String, dynamic> _$$ReviewAnalyticsModelImplToJson(
        _$ReviewAnalyticsModelImpl instance) =>
    <String, dynamic>{
      'totalReviews': instance.totalReviews,
      'positivePercentage': instance.positivePercentage,
      'negativePercentage': instance.negativePercentage,
      'mostMentionedPros': instance.mostMentionedPros,
      'mostMentionedCons': instance.mostMentionedCons,
      'averageMonthlyRating': instance.averageMonthlyRating,
    };
