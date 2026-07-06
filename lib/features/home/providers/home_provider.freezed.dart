// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BannerModel> get banners => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<ShopModel> get popularShops => throw _privateConstructorUsedError;
  List<ProductModel> get featuredProducts => throw _privateConstructorUsedError;
  List<DealModel> get todayDeals => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<BannerModel> banners,
      List<CategoryModel> categories,
      List<ShopModel> popularShops,
      List<ProductModel> featuredProducts,
      List<DealModel> todayDeals,
      String? errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? banners = null,
    Object? categories = null,
    Object? popularShops = null,
    Object? featuredProducts = null,
    Object? todayDeals = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      popularShops: null == popularShops
          ? _value.popularShops
          : popularShops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      featuredProducts: null == featuredProducts
          ? _value.featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      todayDeals: null == todayDeals
          ? _value.todayDeals
          : todayDeals // ignore: cast_nullable_to_non_nullable
              as List<DealModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<BannerModel> banners,
      List<CategoryModel> categories,
      List<ShopModel> popularShops,
      List<ProductModel> featuredProducts,
      List<DealModel> todayDeals,
      String? errorMessage});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? banners = null,
    Object? categories = null,
    Object? popularShops = null,
    Object? featuredProducts = null,
    Object? todayDeals = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      popularShops: null == popularShops
          ? _value._popularShops
          : popularShops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      featuredProducts: null == featuredProducts
          ? _value._featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      todayDeals: null == todayDeals
          ? _value._todayDeals
          : todayDeals // ignore: cast_nullable_to_non_nullable
              as List<DealModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.isLoading = true,
      final List<BannerModel> banners = const [],
      final List<CategoryModel> categories = const [],
      final List<ShopModel> popularShops = const [],
      final List<ProductModel> featuredProducts = const [],
      final List<DealModel> todayDeals = const [],
      this.errorMessage})
      : _banners = banners,
        _categories = categories,
        _popularShops = popularShops,
        _featuredProducts = featuredProducts,
        _todayDeals = todayDeals;

  @override
  @JsonKey()
  final bool isLoading;
  final List<BannerModel> _banners;
  @override
  @JsonKey()
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ShopModel> _popularShops;
  @override
  @JsonKey()
  List<ShopModel> get popularShops {
    if (_popularShops is EqualUnmodifiableListView) return _popularShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularShops);
  }

  final List<ProductModel> _featuredProducts;
  @override
  @JsonKey()
  List<ProductModel> get featuredProducts {
    if (_featuredProducts is EqualUnmodifiableListView)
      return _featuredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredProducts);
  }

  final List<DealModel> _todayDeals;
  @override
  @JsonKey()
  List<DealModel> get todayDeals {
    if (_todayDeals is EqualUnmodifiableListView) return _todayDeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayDeals);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, banners: $banners, categories: $categories, popularShops: $popularShops, featuredProducts: $featuredProducts, todayDeals: $todayDeals, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._popularShops, _popularShops) &&
            const DeepCollectionEquality()
                .equals(other._featuredProducts, _featuredProducts) &&
            const DeepCollectionEquality()
                .equals(other._todayDeals, _todayDeals) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_popularShops),
      const DeepCollectionEquality().hash(_featuredProducts),
      const DeepCollectionEquality().hash(_todayDeals),
      errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final List<BannerModel> banners,
      final List<CategoryModel> categories,
      final List<ShopModel> popularShops,
      final List<ProductModel> featuredProducts,
      final List<DealModel> todayDeals,
      final String? errorMessage}) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  List<BannerModel> get banners;
  @override
  List<CategoryModel> get categories;
  @override
  List<ShopModel> get popularShops;
  @override
  List<ProductModel> get featuredProducts;
  @override
  List<DealModel> get todayDeals;
  @override
  String? get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
