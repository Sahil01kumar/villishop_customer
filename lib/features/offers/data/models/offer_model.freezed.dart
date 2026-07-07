// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  OfferType get type => throw _privateConstructorUsedError;
  double get value =>
      throw _privateConstructorUsedError; // discount value or percentage
  String get imageUrl => throw _privateConstructorUsedError;
  String? get shopId => throw _privateConstructorUsedError;
  String? get brandId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  bool get isFlashSale => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  double get aiRelevanceScore => throw _privateConstructorUsedError;
  List<String> get termsAndConditions => throw _privateConstructorUsedError;

  /// Serializes this OfferModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      OfferType type,
      double value,
      String imageUrl,
      String? shopId,
      String? brandId,
      String? categoryId,
      DateTime? expiryDate,
      bool isFlashSale,
      bool isTrending,
      double aiRelevanceScore,
      List<String> termsAndConditions});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? value = null,
    Object? imageUrl = null,
    Object? shopId = freezed,
    Object? brandId = freezed,
    Object? categoryId = freezed,
    Object? expiryDate = freezed,
    Object? isFlashSale = null,
    Object? isTrending = null,
    Object? aiRelevanceScore = null,
    Object? termsAndConditions = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OfferType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFlashSale: null == isFlashSale
          ? _value.isFlashSale
          : isFlashSale // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      aiRelevanceScore: null == aiRelevanceScore
          ? _value.aiRelevanceScore
          : aiRelevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      termsAndConditions: null == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferModelImplCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$OfferModelImplCopyWith(
          _$OfferModelImpl value, $Res Function(_$OfferModelImpl) then) =
      __$$OfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      OfferType type,
      double value,
      String imageUrl,
      String? shopId,
      String? brandId,
      String? categoryId,
      DateTime? expiryDate,
      bool isFlashSale,
      bool isTrending,
      double aiRelevanceScore,
      List<String> termsAndConditions});
}

/// @nodoc
class __$$OfferModelImplCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$OfferModelImpl>
    implements _$$OfferModelImplCopyWith<$Res> {
  __$$OfferModelImplCopyWithImpl(
      _$OfferModelImpl _value, $Res Function(_$OfferModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? value = null,
    Object? imageUrl = null,
    Object? shopId = freezed,
    Object? brandId = freezed,
    Object? categoryId = freezed,
    Object? expiryDate = freezed,
    Object? isFlashSale = null,
    Object? isTrending = null,
    Object? aiRelevanceScore = null,
    Object? termsAndConditions = null,
  }) {
    return _then(_$OfferModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OfferType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFlashSale: null == isFlashSale
          ? _value.isFlashSale
          : isFlashSale // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      aiRelevanceScore: null == aiRelevanceScore
          ? _value.aiRelevanceScore
          : aiRelevanceScore // ignore: cast_nullable_to_non_nullable
              as double,
      termsAndConditions: null == termsAndConditions
          ? _value._termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferModelImpl implements _OfferModel {
  const _$OfferModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.value,
      required this.imageUrl,
      this.shopId,
      this.brandId,
      this.categoryId,
      this.expiryDate,
      this.isFlashSale = false,
      this.isTrending = false,
      this.aiRelevanceScore = 0.0,
      final List<String> termsAndConditions = const []})
      : _termsAndConditions = termsAndConditions;

  factory _$OfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final OfferType type;
  @override
  final double value;
// discount value or percentage
  @override
  final String imageUrl;
  @override
  final String? shopId;
  @override
  final String? brandId;
  @override
  final String? categoryId;
  @override
  final DateTime? expiryDate;
  @override
  @JsonKey()
  final bool isFlashSale;
  @override
  @JsonKey()
  final bool isTrending;
  @override
  @JsonKey()
  final double aiRelevanceScore;
  final List<String> _termsAndConditions;
  @override
  @JsonKey()
  List<String> get termsAndConditions {
    if (_termsAndConditions is EqualUnmodifiableListView)
      return _termsAndConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_termsAndConditions);
  }

  @override
  String toString() {
    return 'OfferModel(id: $id, title: $title, description: $description, type: $type, value: $value, imageUrl: $imageUrl, shopId: $shopId, brandId: $brandId, categoryId: $categoryId, expiryDate: $expiryDate, isFlashSale: $isFlashSale, isTrending: $isTrending, aiRelevanceScore: $aiRelevanceScore, termsAndConditions: $termsAndConditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.isFlashSale, isFlashSale) ||
                other.isFlashSale == isFlashSale) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.aiRelevanceScore, aiRelevanceScore) ||
                other.aiRelevanceScore == aiRelevanceScore) &&
            const DeepCollectionEquality()
                .equals(other._termsAndConditions, _termsAndConditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      value,
      imageUrl,
      shopId,
      brandId,
      categoryId,
      expiryDate,
      isFlashSale,
      isTrending,
      aiRelevanceScore,
      const DeepCollectionEquality().hash(_termsAndConditions));

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      __$$OfferModelImplCopyWithImpl<_$OfferModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferModelImplToJson(
      this,
    );
  }
}

abstract class _OfferModel implements OfferModel {
  const factory _OfferModel(
      {required final String id,
      required final String title,
      required final String description,
      required final OfferType type,
      required final double value,
      required final String imageUrl,
      final String? shopId,
      final String? brandId,
      final String? categoryId,
      final DateTime? expiryDate,
      final bool isFlashSale,
      final bool isTrending,
      final double aiRelevanceScore,
      final List<String> termsAndConditions}) = _$OfferModelImpl;

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$OfferModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  OfferType get type;
  @override
  double get value; // discount value or percentage
  @override
  String get imageUrl;
  @override
  String? get shopId;
  @override
  String? get brandId;
  @override
  String? get categoryId;
  @override
  DateTime? get expiryDate;
  @override
  bool get isFlashSale;
  @override
  bool get isTrending;
  @override
  double get aiRelevanceScore;
  @override
  List<String> get termsAndConditions;

  /// Create a copy of OfferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
