// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  CategoryLevel get level => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int get displayOrder => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  bool get isSeasonal => throw _privateConstructorUsedError;
  bool get isFestival => throw _privateConstructorUsedError;
  bool get isRecommended => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError; // Taxonomy Ready
  int get productCount => throw _privateConstructorUsedError;
  String? get departmentId =>
      throw _privateConstructorUsedError; // AI Ready Architecture
  double get aiRecommendationScore => throw _privateConstructorUsedError;
  double get aiTrendingScore => throw _privateConstructorUsedError;
  double get aiSeasonalRanking => throw _privateConstructorUsedError;
  List<CategoryModel> get subCategories => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? parentId,
      CategoryLevel level,
      String image,
      String? icon,
      String? banner,
      String? slug,
      int displayOrder,
      int priority,
      bool isVisible,
      bool isActive,
      bool isTrending,
      bool isFeatured,
      bool isSeasonal,
      bool isFestival,
      bool isRecommended,
      bool isPremium,
      int productCount,
      String? departmentId,
      double aiRecommendationScore,
      double aiTrendingScore,
      double aiSeasonalRanking,
      List<CategoryModel> subCategories,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentId = freezed,
    Object? level = null,
    Object? image = null,
    Object? icon = freezed,
    Object? banner = freezed,
    Object? slug = freezed,
    Object? displayOrder = null,
    Object? priority = null,
    Object? isVisible = null,
    Object? isActive = null,
    Object? isTrending = null,
    Object? isFeatured = null,
    Object? isSeasonal = null,
    Object? isFestival = null,
    Object? isRecommended = null,
    Object? isPremium = null,
    Object? productCount = null,
    Object? departmentId = freezed,
    Object? aiRecommendationScore = null,
    Object? aiTrendingScore = null,
    Object? aiSeasonalRanking = null,
    Object? subCategories = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as CategoryLevel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isSeasonal: null == isSeasonal
          ? _value.isSeasonal
          : isSeasonal // ignore: cast_nullable_to_non_nullable
              as bool,
      isFestival: null == isFestival
          ? _value.isFestival
          : isFestival // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommended: null == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      aiRecommendationScore: null == aiRecommendationScore
          ? _value.aiRecommendationScore
          : aiRecommendationScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiTrendingScore: null == aiTrendingScore
          ? _value.aiTrendingScore
          : aiTrendingScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiSeasonalRanking: null == aiSeasonalRanking
          ? _value.aiSeasonalRanking
          : aiSeasonalRanking // ignore: cast_nullable_to_non_nullable
              as double,
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? parentId,
      CategoryLevel level,
      String image,
      String? icon,
      String? banner,
      String? slug,
      int displayOrder,
      int priority,
      bool isVisible,
      bool isActive,
      bool isTrending,
      bool isFeatured,
      bool isSeasonal,
      bool isFestival,
      bool isRecommended,
      bool isPremium,
      int productCount,
      String? departmentId,
      double aiRecommendationScore,
      double aiTrendingScore,
      double aiSeasonalRanking,
      List<CategoryModel> subCategories,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentId = freezed,
    Object? level = null,
    Object? image = null,
    Object? icon = freezed,
    Object? banner = freezed,
    Object? slug = freezed,
    Object? displayOrder = null,
    Object? priority = null,
    Object? isVisible = null,
    Object? isActive = null,
    Object? isTrending = null,
    Object? isFeatured = null,
    Object? isSeasonal = null,
    Object? isFestival = null,
    Object? isRecommended = null,
    Object? isPremium = null,
    Object? productCount = null,
    Object? departmentId = freezed,
    Object? aiRecommendationScore = null,
    Object? aiTrendingScore = null,
    Object? aiSeasonalRanking = null,
    Object? subCategories = null,
    Object? metadata = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as CategoryLevel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isSeasonal: null == isSeasonal
          ? _value.isSeasonal
          : isSeasonal // ignore: cast_nullable_to_non_nullable
              as bool,
      isFestival: null == isFestival
          ? _value.isFestival
          : isFestival // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommended: null == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      aiRecommendationScore: null == aiRecommendationScore
          ? _value.aiRecommendationScore
          : aiRecommendationScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiTrendingScore: null == aiTrendingScore
          ? _value.aiTrendingScore
          : aiTrendingScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiSeasonalRanking: null == aiSeasonalRanking
          ? _value.aiSeasonalRanking
          : aiSeasonalRanking // ignore: cast_nullable_to_non_nullable
              as double,
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {required this.id,
      required this.name,
      this.parentId,
      this.level = CategoryLevel.category,
      required this.image,
      this.icon,
      this.banner,
      this.slug,
      this.displayOrder = 0,
      this.priority = 0,
      this.isVisible = true,
      this.isActive = true,
      this.isTrending = false,
      this.isFeatured = false,
      this.isSeasonal = false,
      this.isFestival = false,
      this.isRecommended = false,
      this.isPremium = false,
      this.productCount = 0,
      this.departmentId,
      this.aiRecommendationScore = 0.0,
      this.aiTrendingScore = 0.0,
      this.aiSeasonalRanking = 0.0,
      final List<CategoryModel> subCategories = const [],
      final Map<String, dynamic>? metadata})
      : _subCategories = subCategories,
        _metadata = metadata;

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? parentId;
  @override
  @JsonKey()
  final CategoryLevel level;
  @override
  final String image;
  @override
  final String? icon;
  @override
  final String? banner;
  @override
  final String? slug;
  @override
  @JsonKey()
  final int displayOrder;
  @override
  @JsonKey()
  final int priority;
  @override
  @JsonKey()
  final bool isVisible;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isTrending;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final bool isSeasonal;
  @override
  @JsonKey()
  final bool isFestival;
  @override
  @JsonKey()
  final bool isRecommended;
  @override
  @JsonKey()
  final bool isPremium;
