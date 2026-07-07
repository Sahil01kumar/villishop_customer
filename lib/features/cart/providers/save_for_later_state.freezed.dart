// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_for_later_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveForLaterState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SaveForLaterModel> get items => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SaveForLaterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveForLaterStateCopyWith<SaveForLaterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveForLaterStateCopyWith<$Res> {
  factory $SaveForLaterStateCopyWith(
          SaveForLaterState value, $Res Function(SaveForLaterState) then) =
      _$SaveForLaterStateCopyWithImpl<$Res, SaveForLaterState>;
  @useResult
  $Res call(
      {bool isLoading, List<SaveForLaterModel> items, String? errorMessage});
}

/// @nodoc
class _$SaveForLaterStateCopyWithImpl<$Res, $Val extends SaveForLaterState>
    implements $SaveForLaterStateCopyWith<$Res> {
  _$SaveForLaterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveForLaterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SaveForLaterModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveForLaterStateImplCopyWith<$Res>
    implements $SaveForLaterStateCopyWith<$Res> {
  factory _$$SaveForLaterStateImplCopyWith(_$SaveForLaterStateImpl value,
          $Res Function(_$SaveForLaterStateImpl) then) =
      __$$SaveForLaterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<SaveForLaterModel> items, String? errorMessage});
}

/// @nodoc
class __$$SaveForLaterStateImplCopyWithImpl<$Res>
    extends _$SaveForLaterStateCopyWithImpl<$Res, _$SaveForLaterStateImpl>
    implements _$$SaveForLaterStateImplCopyWith<$Res> {
  __$$SaveForLaterStateImplCopyWithImpl(_$SaveForLaterStateImpl _value,
      $Res Function(_$SaveForLaterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveForLaterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SaveForLaterStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SaveForLaterModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SaveForLaterStateImpl implements _SaveForLaterState {
  const _$SaveForLaterStateImpl(
      {this.isLoading = false,
      final List<SaveForLaterModel> items = const [],
      this.errorMessage})
      : _items = items;

  @override
  @JsonKey()
  final bool isLoading;
  final List<SaveForLaterModel> _items;
  @override
  @JsonKey()
  List<SaveForLaterModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SaveForLaterState(isLoading: $isLoading, items: $items, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveForLaterStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_items), errorMessage);

  /// Create a copy of SaveForLaterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveForLaterStateImplCopyWith<_$SaveForLaterStateImpl> get copyWith =>
      __$$SaveForLaterStateImplCopyWithImpl<_$SaveForLaterStateImpl>(
          this, _$identity);
}

abstract class _SaveForLaterState implements SaveForLaterState {
  const factory _SaveForLaterState(
      {final bool isLoading,
      final List<SaveForLaterModel> items,
      final String? errorMessage}) = _$SaveForLaterStateImpl;

  @override
  bool get isLoading;
  @override
  List<SaveForLaterModel> get items;
  @override
  String? get errorMessage;

  /// Create a copy of SaveForLaterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveForLaterStateImplCopyWith<_$SaveForLaterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
