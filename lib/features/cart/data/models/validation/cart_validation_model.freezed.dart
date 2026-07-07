// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_validation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartValidationModel _$CartValidationModelFromJson(Map<String, dynamic> json) {
  return _CartValidationModel.fromJson(json);
}

/// @nodoc
mixin _$CartValidationModel {
  String get cartId => throw _privateConstructorUsedError;
  List<ValidationResultModel> get results => throw _privateConstructorUsedError;
  bool get isCheckoutAllowed => throw _privateConstructorUsedError;
  DateTime get validatedAt => throw _privateConstructorUsedError;
  int get errorCount => throw _privateConstructorUsedError;
  int get warningCount => throw _privateConstructorUsedError;

  /// Serializes this CartValidationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartValidationModelCopyWith<CartValidationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartValidationModelCopyWith<$Res> {
  factory $CartValidationModelCopyWith(
          CartValidationModel value, $Res Function(CartValidationModel) then) =
      _$CartValidationModelCopyWithImpl<$Res, CartValidationModel>;
  @useResult
  $Res call(
      {String cartId,
      List<ValidationResultModel> results,
      bool isCheckoutAllowed,
      DateTime validatedAt,
      int errorCount,
      int warningCount});
}

/// @nodoc
class _$CartValidationModelCopyWithImpl<$Res, $Val extends CartValidationModel>
    implements $CartValidationModelCopyWith<$Res> {
  _$CartValidationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? results = null,
    Object? isCheckoutAllowed = null,
    Object? validatedAt = null,
    Object? errorCount = null,
    Object? warningCount = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ValidationResultModel>,
      isCheckoutAllowed: null == isCheckoutAllowed
          ? _value.isCheckoutAllowed
          : isCheckoutAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      validatedAt: null == validatedAt
          ? _value.validatedAt
          : validatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      warningCount: null == warningCount
          ? _value.warningCount
          : warningCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartValidationModelImplCopyWith<$Res>
    implements $CartValidationModelCopyWith<$Res> {
  factory _$$CartValidationModelImplCopyWith(_$CartValidationModelImpl value,
          $Res Function(_$CartValidationModelImpl) then) =
      __$$CartValidationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cartId,
      List<ValidationResultModel> results,
      bool isCheckoutAllowed,
      DateTime validatedAt,
      int errorCount,
      int warningCount});
}

/// @nodoc
class __$$CartValidationModelImplCopyWithImpl<$Res>
    extends _$CartValidationModelCopyWithImpl<$Res, _$CartValidationModelImpl>
    implements _$$CartValidationModelImplCopyWith<$Res> {
  __$$CartValidationModelImplCopyWithImpl(_$CartValidationModelImpl _value,
      $Res Function(_$CartValidationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? results = null,
    Object? isCheckoutAllowed = null,
    Object? validatedAt = null,
    Object? errorCount = null,
    Object? warningCount = null,
  }) {
    return _then(_$CartValidationModelImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ValidationResultModel>,
      isCheckoutAllowed: null == isCheckoutAllowed
          ? _value.isCheckoutAllowed
          : isCheckoutAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      validatedAt: null == validatedAt
          ? _value.validatedAt
          : validatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      warningCount: null == warningCount
          ? _value.warningCount
          : warningCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartValidationModelImpl implements _CartValidationModel {
  const _$CartValidationModelImpl(
      {required this.cartId,
      final List<ValidationResultModel> results = const [],
      this.isCheckoutAllowed = true,
      required this.validatedAt,
      this.errorCount = 0,
      this.warningCount = 0})
      : _results = results;

  factory _$CartValidationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartValidationModelImplFromJson(json);

  @override
  final String cartId;
  final List<ValidationResultModel> _results;
  @override
  @JsonKey()
  List<ValidationResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final bool isCheckoutAllowed;
  @override
  final DateTime validatedAt;
  @override
  @JsonKey()
  final int errorCount;
  @override
  @JsonKey()
  final int warningCount;

  @override
  String toString() {
    return 'CartValidationModel(cartId: $cartId, results: $results, isCheckoutAllowed: $isCheckoutAllowed, validatedAt: $validatedAt, errorCount: $errorCount, warningCount: $warningCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartValidationModelImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.isCheckoutAllowed, isCheckoutAllowed) ||
                other.isCheckoutAllowed == isCheckoutAllowed) &&
            (identical(other.validatedAt, validatedAt) ||
                other.validatedAt == validatedAt) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.warningCount, warningCount) ||
                other.warningCount == warningCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartId,
      const DeepCollectionEquality().hash(_results),
      isCheckoutAllowed,
      validatedAt,
      errorCount,
      warningCount);

  /// Create a copy of CartValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartValidationModelImplCopyWith<_$CartValidationModelImpl> get copyWith =>
      __$$CartValidationModelImplCopyWithImpl<_$CartValidationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartValidationModelImplToJson(
      this,
    );
  }
}

abstract class _CartValidationModel implements CartValidationModel {
  const factory _CartValidationModel(
      {required final String cartId,
      final List<ValidationResultModel> results,
      final bool isCheckoutAllowed,
      required final DateTime validatedAt,
      final int errorCount,
      final int warningCount}) = _$CartValidationModelImpl;

  factory _CartValidationModel.fromJson(Map<String, dynamic> json) =
      _$CartValidationModelImpl.fromJson;

  @override
  String get cartId;
  @override
  List<ValidationResultModel> get results;
  @override
  bool get isCheckoutAllowed;
  @override
  DateTime get validatedAt;
  @override
  int get errorCount;
  @override
  int get warningCount;

  /// Create a copy of CartValidationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartValidationModelImplCopyWith<_$CartValidationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
