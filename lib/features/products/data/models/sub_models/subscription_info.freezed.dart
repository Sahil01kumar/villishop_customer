// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionInfo _$SubscriptionInfoFromJson(Map<String, dynamic> json) {
  return _SubscriptionInfo.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionInfo {
  bool get isDailySubscriptionAvailable => throw _privateConstructorUsedError;
  bool get isWeeklySubscriptionAvailable => throw _privateConstructorUsedError;
  bool get isMonthlySubscriptionAvailable => throw _privateConstructorUsedError;
  bool get canRepeatLastOrder => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionInfoCopyWith<SubscriptionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionInfoCopyWith<$Res> {
  factory $SubscriptionInfoCopyWith(
          SubscriptionInfo value, $Res Function(SubscriptionInfo) then) =
      _$SubscriptionInfoCopyWithImpl<$Res, SubscriptionInfo>;
  @useResult
  $Res call(
      {bool isDailySubscriptionAvailable,
      bool isWeeklySubscriptionAvailable,
      bool isMonthlySubscriptionAvailable,
      bool canRepeatLastOrder});
}

/// @nodoc
class _$SubscriptionInfoCopyWithImpl<$Res, $Val extends SubscriptionInfo>
    implements $SubscriptionInfoCopyWith<$Res> {
  _$SubscriptionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDailySubscriptionAvailable = null,
    Object? isWeeklySubscriptionAvailable = null,
    Object? isMonthlySubscriptionAvailable = null,
    Object? canRepeatLastOrder = null,
  }) {
    return _then(_value.copyWith(
      isDailySubscriptionAvailable: null == isDailySubscriptionAvailable
          ? _value.isDailySubscriptionAvailable
          : isDailySubscriptionAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isWeeklySubscriptionAvailable: null == isWeeklySubscriptionAvailable
          ? _value.isWeeklySubscriptionAvailable
          : isWeeklySubscriptionAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isMonthlySubscriptionAvailable: null == isMonthlySubscriptionAvailable
          ? _value.isMonthlySubscriptionAvailable
          : isMonthlySubscriptionAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      canRepeatLastOrder: null == canRepeatLastOrder
          ? _value.canRepeatLastOrder
          : canRepeatLastOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionInfoImplCopyWith<$Res>
    implements $SubscriptionInfoCopyWith<$Res> {
  factory _$$SubscriptionInfoImplCopyWith(_$SubscriptionInfoImpl value,
          $Res Function(_$SubscriptionInfoImpl) then) =
      __$$SubscriptionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDailySubscriptionAvailable,
      bool isWeeklySubscriptionAvailable,
      bool isMonthlySubscriptionAvailable,
      bool canRepeatLastOrder});
}

/// @nodoc
class __$$SubscriptionInfoImplCopyWithImpl<$Res>
    extends _$SubscriptionInfoCopyWithImpl<$Res, _$SubscriptionInfoImpl>
    implements _$$SubscriptionInfoImplCopyWith<$Res> {
  __$$SubscriptionInfoImplCopyWithImpl(_$SubscriptionInfoImpl _value,
      $Res Function(_$SubscriptionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDailySubscriptionAvailable = null,
    Object? isWeeklySubscriptionAvailable = null,
    Object? isMonthlySubscriptionAvailable = null,
    Object? canRepeatLastOrder = null,
  }) {
    return _then(_$SubscriptionInfoImpl(
      isDailySubscriptionAvailable: null == isDailySubscriptionAvailable
          ? _value.isDailySubscriptionAvailable
          : isDailySubscriptionAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isWeeklySubscriptionAvailable: null == isWeeklySubscriptionAvailable
          ? _value.isWeeklySubscriptionAvailable
          : isWeeklySubscriptionAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isMonthlySubscriptionAvailable: null == isMonthlySubscriptionAvailable
          ? _value.isMonthlySubscriptionAvailable
          : isMonthlySubscriptionAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      canRepeatLastOrder: null == canRepeatLastOrder
          ? _value.canRepeatLastOrder
          : canRepeatLastOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionInfoImpl implements _SubscriptionInfo {
  const _$SubscriptionInfoImpl(
      {this.isDailySubscriptionAvailable = false,
      this.isWeeklySubscriptionAvailable = false,
      this.isMonthlySubscriptionAvailable = false,
      this.canRepeatLastOrder = true});

  factory _$SubscriptionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionInfoImplFromJson(json);

  @override
  @JsonKey()
  final bool isDailySubscriptionAvailable;
  @override
  @JsonKey()
  final bool isWeeklySubscriptionAvailable;
  @override
  @JsonKey()
  final bool isMonthlySubscriptionAvailable;
  @override
  @JsonKey()
  final bool canRepeatLastOrder;

  @override
  String toString() {
    return 'SubscriptionInfo(isDailySubscriptionAvailable: $isDailySubscriptionAvailable, isWeeklySubscriptionAvailable: $isWeeklySubscriptionAvailable, isMonthlySubscriptionAvailable: $isMonthlySubscriptionAvailable, canRepeatLastOrder: $canRepeatLastOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionInfoImpl &&
            (identical(other.isDailySubscriptionAvailable,
                    isDailySubscriptionAvailable) ||
                other.isDailySubscriptionAvailable ==
                    isDailySubscriptionAvailable) &&
            (identical(other.isWeeklySubscriptionAvailable,
                    isWeeklySubscriptionAvailable) ||
                other.isWeeklySubscriptionAvailable ==
                    isWeeklySubscriptionAvailable) &&
            (identical(other.isMonthlySubscriptionAvailable,
                    isMonthlySubscriptionAvailable) ||
                other.isMonthlySubscriptionAvailable ==
                    isMonthlySubscriptionAvailable) &&
            (identical(other.canRepeatLastOrder, canRepeatLastOrder) ||
                other.canRepeatLastOrder == canRepeatLastOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDailySubscriptionAvailable,
      isWeeklySubscriptionAvailable,
      isMonthlySubscriptionAvailable,
      canRepeatLastOrder);

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionInfoImplCopyWith<_$SubscriptionInfoImpl> get copyWith =>
      __$$SubscriptionInfoImplCopyWithImpl<_$SubscriptionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionInfoImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionInfo implements SubscriptionInfo {
  const factory _SubscriptionInfo(
      {final bool isDailySubscriptionAvailable,
      final bool isWeeklySubscriptionAvailable,
      final bool isMonthlySubscriptionAvailable,
      final bool canRepeatLastOrder}) = _$SubscriptionInfoImpl;

  factory _SubscriptionInfo.fromJson(Map<String, dynamic> json) =
      _$SubscriptionInfoImpl.fromJson;

  @override
  bool get isDailySubscriptionAvailable;
  @override
  bool get isWeeklySubscriptionAvailable;
  @override
  bool get isMonthlySubscriptionAvailable;
  @override
  bool get canRepeatLastOrder;

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionInfoImplCopyWith<_$SubscriptionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