// Taxonomy Ready
  @override
  @JsonKey()
  final int productCount;
  @override
  final String? departmentId;
// AI Ready Architecture
  @override
  @JsonKey()
  final double aiRecommendationScore;
  @override
  @JsonKey()
  final double aiTrendingScore;
  @override
  @JsonKey()
  final double aiSeasonalRanking;
  final List<CategoryModel> _subCategories;
  @override
  @JsonKey()
  List<CategoryModel> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, parentId: $parentId, level: $level, image: $image, icon: $icon, banner: $banner, slug: $slug, displayOrder: $displayOrder, priority: $priority, isVisible: $isVisible, isActive: $isActive, isTrending: $isTrending, isFeatured: $isFeatured, isSeasonal: $isSeasonal, isFestival: $isFestival, isRecommended: $isRecommended, isPremium: $isPremium, productCount: $productCount, departmentId: $departmentId, aiRecommendationScore: $aiRecommendationScore, aiTrendingScore: $aiTrendingScore, aiSeasonalRanking: $aiSeasonalRanking, subCategories: $subCategories, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isSeasonal, isSeasonal) ||
                other.isSeasonal == isSeasonal) &&
            (identical(other.isFestival, isFestival) ||
                other.isFestival == isFestival) &&
            (identical(other.isRecommended, isRecommended) ||
                other.isRecommended == isRecommended) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.aiRecommendationScore, aiRecommendationScore) ||
                other.aiRecommendationScore == aiRecommendationScore) &&
            (identical(other.aiTrendingScore, aiTrendingScore) ||
                other.aiTrendingScore == aiTrendingScore) &&
            (identical(other.aiSeasonalRanking, aiSeasonalRanking) ||
                other.aiSeasonalRanking == aiSeasonalRanking) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        parentId,
        level,
        image,
        icon,
        banner,
        slug,
        displayOrder,
        priority,
        isVisible,
        isActive,
        isTrending,
        isFeatured,
        isSeasonal,
        isFestival,
        isRecommended,
        isPremium,
        productCount,
        departmentId,
        aiRecommendationScore,
        aiTrendingScore,
        aiSeasonalRanking,
        const DeepCollectionEquality().hash(_subCategories),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {required final String id,
      required final String name,
      final String? parentId,
      final CategoryLevel level,
      required final String image,
      final String? icon,
      final String? banner,
      final String? slug,
      final int displayOrder,
      final int priority,
      final bool isVisible,
      final bool isActive,
      final bool isTrending,
      final bool isFeatured,
      final bool isSeasonal,
      final bool isFestival,
      final bool isRecommended,
      final bool isPremium,
      final int productCount,
      final String? departmentId,
      final double aiRecommendationScore,
      final double aiTrendingScore,
      final double aiSeasonalRanking,
      final List<CategoryModel> subCategories,
      final Map<String, dynamic>? metadata}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get parentId;
  @override
  CategoryLevel get level;
  @override
  String get image;
  @override
  String? get icon;
  @override
  String? get banner;
  @override
  String? get slug;
  @override
  int get displayOrder;
  @override
  int get priority;
  @override
  bool get isVisible;
  @override
  bool get isActive;
  @override
  bool get isTrending;
  @override
  bool get isFeatured;
  @override
  bool get isSeasonal;
  @override
  bool get isFestival;
  @override
  bool get isRecommended;
  @override
  bool get isPremium; // Taxonomy Ready
  @override
  int get productCount;
  @override
  String? get departmentId; // AI Ready Architecture
  @override
  double get aiRecommendationScore;
  @override
  double get aiTrendingScore;
  @override
  double get aiSeasonalRanking;
  @override
  List<CategoryModel> get subCategories;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
