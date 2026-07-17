// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) {
  return _InvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$InvoiceModel {
  double get itemsTotal => throw _privateConstructorUsedError; // Total MRP
  double get sellingPrice =>
      throw _privateConstructorUsedError; // Total selling price before extra discounts
  double get productDiscount =>
      throw _privateConstructorUsedError; // Difference between MRP and Selling Price
  double get couponDiscount => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  double get packingCharge => throw _privateConstructorUsedError;
  double get platformFee => throw _privateConstructorUsedError;
  double get gstAmount => throw _privateConstructorUsedError;
  double get grandTotal => throw _privateConstructorUsedError;
  double get savedAmount => throw _privateConstructorUsedError;
  bool get isFreeDelivery => throw _privateConstructorUsedError;
  List<CategoryTaxBreakdown> get taxBreakdown =>
      throw _privateConstructorUsedError;

  /// Serializes this InvoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceModelCopyWith<InvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceModelCopyWith<$Res> {
  factory $InvoiceModelCopyWith(
          InvoiceModel value, $Res Function(InvoiceModel) then) =
      _$InvoiceModelCopyWithImpl<$Res, InvoiceModel>;
  @useResult
  $Res call(
      {double itemsTotal,
      double sellingPrice,
      double productDiscount,
      double couponDiscount,
      double deliveryCharge,
      double packingCharge,
      double platformFee,
      double gstAmount,
      double grandTotal,
      double savedAmount,
      bool isFreeDelivery,
      List<CategoryTaxBreakdown> taxBreakdown});
}

