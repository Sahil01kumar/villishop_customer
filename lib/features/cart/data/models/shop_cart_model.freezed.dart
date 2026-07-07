// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopCartModel _$ShopCartModelFromJson(Map<String, dynamic> json) {
  return _ShopCartModel.fromJson(json);
}

/// @nodoc
mixin _$ShopCartModel {
  String get shopId => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String? get shopLogo => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  double get shopRating => throw _privateConstructorUsedError;
  String get deliveryTime => throw _privateConstructorUsedError;
  double get minOrderValue => throw _privateConstructorUsedError;
  List<CartItemModel> get items => throw _privateConstructorUsedError;
  ShopSummaryModel get summary => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this ShopCartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopCartModelCopyWith<ShopCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCartModelCopyWith<$Res> {
  factory $ShopCartModelCopyWith(
          ShopCartModel value, $Res Function(ShopCartModel) then) =
      _$ShopCartModelCopyWithImpl<$Res, ShopCartModel>;
  @useResult
  $Res call(
      {String shopId,
      String shopName,
      String? shopLogo,
      bool isOpen,
      double shopRating,
      String deliveryTime,
      double minOrderValue,
      List<CartItemModel> items,
      ShopSummaryModel summary,
      bool isExpanded,
      bool isSelected});

  $ShopSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class _$ShopCartModelCopyWithImpl<$Res, $Val extends ShopCartModel>
    implements $ShopCartModelCopyWith<$Res> {
  _$ShopCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? shopName = null,
    Object? shopLogo = freezed,
    Object? isOpen = null,
    Object? shopRating = null,
    Object? deliveryTime = null,
    Object? minOrderValue = null,
    Object? items = null,
    Object? summary = null,
    Object? isExpanded = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopLogo: freezed == shopLogo
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      shopRating: null == shopRating
          ? _value.shopRating
          : shopRating // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ShopSummaryModel,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopSummaryModelCopyWith<$Res> get summary {
    return $ShopSummaryModelCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopCartModelImplCopyWith<$Res>
    implements $ShopCartModelCopyWith<$Res> {
  factory _$$ShopCartModelImplCopyWith(
          _$ShopCartModelImpl value, $Res Function(_$ShopCartModelImpl) then) =
      __$$ShopCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopId,
      String shopName,
      String? shopLogo,
      bool isOpen,
      double shopRating,
      String deliveryTime,
      double minOrderValue,
      List<CartItemModel> items,
      ShopSummaryModel summary,
      bool isExpanded,
      bool isSelected});

  @override
  $ShopSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class __$$ShopCartModelImplCopyWithImpl<$Res>
    extends _$ShopCartModelCopyWithImpl<$Res, _$ShopCartModelImpl>
    implements _$$ShopCartModelImplCopyWith<$Res> {
  __$$ShopCartModelImplCopyWithImpl(
      _$ShopCartModelImpl _value, $Res Function(_$ShopCartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? shopName = null,
    Object? shopLogo = freezed,
    Object? isOpen = null,
    Object? shopRating = null,
    Object? deliveryTime = null,
    Object? minOrderValue = null,
    Object? items = null,
    Object? summary = null,
    Object? isExpanded = null,
    Object? isSelected = null,
  }) {
    return _then(_$ShopCartModelImpl(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopLogo: freezed == shopLogo
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      shopRating: null == shopRating
          ? _value.shopRating
          : shopRating // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ShopSummaryModel,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopCartModelImpl implements _ShopCartModel {
  const _$ShopCartModelImpl(
      {required this.shopId,
      required this.shopName,
      this.shopLogo,
      this.isOpen = true,
      this.shopRating = 0.0,
      this.deliveryTime = '10 mins',
      this.minOrderValue = 0.0,
      final List<CartItemModel> items = const [],
      this.summary = const ShopSummaryModel(),
      this.isExpanded = true,
      this.isSelected = true})
      : _items = items;

  factory _$ShopCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopCartModelImplFromJson(json);

  @override
  final String shopId;
  @override
  final String shopName;
  @override
  final String? shopLogo;
  @override
  @JsonKey()
  final bool isOpen;
  @override
  @JsonKey()
  final double shopRating;
  @override
  @JsonKey()
  final String deliveryTime;
  @override
  @JsonKey()
  final double minOrderValue;
  final List<CartItemModel> _items;
  @override
  @JsonKey()
  List<CartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final ShopSummaryModel summary;
  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'ShopCartModel(shopId: $shopId, shopName: $shopName, shopLogo: $shopLogo, isOpen: $isOpen, shopRating: $shopRating, deliveryTime: $deliveryTime, minOrderValue: $minOrderValue, items: $items, summary: $summary, isExpanded: $isExpanded, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopCartModelImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.shopLogo, shopLogo) ||
                other.shopLogo == shopLogo) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.shopRating, shopRating) ||
                other.shopRating == shopRating) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.minOrderValue, minOrderValue) ||
                other.minOrderValue == minOrderValue) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shopId,
      shopName,
      shopLogo,
      isOpen,
      shopRating,
      deliveryTime,
      minOrderValue,
      const DeepCollectionEquality().hash(_items),
      summary,
      isExpanded,
      isSelected);

  /// Create a copy of ShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopCartModelImplCopyWith<_$ShopCartModelImpl> get copyWith =>
      __$$ShopCartModelImplCopyWithImpl<_$ShopCartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopCartModelImplToJson(
      this,
    );
  }
}

abstract class _ShopCartModel implements ShopCartModel {
  const factory _ShopCartModel(
      {required final String shopId,
      required final String shopName,
      final String? shopLogo,
      final bool isOpen,
      final double shopRating,
      final String deliveryTime,
      final double minOrderValue,
      final List<CartItemModel> items,
      final ShopSummaryModel summary,
      final bool isExpanded,
      final bool isSelected}) = _$ShopCartModelImpl;

  factory _ShopCartModel.fromJson(Map<String, dynamic> json) =
      _$ShopCartModelImpl.fromJson;

  @override
  String get shopId;
  @override
  String get shopName;
  @override
  String? get shopLogo;
  @override
  bool get isOpen;
  @override
  double get shopRating;
  @override
  String get deliveryTime;
  @override
  double get minOrderValue;
  @override
  List<CartItemModel> get items;
  @override
  ShopSummaryModel get summary;
  @override
  bool get isExpanded;
  @override
  bool get isSelected;

  /// Create a copy of ShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopCartModelImplCopyWith<_$ShopCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
