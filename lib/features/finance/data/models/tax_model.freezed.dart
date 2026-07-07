// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaxModel _$TaxModelFromJson(Map<String, dynamic> json) {
  return _TaxModel.fromJson(json);
}

/// @nodoc
mixin _$TaxModel {
  double get cgst => throw _privateConstructorUsedError;
  double get sgst => throw _privateConstructorUsedError;
  double get igst => throw _privateConstructorUsedError;
  double get totalTax => throw _privateConstructorUsedError;
  double get gstPercentage => throw _privateConstructorUsedError;
  String get taxLabel => throw _privateConstructorUsedError;

  /// Serializes this TaxModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxModelCopyWith<TaxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxModelCopyWith<$Res> {
  factory $TaxModelCopyWith(TaxModel value, $Res Function(TaxModel) then) =
      _$TaxModelCopyWithImpl<$Res, TaxModel>;
  @useResult
  $Res call(
      {double cgst,
      double sgst,
      double igst,
      double totalTax,
      double gstPercentage,
      String taxLabel});
}

/// @nodoc
class _$TaxModelCopyWithImpl<$Res, $Val extends TaxModel>
    implements $TaxModelCopyWith<$Res> {
  _$TaxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cgst = null,
    Object? sgst = null,
    Object? igst = null,
    Object? totalTax = null,
    Object? gstPercentage = null,
    Object? taxLabel = null,
  }) {
    return _then(_value.copyWith(
      cgst: null == cgst
          ? _value.cgst
          : cgst // ignore: cast_nullable_to_non_nullable
              as double,
      sgst: null == sgst
          ? _value.sgst
          : sgst // ignore: cast_nullable_to_non_nullable
              as double,
      igst: null == igst
          ? _value.igst
          : igst // ignore: cast_nullable_to_non_nullable
              as double,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
      gstPercentage: null == gstPercentage
          ? _value.gstPercentage
          : gstPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      taxLabel: null == taxLabel
          ? _value.taxLabel
          : taxLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxModelImplCopyWith<$Res>
    implements $TaxModelCopyWith<$Res> {
  factory _$$TaxModelImplCopyWith(
          _$TaxModelImpl value, $Res Function(_$TaxModelImpl) then) =
      __$$TaxModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double cgst,
      double sgst,
      double igst,
      double totalTax,
      double gstPercentage,
      String taxLabel});
}

/// @nodoc
class __$$TaxModelImplCopyWithImpl<$Res>
    extends _$TaxModelCopyWithImpl<$Res, _$TaxModelImpl>
    implements _$$TaxModelImplCopyWith<$Res> {
  __$$TaxModelImplCopyWithImpl(
      _$TaxModelImpl _value, $Res Function(_$TaxModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaxModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cgst = null,
    Object? sgst = null,
    Object? igst = null,
    Object? totalTax = null,
    Object? gstPercentage = null,
    Object? taxLabel = null,
  }) {
    return _then(_$TaxModelImpl(
      cgst: null == cgst
          ? _value.cgst
          : cgst // ignore: cast_nullable_to_non_nullable
              as double,
      sgst: null == sgst
          ? _value.sgst
          : sgst // ignore: cast_nullable_to_non_nullable
              as double,
      igst: null == igst
          ? _value.igst
          : igst // ignore: cast_nullable_to_non_nullable
              as double,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
      gstPercentage: null == gstPercentage
          ? _value.gstPercentage
          : gstPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      taxLabel: null == taxLabel
          ? _value.taxLabel
          : taxLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxModelImpl implements _TaxModel {
  const _$TaxModelImpl(
      {this.cgst = 0.0,
      this.sgst = 0.0,
      this.igst = 0.0,
      this.totalTax = 0.0,
      this.gstPercentage = 0.0,
      this.taxLabel = 'GST_INVOICE_READY'});

  factory _$TaxModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxModelImplFromJson(json);

  @override
  @JsonKey()
  final double cgst;
  @override
  @JsonKey()
  final double sgst;
  @override
  @JsonKey()
  final double igst;
  @override
  @JsonKey()
  final double totalTax;
  @override
  @JsonKey()
  final double gstPercentage;
  @override
  @JsonKey()
  final String taxLabel;

  @override
  String toString() {
    return 'TaxModel(cgst: $cgst, sgst: $sgst, igst: $igst, totalTax: $totalTax, gstPercentage: $gstPercentage, taxLabel: $taxLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxModelImpl &&
            (identical(other.cgst, cgst) || other.cgst == cgst) &&
            (identical(other.sgst, sgst) || other.sgst == sgst) &&
            (identical(other.igst, igst) || other.igst == igst) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.gstPercentage, gstPercentage) ||
                other.gstPercentage == gstPercentage) &&
            (identical(other.taxLabel, taxLabel) ||
                other.taxLabel == taxLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, cgst, sgst, igst, totalTax, gstPercentage, taxLabel);

  /// Create a copy of TaxModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxModelImplCopyWith<_$TaxModelImpl> get copyWith =>
      __$$TaxModelImplCopyWithImpl<_$TaxModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxModelImplToJson(
      this,
    );
  }
}

abstract class _TaxModel implements TaxModel {
  const factory _TaxModel(
      {final double cgst,
      final double sgst,
      final double igst,
      final double totalTax,
      final double gstPercentage,
      final String taxLabel}) = _$TaxModelImpl;

  factory _TaxModel.fromJson(Map<String, dynamic> json) =
      _$TaxModelImpl.fromJson;

  @override
  double get cgst;
  @override
  double get sgst;
  @override
  double get igst;
  @override
  double get totalTax;
  @override
  double get gstPercentage;
  @override
  String get taxLabel;

  /// Create a copy of TaxModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxModelImplCopyWith<_$TaxModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