/// @nodoc
class _$InvoiceModelCopyWithImpl<$Res, $Val extends InvoiceModel>
    implements $InvoiceModelCopyWith<$Res> {
  _$InvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsTotal = null,
    Object? sellingPrice = null,
    Object? productDiscount = null,
    Object? couponDiscount = null,
    Object? deliveryCharge = null,
    Object? packingCharge = null,
    Object? platformFee = null,
    Object? gstAmount = null,
    Object? grandTotal = null,
    Object? savedAmount = null,
    Object? isFreeDelivery = null,
    Object? taxBreakdown = null,
  }) {
    return _then(_value.copyWith(
      itemsTotal: null == itemsTotal
          ? _value.itemsTotal
          : itemsTotal // ignore: cast_nullable_to_non_nullable
              as double,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productDiscount: null == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      packingCharge: null == packingCharge
          ? _value.packingCharge
          : packingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      savedAmount: null == savedAmount
          ? _value.savedAmount
          : savedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      taxBreakdown: null == taxBreakdown
          ? _value.taxBreakdown
          : taxBreakdown // ignore: cast_nullable_to_non_nullable
              as List<CategoryTaxBreakdown>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceModelImplCopyWith<$Res>
    implements $InvoiceModelCopyWith<$Res> {
  factory _$$InvoiceModelImplCopyWith(
          _$InvoiceModelImpl value, $Res Function(_$InvoiceModelImpl) then) =
      __$$InvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double itemsTotal,
      double sellingPrice,
      double productDiscount,
      double couponDiscount,
      double deliveryCharge,
      double packingCharge,
      double platformFee,
      double gstAmount,
      double grandTotal,
      double savedAmount,
      bool isFreeDelivery,
      List<CategoryTaxBreakdown> taxBreakdown});
}

/// @nodoc
class __$$InvoiceModelImplCopyWithImpl<$Res>
    extends _$InvoiceModelCopyWithImpl<$Res, _$InvoiceModelImpl>
    implements _$$InvoiceModelImplCopyWith<$Res> {
  __$$InvoiceModelImplCopyWithImpl(
      _$InvoiceModelImpl _value, $Res Function(_$InvoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsTotal = null,
    Object? sellingPrice = null,
    Object? productDiscount = null,
    Object? couponDiscount = null,
    Object? deliveryCharge = null,
    Object? packingCharge = null,
    Object? platformFee = null,
    Object? gstAmount = null,
    Object? grandTotal = null,
    Object? savedAmount = null,
    Object? isFreeDelivery = null,
    Object? taxBreakdown = null,
  }) {
    return _then(_$InvoiceModelImpl(
      itemsTotal: null == itemsTotal
          ? _value.itemsTotal
          : itemsTotal // ignore: cast_nullable_to_non_nullable
              as double,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productDiscount: null == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      packingCharge: null == packingCharge
          ? _value.packingCharge
          : packingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      savedAmount: null == savedAmount
          ? _value.savedAmount
          : savedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      taxBreakdown: null == taxBreakdown
          ? _value._taxBreakdown
          : taxBreakdown // ignore: cast_nullable_to_non_nullable
              as List<CategoryTaxBreakdown>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceModelImpl implements _InvoiceModel {
  const _$InvoiceModelImpl(
      {this.itemsTotal = 0.0,
      this.sellingPrice = 0.0,
      this.productDiscount = 0.0,
      this.couponDiscount = 0.0,
      this.deliveryCharge = 0.0,
      this.packingCharge = 5.0,
      this.platformFee = 2.0,
      this.gstAmount = 0.0,
      this.grandTotal = 0.0,
      this.savedAmount = 0.0,
      this.isFreeDelivery = false,
      final List<CategoryTaxBreakdown> taxBreakdown = const []})
      : _taxBreakdown = taxBreakdown;

  factory _$InvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceModelImplFromJson(json);

  @override
  @JsonKey()
  final double itemsTotal;
// Total MRP
  @override
  @JsonKey()
  final double sellingPrice;
// Total selling price before extra discounts
  @override
  @JsonKey()
  final double productDiscount;
// Difference between MRP and Selling Price
  @override
  @JsonKey()
  final double couponDiscount;
  @override
  @JsonKey()
  final double deliveryCharge;
  @override
  @JsonKey()
  final double packingCharge;
  @override
  @JsonKey()
  final double platformFee;
  @override
  @JsonKey()
  final double gstAmount;
  @override
  @JsonKey()
  final double grandTotal;
  @override
  @JsonKey()
  final double savedAmount;
  @override
  @JsonKey()
  final bool isFreeDelivery;
  final List<CategoryTaxBreakdown> _taxBreakdown;
  @override
  @JsonKey()
  List<CategoryTaxBreakdown> get taxBreakdown {
    if (_taxBreakdown is EqualUnmodifiableListView) return _taxBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxBreakdown);
  }

  @override
  String toString() {
    return 'InvoiceModel(itemsTotal: $itemsTotal, sellingPrice: $sellingPrice, productDiscount: $productDiscount, couponDiscount: $couponDiscount, deliveryCharge: $deliveryCharge, packingCharge: $packingCharge, platformFee: $platformFee, gstAmount: $gstAmount, grandTotal: $grandTotal, savedAmount: $savedAmount, isFreeDelivery: $isFreeDelivery, taxBreakdown: $taxBreakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceModelImpl &&
            (identical(other.itemsTotal, itemsTotal) ||
                other.itemsTotal == itemsTotal) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.productDiscount, productDiscount) ||
                other.productDiscount == productDiscount) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.packingCharge, packingCharge) ||
                other.packingCharge == packingCharge) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.gstAmount, gstAmount) ||
                other.gstAmount == gstAmount) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.savedAmount, savedAmount) ||
                other.savedAmount == savedAmount) &&
            (identical(other.isFreeDelivery, isFreeDelivery) ||
                other.isFreeDelivery == isFreeDelivery) &&
            const DeepCollectionEquality()
                .equals(other._taxBreakdown, _taxBreakdown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemsTotal,
      sellingPrice,
      productDiscount,
      couponDiscount,
      deliveryCharge,
      packingCharge,
      platformFee,
      gstAmount,
      grandTotal,
      savedAmount,
      isFreeDelivery,
      const DeepCollectionEquality().hash(_taxBreakdown));

  /// Create a copy of InvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceModelImplCopyWith<_$InvoiceModelImpl> get copyWith =>
      __$$InvoiceModelImplCopyWithImpl<_$InvoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _InvoiceModel implements InvoiceModel {
  const factory _InvoiceModel(
      {final double itemsTotal,
      final double sellingPrice,
      final double productDiscount,
      final double couponDiscount,
      final double deliveryCharge,
      final double packingCharge,
      final double platformFee,
      final double gstAmount,
      final double grandTotal,
      final double savedAmount,
      final bool isFreeDelivery,
      final List<CategoryTaxBreakdown> taxBreakdown}) = _$InvoiceModelImpl;

  factory _InvoiceModel.fromJson(Map<String, dynamic> json) =
      _$InvoiceModelImpl.fromJson;

  @override
  double get itemsTotal; // Total MRP
  @override
  double get sellingPrice; // Total selling price before extra discounts
  @override
  double get productDiscount; // Difference between MRP and Selling Price
  @override
  double get couponDiscount;
  @override
  double get deliveryCharge;
  @override
  double get packingCharge;
  @override
  double get platformFee;
  @override
  double get gstAmount;
  @override
  double get grandTotal;
  @override
  double get savedAmount;
  @override
  bool get isFreeDelivery;
  @override
  List<CategoryTaxBreakdown> get taxBreakdown;

  /// Create a copy of InvoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceModelImplCopyWith<_$InvoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryTaxBreakdown _$CategoryTaxBreakdownFromJson(Map<String, dynamic> json) {
  return _CategoryTaxBreakdown.fromJson(json);
}

