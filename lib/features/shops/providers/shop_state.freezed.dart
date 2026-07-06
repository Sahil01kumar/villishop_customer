// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ShopModel> get nearbyShops => throw _privateConstructorUsedError;
  List<ShopModel> get filteredShops => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isGridView => throw _privateConstructorUsedError;

  /// Create a copy of ShopState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ShopModel> nearbyShops,
      List<ShopModel> filteredShops,
      String? errorMessage,
      bool isGridView});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? nearbyShops = null,
    Object? filteredShops = null,
    Object? errorMessage = freezed,
    Object? isGridView = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nearbyShops: null == nearbyShops
          ? _value.nearbyShops
          : nearbyShops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      filteredShops: null == filteredShops
          ? _value.filteredShops
          : filteredShops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isGridView: null == isGridView
          ? _value.isGridView
          : isGridView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopStateImplCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$ShopStateImplCopyWith(
          _$ShopStateImpl value, $Res Function(_$ShopStateImpl) then) =
      __$$ShopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ShopModel> nearbyShops,
      List<ShopModel> filteredShops,
      String? errorMessage,
      bool isGridView});
}

/// @nodoc
class __$$ShopStateImplCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$ShopStateImpl>
    implements _$$ShopStateImplCopyWith<$Res> {
  __$$ShopStateImplCopyWithImpl(
      _$ShopStateImpl _value, $Res Function(_$ShopStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? nearbyShops = null,
    Object? filteredShops = null,
    Object? errorMessage = freezed,
    Object? isGridView = null,
  }) {
    return _then(_$ShopStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nearbyShops: null == nearbyShops
          ? _value._nearbyShops
          : nearbyShops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      filteredShops: null == filteredShops
          ? _value._filteredShops
          : filteredShops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isGridView: null == isGridView
          ? _value.isGridView
          : isGridView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShopStateImpl implements _ShopState {
  const _$ShopStateImpl(
      {this.isLoading = false,
      final List<ShopModel> nearbyShops = const [],
      final List<ShopModel> filteredShops = const [],
      this.errorMessage,
      this.isGridView = false})
      : _nearbyShops = nearbyShops,
        _filteredShops = filteredShops;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ShopModel> _nearbyShops;
  @override
  @JsonKey()
  List<ShopModel> get nearbyShops {
    if (_nearbyShops is EqualUnmodifiableListView) return _nearbyShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyShops);
  }

  final List<ShopModel> _filteredShops;
  @override
  @JsonKey()
  List<ShopModel> get filteredShops {
    if (_filteredShops is EqualUnmodifiableListView) return _filteredShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredShops);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isGridView;

  @override
  String toString() {
    return 'ShopState(isLoading: $isLoading, nearbyShops: $nearbyShops, filteredShops: $filteredShops, errorMessage: $errorMessage, isGridView: $isGridView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._nearbyShops, _nearbyShops) &&
            const DeepCollectionEquality()
                .equals(other._filteredShops, _filteredShops) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isGridView, isGridView) ||
                other.isGridView == isGridView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_nearbyShops),
      const DeepCollectionEquality().hash(_filteredShops),
      errorMessage,
      isGridView);

  /// Create a copy of ShopState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      __$$ShopStateImplCopyWithImpl<_$ShopStateImpl>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final bool isLoading,
      final List<ShopModel> nearbyShops,
      final List<ShopModel> filteredShops,
      final String? errorMessage,
      final bool isGridView}) = _$ShopStateImpl;

  @override
  bool get isLoading;
  @override
  List<ShopModel> get nearbyShops;
  @override
  List<ShopModel> get filteredShops;
  @override
  String? get errorMessage;
  @override
  bool get isGridView;

  /// Create a copy of ShopState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
