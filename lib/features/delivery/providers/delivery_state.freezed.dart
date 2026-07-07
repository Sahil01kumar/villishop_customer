// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DeliverySummaryModel> get summaries =>
      throw _privateConstructorUsedError;
  List<DeliverySlotModel> get availableSlots =>
      throw _privateConstructorUsedError;
  DeliverySlotModel? get selectedSlot => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  double get totalConsolidatedCharge => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryStateCopyWith<DeliveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStateCopyWith<$Res> {
  factory $DeliveryStateCopyWith(
          DeliveryState value, $Res Function(DeliveryState) then) =
      _$DeliveryStateCopyWithImpl<$Res, DeliveryState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<DeliverySummaryModel> summaries,
      List<DeliverySlotModel> availableSlots,
      DeliverySlotModel? selectedSlot,
      String? errorMessage,
      double totalConsolidatedCharge});

  $DeliverySlotModelCopyWith<$Res>? get selectedSlot;
}

/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res, $Val extends DeliveryState>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? summaries = null,
    Object? availableSlots = null,
    Object? selectedSlot = freezed,
    Object? errorMessage = freezed,
    Object? totalConsolidatedCharge = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      summaries: null == summaries
          ? _value.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<DeliverySummaryModel>,
      availableSlots: null == availableSlots
          ? _value.availableSlots
          : availableSlots // ignore: cast_nullable_to_non_nullable
              as List<DeliverySlotModel>,
      selectedSlot: freezed == selectedSlot
          ? _value.selectedSlot
          : selectedSlot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalConsolidatedCharge: null == totalConsolidatedCharge
          ? _value.totalConsolidatedCharge
          : totalConsolidatedCharge // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliverySlotModelCopyWith<$Res>? get selectedSlot {
    if (_value.selectedSlot == null) {
      return null;
    }

    return $DeliverySlotModelCopyWith<$Res>(_value.selectedSlot!, (value) {
      return _then(_value.copyWith(selectedSlot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryStateImplCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$$DeliveryStateImplCopyWith(
          _$DeliveryStateImpl value, $Res Function(_$DeliveryStateImpl) then) =
      __$$DeliveryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<DeliverySummaryModel> summaries,
      List<DeliverySlotModel> availableSlots,
      DeliverySlotModel? selectedSlot,
      String? errorMessage,
      double totalConsolidatedCharge});

  @override
  $DeliverySlotModelCopyWith<$Res>? get selectedSlot;
}

/// @nodoc
class __$$DeliveryStateImplCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$DeliveryStateImpl>
    implements _$$DeliveryStateImplCopyWith<$Res> {
  __$$DeliveryStateImplCopyWithImpl(
      _$DeliveryStateImpl _value, $Res Function(_$DeliveryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? summaries = null,
    Object? availableSlots = null,
    Object? selectedSlot = freezed,
    Object? errorMessage = freezed,
    Object? totalConsolidatedCharge = null,
  }) {
    return _then(_$DeliveryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      summaries: null == summaries
          ? _value._summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<DeliverySummaryModel>,
      availableSlots: null == availableSlots
          ? _value._availableSlots
          : availableSlots // ignore: cast_nullable_to_non_nullable
              as List<DeliverySlotModel>,
      selectedSlot: freezed == selectedSlot
          ? _value.selectedSlot
          : selectedSlot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalConsolidatedCharge: null == totalConsolidatedCharge
          ? _value.totalConsolidatedCharge
          : totalConsolidatedCharge // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DeliveryStateImpl implements _DeliveryState {
  const _$DeliveryStateImpl(
      {this.isLoading = false,
      final List<DeliverySummaryModel> summaries = const [],
      final List<DeliverySlotModel> availableSlots = const [],
      this.selectedSlot,
      this.errorMessage,
      this.totalConsolidatedCharge = 0.0})
      : _summaries = summaries,
        _availableSlots = availableSlots;

  @override
  @JsonKey()
  final bool isLoading;
  final List<DeliverySummaryModel> _summaries;
  @override
  @JsonKey()
  List<DeliverySummaryModel> get summaries {
    if (_summaries is EqualUnmodifiableListView) return _summaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summaries);
  }

  final List<DeliverySlotModel> _availableSlots;
  @override
  @JsonKey()
  List<DeliverySlotModel> get availableSlots {
    if (_availableSlots is EqualUnmodifiableListView) return _availableSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSlots);
  }

  @override
  final DeliverySlotModel? selectedSlot;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final double totalConsolidatedCharge;

  @override
  String toString() {
    return 'DeliveryState(isLoading: $isLoading, summaries: $summaries, availableSlots: $availableSlots, selectedSlot: $selectedSlot, errorMessage: $errorMessage, totalConsolidatedCharge: $totalConsolidatedCharge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._summaries, _summaries) &&
            const DeepCollectionEquality()
                .equals(other._availableSlots, _availableSlots) &&
            (identical(other.selectedSlot, selectedSlot) ||
                other.selectedSlot == selectedSlot) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(
                    other.totalConsolidatedCharge, totalConsolidatedCharge) ||
                other.totalConsolidatedCharge == totalConsolidatedCharge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_summaries),
      const DeepCollectionEquality().hash(_availableSlots),
      selectedSlot,
      errorMessage,
      totalConsolidatedCharge);

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryStateImplCopyWith<_$DeliveryStateImpl> get copyWith =>
      __$$DeliveryStateImplCopyWithImpl<_$DeliveryStateImpl>(this, _$identity);
}

abstract class _DeliveryState implements DeliveryState {
  const factory _DeliveryState(
      {final bool isLoading,
      final List<DeliverySummaryModel> summaries,
      final List<DeliverySlotModel> availableSlots,
      final DeliverySlotModel? selectedSlot,
      final String? errorMessage,
      final double totalConsolidatedCharge}) = _$DeliveryStateImpl;

  @override
  bool get isLoading;
  @override
  List<DeliverySummaryModel> get summaries;
  @override
  List<DeliverySlotModel> get availableSlots;
  @override
  DeliverySlotModel? get selectedSlot;
  @override
  String? get errorMessage;
  @override
  double get totalConsolidatedCharge;

  /// Create a copy of DeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryStateImplCopyWith<_$DeliveryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
