// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_search_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressSearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressSearchStateCopyWith<AddressSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSearchStateCopyWith<$Res> {
  factory $AddressSearchStateCopyWith(
          AddressSearchState value, $Res Function(AddressSearchState) then) =
      _$AddressSearchStateCopyWithImpl<$Res, AddressSearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<String> suggestions,
      String? query,
      String? errorMessage});
}

/// @nodoc
class _$AddressSearchStateCopyWithImpl<$Res, $Val extends AddressSearchState>
    implements $AddressSearchStateCopyWith<$Res> {
  _$AddressSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? suggestions = null,
    Object? query = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressSearchStateImplCopyWith<$Res>
    implements $AddressSearchStateCopyWith<$Res> {
  factory _$$AddressSearchStateImplCopyWith(_$AddressSearchStateImpl value,
          $Res Function(_$AddressSearchStateImpl) then) =
      __$$AddressSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<String> suggestions,
      String? query,
      String? errorMessage});
}

/// @nodoc
class __$$AddressSearchStateImplCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res, _$AddressSearchStateImpl>
    implements _$$AddressSearchStateImplCopyWith<$Res> {
  __$$AddressSearchStateImplCopyWithImpl(_$AddressSearchStateImpl _value,
      $Res Function(_$AddressSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? suggestions = null,
    Object? query = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddressSearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddressSearchStateImpl implements _AddressSearchState {
  const _$AddressSearchStateImpl(
      {this.isLoading = false,
      final List<String> suggestions = const [],
      this.query,
      this.errorMessage})
      : _suggestions = suggestions;

  @override
  @JsonKey()
  final bool isLoading;
  final List<String> _suggestions;
  @override
  @JsonKey()
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  final String? query;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddressSearchState(isLoading: $isLoading, suggestions: $suggestions, query: $query, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_suggestions), query, errorMessage);

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSearchStateImplCopyWith<_$AddressSearchStateImpl> get copyWith =>
      __$$AddressSearchStateImplCopyWithImpl<_$AddressSearchStateImpl>(
          this, _$identity);
}

abstract class _AddressSearchState implements AddressSearchState {
  const factory _AddressSearchState(
      {final bool isLoading,
      final List<String> suggestions,
      final String? query,
      final String? errorMessage}) = _$AddressSearchStateImpl;

  @override
  bool get isLoading;
  @override
  List<String> get suggestions;
  @override
  String? get query;
  @override
  String? get errorMessage;

  /// Create a copy of AddressSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressSearchStateImplCopyWith<_$AddressSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
