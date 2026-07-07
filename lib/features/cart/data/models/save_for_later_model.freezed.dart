// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_for_later_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveForLaterModel _$SaveForLaterModelFromJson(Map<String, dynamic> json) {
  return _SaveForLaterModel.fromJson(json);
}

/// @nodoc
mixin _$SaveForLaterModel {
  String get id => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;
  DateTime get savedAt => throw _privateConstructorUsedError;
  double get aiRelevanceScore => throw _privateConstructorUsedError;
  bool get priceDropAlertReady => throw _privateConstructorUsedError;
  bool get stockBackAlertReady => throw _privateConstructorUsedError;

  /// Serializes this SaveForLaterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveForLaterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveForLaterModelCopyWith<SaveForLaterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveForLaterModelCopyWith<$Res> {
  factory $SaveForLaterModelCopyWith(
          SaveForLaterModel value, $Res Function(SaveForLaterModel) then) =
      _$SaveForLaterModelCopyWithImpl<$Res, SaveForLaterModel>;
  @useResult
  $Res call(
      {String id,
      ProductModel product,
      DateTime savedAt,
      double aiRelevanceScore,
      bool priceDropAlertReady,
      bool stockBackAlertReady});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$SaveForLaterModelCopyWithImpl<$Res, $Val extends SaveForLaterModel>
    implements $SaveForLaterModelCopyWith<$Res> {
  _$SaveForLaterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveForLaterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? savedAt = null,
    Object? aiRelevanceScore = null,
    Object? priceDropAlertReady = null,
    Object? stockBackAlertReady = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      savedAt: null == savedAt
          ? _value.savedAt
          : savedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiRelevanceScore: null == aiRelevanceScore
          ? _value.aiRelevanceScore
          : aiRelevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      priceDropAlertReady: null == priceDropAlertReady
          ? _value.priceDropAlertReady
          : priceDropAlertReady // ignore: cast_nullable_to_non_nullable
              as bool,
      stockBackAlertReady: null == stockBackAlertReady
          ? _value.stockBackAlertReady
          : stockBackAlertReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SaveForLaterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveForLaterModelImplCopyWith<$Res>
    implements $SaveForLaterModelCopyWith<$Res> {
  factory _$$SaveForLaterModelImplCopyWith(_$SaveForLaterModelImpl value,
          $Res Function(_$SaveForLaterModelImpl) then) =
      __$$SaveForLaterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ProductModel product,
      DateTime savedAt,
      double aiRelevanceScore,
      bool priceDropAlertReady,
      bool stockBackAlertReady});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$SaveForLaterModelImplCopyWithImpl<$Res>
    extends _$SaveForLaterModelCopyWithImpl<$Res, _$SaveForLaterModelImpl>
    implements _$$SaveForLaterModelImplCopyWith<$Res> {
  __$$SaveForLaterModelImplCopyWithImpl(_$SaveForLaterModelImpl _value,
      $Res Function(_$SaveForLaterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveForLaterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? savedAt = null,
    Object? aiRelevanceScore = null,
    Object? priceDropAlertReady = null,
    Object? stockBackAlertReady = null,
  }) {
    return _then(_$SaveForLaterModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      savedAt: null == savedAt
          ? _value.savedAt
          : savedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiRelevanceScore: null == aiRelevanceScore
          ? _value.aiRelevanceScore
          : aiRelevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      priceDropAlertReady: null == priceDropAlertReady
          ? _value.priceDropAlertReady
          : priceDropAlertReady // ignore: cast_nullable_to_non_nullable
              as bool,
      stockBackAlertReady: null == stockBackAlertReady
          ? _value.stockBackAlertReady
          : stockBackAlertReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveForLaterModelImpl implements _SaveForLaterModel {
  const _$SaveForLaterModelImpl(
      {required this.id,
      required this.product,
      required this.savedAt,
      this.aiRelevanceScore = 0.0,
      this.priceDropAlertReady = false,
      this.stockBackAlertReady = false});

  factory _$SaveForLaterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveForLaterModelImplFromJson(json);

  @override
  final String id;
  @override
  final ProductModel product;
  @override
  final DateTime savedAt;
  @override
  @JsonKey()
  final double aiRelevanceScore;
  @override
  @JsonKey()
  final bool priceDropAlertReady;
  @override
  @JsonKey()
  final bool stockBackAlertReady;

  @override
  String toString() {
    return 'SaveForLaterModel(id: $id, product: $product, savedAt: $savedAt, aiRelevanceScore: $aiRelevanceScore, priceDropAlertReady: $priceDropAlertReady, stockBackAlertReady: $stockBackAlertReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveForLaterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.savedAt, savedAt) || other.savedAt == savedAt) &&
            (identical(other.aiRelevanceScore, aiRelevanceScore) ||
                other.aiRelevanceScore == aiRelevanceScore) &&
            (identical(other.priceDropAlertReady, priceDropAlertReady) ||
                other.priceDropAlertReady == priceDropAlertReady) &&
            (identical(other.stockBackAlertReady, stockBackAlertReady) ||
                other.stockBackAlertReady == stockBackAlertReady));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, savedAt,
      aiRelevanceScore, priceDropAlertReady, stockBackAlertReady);

  /// Create a copy of SaveForLaterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveForLaterModelImplCopyWith<_$SaveForLaterModelImpl> get copyWith =>
      __$$SaveForLaterModelImplCopyWithImpl<_$SaveForLaterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveForLaterModelImplToJson(
      this,
    );
  }
}

abstract class _SaveForLaterModel implements SaveForLaterModel {
  const factory _SaveForLaterModel(
      {required final String id,
      required final ProductModel product,
      required final DateTime savedAt,
      final double aiRelevanceScore,
      final bool priceDropAlertReady,
      final bool stockBackAlertReady}) = _$SaveForLaterModelImpl;

  factory _SaveForLaterModel.fromJson(Map<String, dynamic> json) =
      _$SaveForLaterModelImpl.fromJson;

  @override
  String get id;
  @override
  ProductModel get product;
  @override
  DateTime get savedAt;
  @override
  double get aiRelevanceScore;
  @override
  bool get priceDropAlertReady;
  @override
  bool get stockBackAlertReady;

  /// Create a copy of SaveForLaterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveForLaterModelImplCopyWith<_$SaveForLaterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
