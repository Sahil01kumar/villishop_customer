// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImageModelImpl _$$ReviewImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewImageModelImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$$ReviewImageModelImplToJson(
        _$ReviewImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
