// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_optimization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartOptimizationModel _$CartOptimizationModelFromJson(
    Map<String, dynamic> json) {
  return _CartOptimizationModel.fromJson(json);
}

/// @nodoc
mixin _$CartOptimizationModel {
  List<ProductModel> get smartRecommendations =>
      throw _privateConstructorUsedError;
  List<CartBundleSuggestion> get bundleSuggestions =>
      throw _privateConstructorUsedError;
  double get predictedPriceNextOrder => throw _privateConstructorUsedError;
  double get aiUpsellPotential => throw _privateConstructorUsedError;
  bool get isAbandonedCartReminderEnabled => throw _privateConstructorUsedError;

  /// Serializes this CartOptimizationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartOptimizationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartOptimizationModelCopyWith<CartOptimizationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOptimizationModelCopyWith<$Res> {
  factory $CartOptimizationModelCopyWith(CartOptimizationModel value,
          $Res Function(CartOptimizationModel) then) =
      _$CartOptimizationModelCopyWithImpl<$Res, CartOptimizationModel>;
  @useResult
  $Res call(
      {List<ProductModel> smartRecommendations,
      List<CartBundleSuggestion> bundleSuggestions,
      double predictedPriceNextOrder,
      double aiUpsellPotential,
      bool isAbandonedCartReminderEnabled});
}

