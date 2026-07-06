// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DealModel _$DealModelFromJson(Map<String, dynamic> json) {
  return _DealModel.fromJson(json);
}

/// @nodoc
mixin _$DealModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

  /// Serializes this DealModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealModelCopyWith<DealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealModelCopyWith<$Res> {
  factory $DealModelCopyWith(DealModel value, $Res Function(DealModel) then) =
      _$DealModelCopyWithImpl<$Res, DealModel>;
  @useResult
  $Res call({String id, String title, ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$DealModelCopyWithImpl<$Res, $Val extends DealModel>
    implements $DealModelCopyWith<$Res> {
  _$DealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  /// Create a copy of DealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealModelImplCopyWith<$Res>
    implements $DealModelCopyWith<$Res> {
  factory _$$DealModelImplCopyWith(
          _$DealModelImpl value, $Res Function(_$DealModelImpl) then) =
      __$$DealModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$DealModelImplCopyWithImpl<$Res>
    extends _$DealModelCopyWithImpl<$Res, _$DealModelImpl>
    implements _$$DealModelImplCopyWith<$Res> {
  __$$DealModelImplCopyWithImpl(
      _$DealModelImpl _value, $Res Function(_$DealModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? product = null,
  }) {
    return _then(_$DealModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealModelImpl implements _DealModel {
  const _$DealModelImpl(
      {required this.id, required this.title, required this.product});

  factory _$DealModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final ProductModel product;

  @override
  String toString() {
    return 'DealModel(id: $id, title: $title, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, product);

  /// Create a copy of DealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealModelImplCopyWith<_$DealModelImpl> get copyWith =>
      __$$DealModelImplCopyWithImpl<_$DealModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealModelImplToJson(
      this,
    );
  }
}

abstract class _DealModel implements DealModel {
  const factory _DealModel(
      {required final String id,
      required final String title,
      required final ProductModel product}) = _$DealModelImpl;

  factory _DealModel.fromJson(Map<String, dynamic> json) =
      _$DealModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  ProductModel get product;

  /// Create a copy of DealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealModelImplCopyWith<_$DealModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
