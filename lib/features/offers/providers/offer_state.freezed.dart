// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfferState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<OfferModel> get offers => throw _privateConstructorUsedError;
  List<OfferModel> get flashSales => throw _privateConstructorUsedError;
  List<CouponModel> get coupons => throw _privateConstructorUsedError;
  List<CampaignModel> get campaigns => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get selectedCouponCode => throw _privateConstructorUsedError;
  double get currentCartValue => throw _privateConstructorUsedError;

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferStateCopyWith<OfferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferStateCopyWith<$Res> {
  factory $OfferStateCopyWith(
          OfferState value, $Res Function(OfferState) then) =
      _$OfferStateCopyWithImpl<$Res, OfferState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<OfferModel> offers,
      List<OfferModel> flashSales,
      List<CouponModel> coupons,
      List<CampaignModel> campaigns,
      String? errorMessage,
      String? selectedCouponCode,
      double currentCartValue});
}

/// @nodoc
class _$OfferStateCopyWithImpl<$Res, $Val extends OfferState>
    implements $OfferStateCopyWith<$Res> {
  _$OfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? offers = null,
    Object? flashSales = null,
    Object? coupons = null,
    Object? campaigns = null,
    Object? errorMessage = freezed,
    Object? selectedCouponCode = freezed,
    Object? currentCartValue = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
      flashSales: null == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
      coupons: null == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponModel>,
      campaigns: null == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCouponCode: freezed == selectedCouponCode
          ? _value.selectedCouponCode
          : selectedCouponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCartValue: null == currentCartValue
          ? _value.currentCartValue
          : currentCartValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferStateImplCopyWith<$Res>
    implements $OfferStateCopyWith<$Res> {
  factory _$$OfferStateImplCopyWith(
          _$OfferStateImpl value, $Res Function(_$OfferStateImpl) then) =
      __$$OfferStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<OfferModel> offers,
      List<OfferModel> flashSales,
      List<CouponModel> coupons,
      List<CampaignModel> campaigns,
      String? errorMessage,
      String? selectedCouponCode,
      double currentCartValue});
}

/// @nodoc
class __$$OfferStateImplCopyWithImpl<$Res>
    extends _$OfferStateCopyWithImpl<$Res, _$OfferStateImpl>
    implements _$$OfferStateImplCopyWith<$Res> {
  __$$OfferStateImplCopyWithImpl(
      _$OfferStateImpl _value, $Res Function(_$OfferStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? offers = null,
    Object? flashSales = null,
    Object? coupons = null,
    Object? campaigns = null,
    Object? errorMessage = freezed,
    Object? selectedCouponCode = freezed,
    Object? currentCartValue = null,
  }) {
    return _then(_$OfferStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
      flashSales: null == flashSales
          ? _value._flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
      coupons: null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponModel>,
      campaigns: null == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCouponCode: freezed == selectedCouponCode
          ? _value.selectedCouponCode
          : selectedCouponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCartValue: null == currentCartValue
          ? _value.currentCartValue
          : currentCartValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OfferStateImpl implements _OfferState {
  const _$OfferStateImpl(
      {this.isLoading = true,
      final List<OfferModel> offers = const [],
      final List<OfferModel> flashSales = const [],
      final List<CouponModel> coupons = const [],
      final List<CampaignModel> campaigns = const [],
      this.errorMessage,
      this.selectedCouponCode,
      this.currentCartValue = 0.0})
      : _offers = offers,
        _flashSales = flashSales,
        _coupons = coupons,
        _campaigns = campaigns;

  @override
  @JsonKey()
  final bool isLoading;
  final List<OfferModel> _offers;
  @override
  @JsonKey()
  List<OfferModel> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  final List<OfferModel> _flashSales;
  @override
  @JsonKey()
  List<OfferModel> get flashSales {
    if (_flashSales is EqualUnmodifiableListView) return _flashSales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashSales);
  }

  final List<CouponModel> _coupons;
  @override
  @JsonKey()
  List<CouponModel> get coupons {
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupons);
  }

  final List<CampaignModel> _campaigns;
  @override
  @JsonKey()
  List<CampaignModel> get campaigns {
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaigns);
  }

  @override
  final String? errorMessage;
  @override
  final String? selectedCouponCode;
  @override
  @JsonKey()
  final double currentCartValue;

  @override
  String toString() {
    return 'OfferState(isLoading: $isLoading, offers: $offers, flashSales: $flashSales, coupons: $coupons, campaigns: $campaigns, errorMessage: $errorMessage, selectedCouponCode: $selectedCouponCode, currentCartValue: $currentCartValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            const DeepCollectionEquality()
                .equals(other._flashSales, _flashSales) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCouponCode, selectedCouponCode) ||
                other.selectedCouponCode == selectedCouponCode) &&
            (identical(other.currentCartValue, currentCartValue) ||
                other.currentCartValue == currentCartValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_offers),
      const DeepCollectionEquality().hash(_flashSales),
      const DeepCollectionEquality().hash(_coupons),
      const DeepCollectionEquality().hash(_campaigns),
      errorMessage,
      selectedCouponCode,
      currentCartValue);

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferStateImplCopyWith<_$OfferStateImpl> get copyWith =>
      __$$OfferStateImplCopyWithImpl<_$OfferStateImpl>(this, _$identity);
}

abstract class _OfferState implements OfferState {
  const factory _OfferState(
      {final bool isLoading,
      final List<OfferModel> offers,
      final List<OfferModel> flashSales,
      final List<CouponModel> coupons,
      final List<CampaignModel> campaigns,
      final String? errorMessage,
      final String? selectedCouponCode,
      final double currentCartValue}) = _$OfferStateImpl;

  @override
  bool get isLoading;
  @override
  List<OfferModel> get offers;
  @override
  List<OfferModel> get flashSales;
  @override
  List<CouponModel> get coupons;
  @override
  List<CampaignModel> get campaigns;
  @override
  String? get errorMessage;
  @override
  String? get selectedCouponCode;
  @override
  double get currentCartValue;

  /// Create a copy of OfferState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferStateImplCopyWith<_$OfferStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