/// @nodoc
class _$CartOptimizationModelCopyWithImpl<$Res,
        $Val extends CartOptimizationModel>
    implements $CartOptimizationModelCopyWith<$Res> {
  _$CartOptimizationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartOptimizationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smartRecommendations = null,
    Object? bundleSuggestions = null,
    Object? predictedPriceNextOrder = null,
    Object? aiUpsellPotential = null,
    Object? isAbandonedCartReminderEnabled = null,
  }) {
    return _then(_value.copyWith(
      smartRecommendations: null == smartRecommendations
          ? _value.smartRecommendations
          : smartRecommendations // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bundleSuggestions: null == bundleSuggestions
          ? _value.bundleSuggestions
          : bundleSuggestions // ignore: cast_nullable_to_non_nullable
              as List<CartBundleSuggestion>,
      predictedPriceNextOrder: null == predictedPriceNextOrder
          ? _value.predictedPriceNextOrder
          : predictedPriceNextOrder // ignore: cast_nullable_to_non_nullable
              as double,
      aiUpsellPotential: null == aiUpsellPotential
          ? _value.aiUpsellPotential
          : aiUpsellPotential // ignore: cast_nullable_to_non_nullable
              as double,
      isAbandonedCartReminderEnabled: null == isAbandonedCartReminderEnabled
          ? _value.isAbandonedCartReminderEnabled
          : isAbandonedCartReminderEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartOptimizationModelImplCopyWith<$Res>
    implements $CartOptimizationModelCopyWith<$Res> {
  factory _$$CartOptimizationModelImplCopyWith(
          _$CartOptimizationModelImpl value,
          $Res Function(_$CartOptimizationModelImpl) then) =
      __$$CartOptimizationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> smartRecommendations,
      List<CartBundleSuggestion> bundleSuggestions,
      double predictedPriceNextOrder,
      double aiUpsellPotential,
      bool isAbandonedCartReminderEnabled});
}

/// @nodoc
class __$$CartOptimizationModelImplCopyWithImpl<$Res>
    extends _$CartOptimizationModelCopyWithImpl<$Res,
        _$CartOptimizationModelImpl>
    implements _$$CartOptimizationModelImplCopyWith<$Res> {
  __$$CartOptimizationModelImplCopyWithImpl(_$CartOptimizationModelImpl _value,
      $Res Function(_$CartOptimizationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartOptimizationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smartRecommendations = null,
    Object? bundleSuggestions = null,
    Object? predictedPriceNextOrder = null,
    Object? aiUpsellPotential = null,
    Object? isAbandonedCartReminderEnabled = null,
  }) {
    return _then(_$CartOptimizationModelImpl(
      smartRecommendations: null == smartRecommendations
          ? _value._smartRecommendations
          : smartRecommendations // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bundleSuggestions: null == bundleSuggestions
          ? _value._bundleSuggestions
          : bundleSuggestions // ignore: cast_nullable_to_non_nullable
              as List<CartBundleSuggestion>,
      predictedPriceNextOrder: null == predictedPriceNextOrder
          ? _value.predictedPriceNextOrder
          : predictedPriceNextOrder // ignore: cast_nullable_to_non_nullable
              as double,
      aiUpsellPotential: null == aiUpsellPotential
          ? _value.aiUpsellPotential
          : aiUpsellPotential // ignore: cast_nullable_to_non_nullable
              as double,
      isAbandonedCartReminderEnabled: null == isAbandonedCartReminderEnabled
          ? _value.isAbandonedCartReminderEnabled
          : isAbandonedCartReminderEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartOptimizationModelImpl implements _CartOptimizationModel {
  const _$CartOptimizationModelImpl(
      {final List<ProductModel> smartRecommendations = const [],
      final List<CartBundleSuggestion> bundleSuggestions = const [],
      this.predictedPriceNextOrder = 0.0,
      this.aiUpsellPotential = 0.0,
      this.isAbandonedCartReminderEnabled = false})
      : _smartRecommendations = smartRecommendations,
        _bundleSuggestions = bundleSuggestions;

  factory _$CartOptimizationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartOptimizationModelImplFromJson(json);

  final List<ProductModel> _smartRecommendations;
  @override
  @JsonKey()
  List<ProductModel> get smartRecommendations {
    if (_smartRecommendations is EqualUnmodifiableListView)
      return _smartRecommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smartRecommendations);
  }

  final List<CartBundleSuggestion> _bundleSuggestions;
  @override
  @JsonKey()
  List<CartBundleSuggestion> get bundleSuggestions {
    if (_bundleSuggestions is EqualUnmodifiableListView)
      return _bundleSuggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bundleSuggestions);
  }

  @override
  @JsonKey()
  final double predictedPriceNextOrder;
  @override
  @JsonKey()
  final double aiUpsellPotential;
  @override
  @JsonKey()
  final bool isAbandonedCartReminderEnabled;

  @override
  String toString() {
    return 'CartOptimizationModel(smartRecommendations: $smartRecommendations, bundleSuggestions: $bundleSuggestions, predictedPriceNextOrder: $predictedPriceNextOrder, aiUpsellPotential: $aiUpsellPotential, isAbandonedCartReminderEnabled: $isAbandonedCartReminderEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartOptimizationModelImpl &&
            const DeepCollectionEquality()
                .equals(other._smartRecommendations, _smartRecommendations) &&
            const DeepCollectionEquality()
                .equals(other._bundleSuggestions, _bundleSuggestions) &&
            (identical(
                    other.predictedPriceNextOrder, predictedPriceNextOrder) ||
                other.predictedPriceNextOrder == predictedPriceNextOrder) &&
            (identical(other.aiUpsellPotential, aiUpsellPotential) ||
                other.aiUpsellPotential == aiUpsellPotential) &&
            (identical(other.isAbandonedCartReminderEnabled,
                    isAbandonedCartReminderEnabled) ||
                other.isAbandonedCartReminderEnabled ==
                    isAbandonedCartReminderEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_smartRecommendations),
      const DeepCollectionEquality().hash(_bundleSuggestions),
      predictedPriceNextOrder,
      aiUpsellPotential,
      isAbandonedCartReminderEnabled);

  /// Create a copy of CartOptimizationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartOptimizationModelImplCopyWith<_$CartOptimizationModelImpl>
      get copyWith => __$$CartOptimizationModelImplCopyWithImpl<
          _$CartOptimizationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartOptimizationModelImplToJson(
      this,
    );
  }
}

abstract class _CartOptimizationModel implements CartOptimizationModel {
  const factory _CartOptimizationModel(
      {final List<ProductModel> smartRecommendations,
      final List<CartBundleSuggestion> bundleSuggestions,
      final double predictedPriceNextOrder,
      final double aiUpsellPotential,
      final bool isAbandonedCartReminderEnabled}) = _$CartOptimizationModelImpl;

  factory _CartOptimizationModel.fromJson(Map<String, dynamic> json) =
      _$CartOptimizationModelImpl.fromJson;

  @override
  List<ProductModel> get smartRecommendations;
  @override
  List<CartBundleSuggestion> get bundleSuggestions;
  @override
  double get predictedPriceNextOrder;
  @override
  double get aiUpsellPotential;
  @override
  bool get isAbandonedCartReminderEnabled;

  /// Create a copy of CartOptimizationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartOptimizationModelImplCopyWith<_$CartOptimizationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CartBundleSuggestion _$CartBundleSuggestionFromJson(Map<String, dynamic> json) {
  return _CartBundleSuggestion.fromJson(json);
}

/// @nodoc
mixin _$CartBundleSuggestion {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  double get bundlePrice => throw _privateConstructorUsedError;
  double get savingsAmount => throw _privateConstructorUsedError;

  /// Serializes this CartBundleSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartBundleSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartBundleSuggestionCopyWith<CartBundleSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartBundleSuggestionCopyWith<$Res> {
  factory $CartBundleSuggestionCopyWith(CartBundleSuggestion value,
          $Res Function(CartBundleSuggestion) then) =
      _$CartBundleSuggestionCopyWithImpl<$Res, CartBundleSuggestion>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<ProductModel> products,
      double bundlePrice,
      double savingsAmount});
}

