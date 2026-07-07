// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryInfo _$InventoryInfoFromJson(Map<String, dynamic> json) {
  return _InventoryInfo.fromJson(json);
}

/// @nodoc
mixin _$InventoryInfo {
  int get stockQuantity => throw _privateConstructorUsedError;
  int get reservedQuantity => throw _privateConstructorUsedError;
  int get availableQuantity => throw _privateConstructorUsedError;
  int get lowStockThreshold => throw _privateConstructorUsedError;
  StockStatus get stockStatus => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  bool get isBestseller => throw _privateConstructorUsedError;
  bool get isRecommended => throw _privateConstructorUsedError;
  bool get isNewArrival => throw _privateConstructorUsedError;
  int get minOrderQuantity => throw _privateConstructorUsedError;
  int get maxOrderQuantity => throw _privateConstructorUsedError;

  /// Serializes this InventoryInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InventoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryInfoCopyWith<InventoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryInfoCopyWith<$Res> {
  factory $InventoryInfoCopyWith(
          InventoryInfo value, $Res Function(InventoryInfo) then) =
      _$InventoryInfoCopyWithImpl<$Res, InventoryInfo>;
  @useResult
  $Res call(
      {int stockQuantity,
      int reservedQuantity,
      int availableQuantity,
      int lowStockThreshold,
      StockStatus stockStatus,
      bool isTrending,
      bool isBestseller,
      bool isRecommended,
      bool isNewArrival,
      int minOrderQuantity,
      int maxOrderQuantity});
}

