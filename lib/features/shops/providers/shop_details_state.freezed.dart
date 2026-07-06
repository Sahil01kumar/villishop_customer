// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  ShopModel? get shop => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;

  /// Create a copy of ShopDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopDetailsStateCopyWith<ShopDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDetailsStateCopyWith<$Res> {
  factory $ShopDetailsStateCopyWith(
          ShopDetailsState value, $Res Function(ShopDetailsState) then) =
      _$ShopDetailsStateCopyWithImpl<$Res, ShopDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      ShopModel? shop,
      List<ProductModel> products,
      String? errorMessage,
      String selectedCategory});

  $ShopModelCopyWith<$Res>? get shop;
}

/// @nodoc
class _$ShopDetailsStateCopyWithImpl<$Res, $Val extends ShopDetailsState>
    implements $ShopDetailsStateCopyWith<$Res> {
  _$ShopDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? shop = freezed,
    Object? products = null,
    Object? errorMessage = freezed,
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ShopDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopModelCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopModelCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopDetailsStateImplCopyWith<$Res>
    implements $ShopDetailsStateCopyWith<$Res> {
  factory _$$ShopDetailsStateImplCopyWith(_$ShopDetailsStateImpl value,
          $Res Function(_$ShopDetailsStateImpl) then) =
      __$$ShopDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ShopModel? shop,
      List<ProductModel> products,
      String? errorMessage,
      String selectedCategory});

  @override
  $ShopModelCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$ShopDetailsStateImplCopyWithImpl<$Res>
    extends _$ShopDetailsStateCopyWithImpl<$Res, _$ShopDetailsStateImpl>
    implements _$$ShopDetailsStateImplCopyWith<$Res> {
  __$$ShopDetailsStateImplCopyWithImpl(_$ShopDetailsStateImpl _value,
      $Res Function(_$ShopDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? shop = freezed,
    Object? products = null,
    Object? errorMessage = freezed,
    Object? selectedCategory = null,
  }) {
    return _then(_$ShopDetailsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShopDetailsStateImpl implements _ShopDetailsState {
  const _$ShopDetailsStateImpl(
      {this.isLoading = true,
      this.shop,
      final List<ProductModel> products = const [],
      this.errorMessage,
      this.selectedCategory = 'All'})
      : _products = products;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final ShopModel? shop;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final String selectedCategory;

  @override
  String toString() {
    return 'ShopDetailsState(isLoading: $isLoading, shop: $shop, products: $products, errorMessage: $errorMessage, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopDetailsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      shop,
      const DeepCollectionEquality().hash(_products),
      errorMessage,
      selectedCategory);

  /// Create a copy of ShopDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopDetailsStateImplCopyWith<_$ShopDetailsStateImpl> get copyWith =>
      __$$ShopDetailsStateImplCopyWithImpl<_$ShopDetailsStateImpl>(
          this, _$identity);
}

abstract class _ShopDetailsState implements ShopDetailsState {
  const factory _ShopDetailsState(
      {final bool isLoading,
      final ShopModel? shop,
      final List<ProductModel> products,
      final String? errorMessage,
      final String selectedCategory}) = _$ShopDetailsStateImpl;

  @override
  bool get isLoading;
  @override
  ShopModel? get shop;
  @override
  List<ProductModel> get products;
  @override
  String? get errorMessage;
  @override
  String get selectedCategory;

  /// Create a copy of ShopDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopDetailsStateImplCopyWith<_$ShopDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