/// @nodoc
class _$CartBundleSuggestionCopyWithImpl<$Res,
        $Val extends CartBundleSuggestion>
    implements $CartBundleSuggestionCopyWith<$Res> {
  _$CartBundleSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartBundleSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? products = null,
    Object? bundlePrice = null,
    Object? savingsAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bundlePrice: null == bundlePrice
          ? _value.bundlePrice
          : bundlePrice // ignore: cast_nullable_to_non_nullable
              as double,
      savingsAmount: null == savingsAmount
          ? _value.savingsAmount
          : savingsAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartBundleSuggestionImplCopyWith<$Res>
    implements $CartBundleSuggestionCopyWith<$Res> {
  factory _$$CartBundleSuggestionImplCopyWith(_$CartBundleSuggestionImpl value,
          $Res Function(_$CartBundleSuggestionImpl) then) =
      __$$CartBundleSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<ProductModel> products,
      double bundlePrice,
      double savingsAmount});
}

/// @nodoc
class __$$CartBundleSuggestionImplCopyWithImpl<$Res>
    extends _$CartBundleSuggestionCopyWithImpl<$Res, _$CartBundleSuggestionImpl>
    implements _$$CartBundleSuggestionImplCopyWith<$Res> {
  __$$CartBundleSuggestionImplCopyWithImpl(_$CartBundleSuggestionImpl _value,
      $Res Function(_$CartBundleSuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBundleSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? products = null,
    Object? bundlePrice = null,
    Object? savingsAmount = null,
  }) {
    return _then(_$CartBundleSuggestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bundlePrice: null == bundlePrice
          ? _value.bundlePrice
          : bundlePrice // ignore: cast_nullable_to_non_nullable
              as double,
      savingsAmount: null == savingsAmount
          ? _value.savingsAmount
          : savingsAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartBundleSuggestionImpl implements _CartBundleSuggestion {
  const _$CartBundleSuggestionImpl(
      {required this.id,
      required this.name,
      required final List<ProductModel> products,
      required this.bundlePrice,
      required this.savingsAmount})
      : _products = products;

  factory _$CartBundleSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartBundleSuggestionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final double bundlePrice;
  @override
  final double savingsAmount;

  @override
  String toString() {
    return 'CartBundleSuggestion(id: $id, name: $name, products: $products, bundlePrice: $bundlePrice, savingsAmount: $savingsAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartBundleSuggestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.bundlePrice, bundlePrice) ||
                other.bundlePrice == bundlePrice) &&
            (identical(other.savingsAmount, savingsAmount) ||
                other.savingsAmount == savingsAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_products),
      bundlePrice,
      savingsAmount);

  /// Create a copy of CartBundleSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartBundleSuggestionImplCopyWith<_$CartBundleSuggestionImpl>
      get copyWith =>
          __$$CartBundleSuggestionImplCopyWithImpl<_$CartBundleSuggestionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartBundleSuggestionImplToJson(
      this,
    );
  }
}

abstract class _CartBundleSuggestion implements CartBundleSuggestion {
  const factory _CartBundleSuggestion(
      {required final String id,
      required final String name,
      required final List<ProductModel> products,
      required final double bundlePrice,
      required final double savingsAmount}) = _$CartBundleSuggestionImpl;

  factory _CartBundleSuggestion.fromJson(Map<String, dynamic> json) =
      _$CartBundleSuggestionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<ProductModel> get products;
  @override
  double get bundlePrice;
  @override
  double get savingsAmount;

  /// Create a copy of CartBundleSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartBundleSuggestionImplCopyWith<_$CartBundleSuggestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