/// @nodoc
mixin _$CategoryTaxBreakdown {
  String get category => throw _privateConstructorUsedError;
  double get taxableAmount => throw _privateConstructorUsedError;
  double get gstPercentage => throw _privateConstructorUsedError;
  double get gstAmount => throw _privateConstructorUsedError;

  /// Serializes this CategoryTaxBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryTaxBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTaxBreakdownCopyWith<CategoryTaxBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTaxBreakdownCopyWith<$Res> {
  factory $CategoryTaxBreakdownCopyWith(CategoryTaxBreakdown value,
          $Res Function(CategoryTaxBreakdown) then) =
      _$CategoryTaxBreakdownCopyWithImpl<$Res, CategoryTaxBreakdown>;
  @useResult
  $Res call(
      {String category,
      double taxableAmount,
      double gstPercentage,
      double gstAmount});
}

/// @nodoc
class _$CategoryTaxBreakdownCopyWithImpl<$Res,
        $Val extends CategoryTaxBreakdown>
    implements $CategoryTaxBreakdownCopyWith<$Res> {
  _$CategoryTaxBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTaxBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? taxableAmount = null,
    Object? gstPercentage = null,
    Object? gstAmount = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      taxableAmount: null == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gstPercentage: null == gstPercentage
          ? _value.gstPercentage
          : gstPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryTaxBreakdownImplCopyWith<$Res>
    implements $CategoryTaxBreakdownCopyWith<$Res> {
  factory _$$CategoryTaxBreakdownImplCopyWith(_$CategoryTaxBreakdownImpl value,
          $Res Function(_$CategoryTaxBreakdownImpl) then) =
      __$$CategoryTaxBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category,
      double taxableAmount,
      double gstPercentage,
      double gstAmount});
}

/// @nodoc
class __$$CategoryTaxBreakdownImplCopyWithImpl<$Res>
    extends _$CategoryTaxBreakdownCopyWithImpl<$Res, _$CategoryTaxBreakdownImpl>
    implements _$$CategoryTaxBreakdownImplCopyWith<$Res> {
  __$$CategoryTaxBreakdownImplCopyWithImpl(_$CategoryTaxBreakdownImpl _value,
      $Res Function(_$CategoryTaxBreakdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTaxBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? taxableAmount = null,
    Object? gstPercentage = null,
    Object? gstAmount = null,
  }) {
    return _then(_$CategoryTaxBreakdownImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      taxableAmount: null == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gstPercentage: null == gstPercentage
          ? _value.gstPercentage
          : gstPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryTaxBreakdownImpl implements _CategoryTaxBreakdown {
  const _$CategoryTaxBreakdownImpl(
      {required this.category,
      required this.taxableAmount,
      required this.gstPercentage,
      required this.gstAmount});

  factory _$CategoryTaxBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryTaxBreakdownImplFromJson(json);

  @override
  final String category;
  @override
  final double taxableAmount;
  @override
  final double gstPercentage;
  @override
  final double gstAmount;

  @override
  String toString() {
    return 'CategoryTaxBreakdown(category: $category, taxableAmount: $taxableAmount, gstPercentage: $gstPercentage, gstAmount: $gstAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTaxBreakdownImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.gstPercentage, gstPercentage) ||
                other.gstPercentage == gstPercentage) &&
            (identical(other.gstAmount, gstAmount) ||
                other.gstAmount == gstAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, taxableAmount, gstPercentage, gstAmount);

  /// Create a copy of CategoryTaxBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTaxBreakdownImplCopyWith<_$CategoryTaxBreakdownImpl>
      get copyWith =>
          __$$CategoryTaxBreakdownImplCopyWithImpl<_$CategoryTaxBreakdownImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryTaxBreakdownImplToJson(
      this,
    );
  }
}

abstract class _CategoryTaxBreakdown implements CategoryTaxBreakdown {
  const factory _CategoryTaxBreakdown(
      {required final String category,
      required final double taxableAmount,
      required final double gstPercentage,
      required final double gstAmount}) = _$CategoryTaxBreakdownImpl;

  factory _CategoryTaxBreakdown.fromJson(Map<String, dynamic> json) =
      _$CategoryTaxBreakdownImpl.fromJson;

  @override
  String get category;
  @override
  double get taxableAmount;
  @override
  double get gstPercentage;
  @override
  double get gstAmount;

  /// Create a copy of CategoryTaxBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTaxBreakdownImplCopyWith<_$CategoryTaxBreakdownImpl>
      get copyWith => throw _privateConstructorUsedError;
}
