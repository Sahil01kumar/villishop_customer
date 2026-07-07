// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_discovery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDiscoveryImpl _$$CustomerDiscoveryImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerDiscoveryImpl(
      isWishlisted: json['isWishlisted'] as bool? ?? false,
      frequentlyBoughtTogetherIds:
          (json['frequentlyBoughtTogetherIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
      similarProductIds: (json['similarProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      customersAlsoBoughtIds: (json['customersAlsoBoughtIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CustomerDiscoveryImplToJson(
        _$CustomerDiscoveryImpl instance) =>
    <String, dynamic>{
      'isWishlisted': instance.isWishlisted,
      'frequentlyBoughtTogetherIds': instance.frequentlyBoughtTogetherIds,
      'similarProductIds': instance.similarProductIds,
      'customersAlsoBoughtIds': instance.customersAlsoBoughtIds,
    };
