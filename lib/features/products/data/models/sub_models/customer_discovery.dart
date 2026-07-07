import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_discovery.freezed.dart';
part 'customer_discovery.g.dart';

@freezed
class CustomerDiscovery with _$CustomerDiscovery {
  const factory CustomerDiscovery({
    @Default(false) bool isWishlisted,
    @Default([]) List<String> frequentlyBoughtTogetherIds,
    @Default([]) List<String> similarProductIds,
    @Default([]) List<String> customersAlsoBoughtIds,
  }) = _CustomerDiscovery;

  factory CustomerDiscovery.fromJson(Map<String, dynamic> json) => _$CustomerDiscoveryFromJson(json);
}
