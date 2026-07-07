// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  FinanceSummaryModel? get summary => throw _privateConstructorUsedError;
  RevenueModel? get currentCalculation => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinanceStateCopyWith<FinanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceStateCopyWith<$Res> {
  factory $FinanceStateCopyWith(
          FinanceState value, $Res Function(FinanceState) then) =
      _$FinanceStateCopyWithImpl<$Res, FinanceState>;
  @useResult
  $Res call(
      {bool isLoading,
      FinanceSummaryModel? summary,
      RevenueModel? currentCalculation,
      String? errorMessage});

  $FinanceSummaryModelCopyWith<$Res>? get summary;
  $RevenueModelCopyWith<$Res>? get currentCalculation;
}

/// @nodoc
class _$FinanceStateCopyWithImpl<$Res, $Val extends FinanceState>
    implements $FinanceStateCopyWith<$Res> {
  _$FinanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? summary = freezed,
    Object? currentCalculation = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as FinanceSummaryModel?,
      currentCalculation: freezed == currentCalculation
          ? _value.currentCalculation
          : currentCalculation // ignore: cast_nullable_to_non_nullable
              as RevenueModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinanceSummaryModelCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $FinanceSummaryModelCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RevenueModelCopyWith<$Res>? get currentCalculation {
    if (_value.currentCalculation == null) {
      return null;
    }

    return $RevenueModelCopyWith<$Res>(_value.currentCalculation!, (value) {
      return _then(_value.copyWith(currentCalculation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinanceStateImplCopyWith<$Res>
    implements $FinanceStateCopyWith<$Res> {
  factory _$$FinanceStateImplCopyWith(
          _$FinanceStateImpl value, $Res Function(_$FinanceStateImpl) then) =
      __$$FinanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FinanceSummaryModel? summary,
      RevenueModel? currentCalculation,
      String? errorMessage});

  @override
  $FinanceSummaryModelCopyWith<$Res>? get summary;
  @override
  $RevenueModelCopyWith<$Res>? get currentCalculation;
}

/// @nodoc
class __$$FinanceStateImplCopyWithImpl<$Res>
    extends _$FinanceStateCopyWithImpl<$Res, _$FinanceStateImpl>
    implements _$$FinanceStateImplCopyWith<$Res> {
  __$$FinanceStateImplCopyWithImpl(
      _$FinanceStateImpl _value, $Res Function(_$FinanceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? summary = freezed,
    Object? currentCalculation = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FinanceStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as FinanceSummaryModel?,
      currentCalculation: freezed == currentCalculation
          ? _value.currentCalculation
          : currentCalculation // ignore: cast_nullable_to_non_nullable
              as RevenueModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FinanceStateImpl implements _FinanceState {
  const _$FinanceStateImpl(
      {this.isLoading = false,
      this.summary,
      this.currentCalculation,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final FinanceSummaryModel? summary;
  @override
  final RevenueModel? currentCalculation;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FinanceState(isLoading: $isLoading, summary: $summary, currentCalculation: $currentCalculation, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.currentCalculation, currentCalculation) ||
                other.currentCalculation == currentCalculation) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, summary, currentCalculation, errorMessage);

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceStateImplCopyWith<_$FinanceStateImpl> get copyWith =>
      __$$FinanceStateImplCopyWithImpl<_$FinanceStateImpl>(this, _$identity);
}

abstract class _FinanceState implements FinanceState {
  const factory _FinanceState(
      {final bool isLoading,
      final FinanceSummaryModel? summary,
      final RevenueModel? currentCalculation,
      final String? errorMessage}) = _$FinanceStateImpl;

  @override
  bool get isLoading;
  @override
  FinanceSummaryModel? get summary;
  @override
  RevenueModel? get currentCalculation;
  @override
  String? get errorMessage;

  /// Create a copy of FinanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinanceStateImplCopyWith<_$FinanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