/// @nodoc
class _$InventoryInfoCopyWithImpl<$Res, $Val extends InventoryInfo>
    implements $InventoryInfoCopyWith<$Res> {
  _$InventoryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockQuantity = null,
    Object? reservedQuantity = null,
    Object? availableQuantity = null,
    Object? lowStockThreshold = null,
    Object? stockStatus = null,
    Object? isTrending = null,
    Object? isBestseller = null,
    Object? isRecommended = null,
    Object? isNewArrival = null,
    Object? minOrderQuantity = null,
    Object? maxOrderQuantity = null,
  }) {
    return _then(_value.copyWith(
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      reservedQuantity: null == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      lowStockThreshold: null == lowStockThreshold
          ? _value.lowStockThreshold
          : lowStockThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as StockStatus,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestseller: null == isBestseller
          ? _value.isBestseller
          : isBestseller // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommended: null == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewArrival: null == isNewArrival
          ? _value.isNewArrival
          : isNewArrival // ignore: cast_nullable_to_non_nullable
              as bool,
      minOrderQuantity: null == minOrderQuantity
          ? _value.minOrderQuantity
          : minOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxOrderQuantity: null == maxOrderQuantity
          ? _value.maxOrderQuantity
          : maxOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryInfoImplCopyWith<$Res>
    implements $InventoryInfoCopyWith<$Res> {
  factory _$$InventoryInfoImplCopyWith(
          _$InventoryInfoImpl value, $Res Function(_$InventoryInfoImpl) then) =
      __$$InventoryInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int stockQuantity,
      int reservedQuantity,
      int availableQuantity,
      int lowStockThreshold,
      StockStatus stockStatus,
      bool isTrending,
      bool isBestseller,
      bool isRecommended,
      bool isNewArrival,
      int minOrderQuantity,
      int maxOrderQuantity});
}

/// @nodoc
class __$$InventoryInfoImplCopyWithImpl<$Res>
    extends _$InventoryInfoCopyWithImpl<$Res, _$InventoryInfoImpl>
    implements _$$InventoryInfoImplCopyWith<$Res> {
  __$$InventoryInfoImplCopyWithImpl(
      _$InventoryInfoImpl _value, $Res Function(_$InventoryInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockQuantity = null,
    Object? reservedQuantity = null,
    Object? availableQuantity = null,
    Object? lowStockThreshold = null,
    Object? stockStatus = null,
    Object? isTrending = null,
    Object? isBestseller = null,
    Object? isRecommended = null,
    Object? isNewArrival = null,
    Object? minOrderQuantity = null,
    Object? maxOrderQuantity = null,
  }) {
    return _then(_$InventoryInfoImpl(
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      reservedQuantity: null == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      lowStockThreshold: null == lowStockThreshold
          ? _value.lowStockThreshold
          : lowStockThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as StockStatus,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestseller: null == isBestseller
          ? _value.isBestseller
          : isBestseller // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommended: null == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewArrival: null == isNewArrival
          ? _value.isNewArrival
          : isNewArrival // ignore: cast_nullable_to_non_nullable
              as bool,
      minOrderQuantity: null == minOrderQuantity
          ? _value.minOrderQuantity
          : minOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxOrderQuantity: null == maxOrderQuantity
          ? _value.maxOrderQuantity
          : maxOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryInfoImpl implements _InventoryInfo {
  const _$InventoryInfoImpl(
      {this.stockQuantity = 0,
      this.reservedQuantity = 0,
      this.availableQuantity = 0,
      this.lowStockThreshold = 5,
      this.stockStatus = StockStatus.inStock,
      this.isTrending = false,
      this.isBestseller = false,
      this.isRecommended = false,
      this.isNewArrival = false,
      this.minOrderQuantity = 1,
      this.maxOrderQuantity = 10});

  factory _$InventoryInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryInfoImplFromJson(json);

  @override
  @JsonKey()
  final int stockQuantity;
  @override
  @JsonKey()
  final int reservedQuantity;
  @override
  @JsonKey()
  final int availableQuantity;
  @override
  @JsonKey()
  final int lowStockThreshold;
  @override
  @JsonKey()
  final StockStatus stockStatus;
  @override
  @JsonKey()
  final bool isTrending;
  @override
  @JsonKey()
  final bool isBestseller;
  @override
  @JsonKey()
  final bool isRecommended;
  @override
  @JsonKey()
  final bool isNewArrival;
  @override
  @JsonKey()
  final int minOrderQuantity;
  @override
  @JsonKey()
  final int maxOrderQuantity;

  @override
  String toString() {
    return 'InventoryInfo(stockQuantity: $stockQuantity, reservedQuantity: $reservedQuantity, availableQuantity: $availableQuantity, lowStockThreshold: $lowStockThreshold, stockStatus: $stockStatus, isTrending: $isTrending, isBestseller: $isBestseller, isRecommended: $isRecommended, isNewArrival: $isNewArrival, minOrderQuantity: $minOrderQuantity, maxOrderQuantity: $maxOrderQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryInfoImpl &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.lowStockThreshold, lowStockThreshold) ||
                other.lowStockThreshold == lowStockThreshold) &&
            (identical(other.stockStatus, stockStatus) ||
                other.stockStatus == stockStatus) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isBestseller, isBestseller) ||
                other.isBestseller == isBestseller) &&
            (identical(other.isRecommended, isRecommended) ||
                other.isRecommended == isRecommended) &&
            (identical(other.isNewArrival, isNewArrival) ||
                other.isNewArrival == isNewArrival) &&
            (identical(other.minOrderQuantity, minOrderQuantity) ||
                other.minOrderQuantity == minOrderQuantity) &&
            (identical(other.maxOrderQuantity, maxOrderQuantity) ||
                other.maxOrderQuantity == maxOrderQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stockQuantity,
      reservedQuantity,
      availableQuantity,
      lowStockThreshold,
      stockStatus,
      isTrending,
      isBestseller,
      isRecommended,
      isNewArrival,
      minOrderQuantity,
      maxOrderQuantity);

  /// Create a copy of InventoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryInfoImplCopyWith<_$InventoryInfoImpl> get copyWith =>
      __$$InventoryInfoImplCopyWithImpl<_$InventoryInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryInfoImplToJson(
      this,
    );
  }
}

abstract class _InventoryInfo implements InventoryInfo {
  const factory _InventoryInfo(
      {final int stockQuantity,
      final int reservedQuantity,
      final int availableQuantity,
      final int lowStockThreshold,
      final StockStatus stockStatus,
      final bool isTrending,
      final bool isBestseller,
      final bool isRecommended,
      final bool isNewArrival,
      final int minOrderQuantity,
      final int maxOrderQuantity}) = _$InventoryInfoImpl;

  factory _InventoryInfo.fromJson(Map<String, dynamic> json) =
      _$InventoryInfoImpl.fromJson;

  @override
  int get stockQuantity;
  @override
  int get reservedQuantity;
  @override
  int get availableQuantity;
  @override
  int get lowStockThreshold;
  @override
  StockStatus get stockStatus;
  @override
  bool get isTrending;
  @override
  bool get isBestseller;
  @override
  bool get isRecommended;
  @override
  bool get isNewArrival;
  @override
  int get minOrderQuantity;
  @override
  int get maxOrderQuantity;

  /// Create a copy of InventoryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryInfoImplCopyWith<_$InventoryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
