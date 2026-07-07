// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartCacheModelImpl _$$CartCacheModelImplFromJson(Map<String, dynamic> json) =>
    _$CartCacheModelImpl(
      sessionId: json['sessionId'] as String,
      cachedAt: DateTime.parse(json['cachedAt'] as String),
      cartJson: json['cartJson'] as String,
      isAutoRestoreEnabled: json['isAutoRestoreEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$CartCacheModelImplToJson(
        _$CartCacheModelImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'cachedAt': instance.cachedAt.toIso8601String(),
      'cartJson': instance.cartJson,
      'isAutoRestoreEnabled': instance.isAutoRestoreEnabled,
    };
