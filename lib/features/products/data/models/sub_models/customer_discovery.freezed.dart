// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_discovery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerDiscovery _$CustomerDiscoveryFromJson(Map<String, dynamic> json) {
  return _CustomerDiscovery.fromJson(json);
}

/// @nodoc
mixin _$CustomerDiscovery {
  bool get isWishlisted => throw _privateConstructorUsedError;
  List<String> get frequentlyBoughtTogetherIds =>
      throw _privateConstructorUsedError;
  List<String> get similarProductIds => throw _privateConstructorUsedError;
  List<String> get customersAlsoBoughtIds => throw _privateConstructorUsedError;

  /// Serializes this CustomerDiscovery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDiscovery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDiscoveryCopyWith<CustomerDiscovery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDiscoveryCopyWith<$Res> {
  factory $CustomerDiscoveryCopyWith(
          CustomerDiscovery value, $Res Function(CustomerDiscovery) then) =
      _$CustomerDiscoveryCopyWithImpl<$Res, CustomerDiscovery>;
  @useResult
  $Res call(
      {bool isWishlisted,
      List<String> frequentlyBoughtTogetherIds,
      List<String> similarProductIds,
      List<String> customersAlsoBoughtIds});
}

/// @nodoc
class _$CustomerDiscoveryCopyWithImpl<$Res, $Val extends CustomerDiscovery>
    implements $CustomerDiscoveryCopyWith<$Res> {
  _$CustomerDiscoveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDiscovery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWishlisted = null,
    Object? frequentlyBoughtTogetherIds = null,
    Object? similarProductIds = null,
    Object? customersAlsoBoughtIds = null,
  }) {
    return _then(_value.copyWith(
      isWishlisted: null == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
      frequentlyBoughtTogetherIds: null == frequentlyBoughtTogetherIds
          ? _value.frequentlyBoughtTogetherIds
          : frequentlyBoughtTogetherIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      similarProductIds: null == similarProductIds
          ? _value.similarProductIds
          : similarProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customersAlsoBoughtIds: null == customersAlsoBoughtIds
          ? _value.customersAlsoBoughtIds
          : customersAlsoBoughtIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerDiscoveryImplCopyWith<$Res>
    implements $CustomerDiscoveryCopyWith<$Res> {
  factory _$$CustomerDiscoveryImplCopyWith(_$CustomerDiscoveryImpl value,
          $Res Function(_$CustomerDiscoveryImpl) then) =
      __$$CustomerDiscoveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isWishlisted,
      List<String> frequentlyBoughtTogetherIds,
      List<String> similarProductIds,
      List<String> customersAlsoBoughtIds});
}

/// @nodoc
class __$$CustomerDiscoveryImplCopyWithImpl<$Res>
    extends _$CustomerDiscoveryCopyWithImpl<$Res, _$CustomerDiscoveryImpl>
    implements _$$CustomerDiscoveryImplCopyWith<$Res> {
  __$$CustomerDiscoveryImplCopyWithImpl(_$CustomerDiscoveryImpl _value,
      $Res Function(_$CustomerDiscoveryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDiscovery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWishlisted = null,
    Object? frequentlyBoughtTogetherIds = null,
    Object? similarProductIds = null,
    Object? customersAlsoBoughtIds = null,
  }) {
    return _then(_$CustomerDiscoveryImpl(
      isWishlisted: null == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
      frequentlyBoughtTogetherIds: null == frequentlyBoughtTogetherIds
          ? _value._frequentlyBoughtTogetherIds
          : frequentlyBoughtTogetherIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      similarProductIds: null == similarProductIds
          ? _value._similarProductIds
          : similarProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customersAlsoBoughtIds: null == customersAlsoBoughtIds
          ? _value._customersAlsoBoughtIds
          : customersAlsoBoughtIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDiscoveryImpl implements _CustomerDiscovery {
  const _$CustomerDiscoveryImpl(
      {this.isWishlisted = false,
      final List<String> frequentlyBoughtTogetherIds = const [],
      final List<String> similarProductIds = const [],
      final List<String> customersAlsoBoughtIds = const []})
      : _frequentlyBoughtTogetherIds = frequentlyBoughtTogetherIds,
        _similarProductIds = similarProductIds,
        _customersAlsoBoughtIds = customersAlsoBoughtIds;

  factory _$CustomerDiscoveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDiscoveryImplFromJson(json);

  @override
  @JsonKey()
  final bool isWishlisted;
  final List<String> _frequentlyBoughtTogetherIds;
  @override
  @JsonKey()
  List<String> get frequentlyBoughtTogetherIds {
    if (_frequentlyBoughtTogetherIds is EqualUnmodifiableListView)
      return _frequentlyBoughtTogetherIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frequentlyBoughtTogetherIds);
  }

  final List<String> _similarProductIds;
  @override
  @JsonKey()
  List<String> get similarProductIds {
    if (_similarProductIds is EqualUnmodifiableListView)
      return _similarProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similarProductIds);
  }

  final List<String> _customersAlsoBoughtIds;
  @override
  @JsonKey()
  List<String> get customersAlsoBoughtIds {
    if (_customersAlsoBoughtIds is EqualUnmodifiableListView)
      return _customersAlsoBoughtIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customersAlsoBoughtIds);
  }

  @override
  String toString() {
    return 'CustomerDiscovery(isWishlisted: $isWishlisted, frequentlyBoughtTogetherIds: $frequentlyBoughtTogetherIds, similarProductIds: $similarProductIds, customersAlsoBoughtIds: $customersAlsoBoughtIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDiscoveryImpl &&
            (identical(other.isWishlisted, isWishlisted) ||
                other.isWishlisted == isWishlisted) &&
            const DeepCollectionEquality().equals(
                other._frequentlyBoughtTogetherIds,
                _frequentlyBoughtTogetherIds) &&
            const DeepCollectionEquality()
                .equals(other._similarProductIds, _similarProductIds) &&
            const DeepCollectionEquality().equals(
                other._customersAlsoBoughtIds, _customersAlsoBoughtIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isWishlisted,
      const DeepCollectionEquality().hash(_frequentlyBoughtTogetherIds),
      const DeepCollectionEquality().hash(_similarProductIds),
      const DeepCollectionEquality().hash(_customersAlsoBoughtIds));

  /// Create a copy of CustomerDiscovery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDiscoveryImplCopyWith<_$CustomerDiscoveryImpl> get copyWith =>
      __$$CustomerDiscoveryImplCopyWithImpl<_$CustomerDiscoveryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDiscoveryImplToJson(
      this,
    );
  }
}

abstract class _CustomerDiscovery implements CustomerDiscovery {
  const factory _CustomerDiscovery(
      {final bool isWishlisted,
      final List<String> frequentlyBoughtTogetherIds,
      final List<String> similarProductIds,
      final List<String> customersAlsoBoughtIds}) = _$CustomerDiscoveryImpl;

  factory _CustomerDiscovery.fromJson(Map<String, dynamic> json) =
      _$CustomerDiscoveryImpl.fromJson;

  @override
  bool get isWishlisted;
  @override
  List<String> get frequentlyBoughtTogetherIds;
  @override
  List<String> get similarProductIds;
  @override
  List<String> get customersAlsoBoughtIds;

  /// Create a copy of CustomerDiscovery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDiscoveryImplCopyWith<_$CustomerDiscoveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
