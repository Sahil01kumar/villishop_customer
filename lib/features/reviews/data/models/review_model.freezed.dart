// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  String? get userProfilePhoto => throw _privateConstructorUsedError;
  bool get isVerifiedPurchase => throw _privateConstructorUsedError;
  DateTime get reviewDate => throw _privateConstructorUsedError;
  String? get productVariant => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ReviewImageModel> get images => throw _privateConstructorUsedError;
  List<String> get videoUrls => throw _privateConstructorUsedError;
  int get helpfulCount => throw _privateConstructorUsedError;
  bool get isLikedByMe => throw _privateConstructorUsedError;
  List<ReviewReplyModel> get replies =>
      throw _privateConstructorUsedError; // AI Ready Fields
  String? get aiReviewSummary => throw _privateConstructorUsedError;
  List<String> get positiveKeywords => throw _privateConstructorUsedError;
  List<String> get negativeKeywords => throw _privateConstructorUsedError;
  double get sentimentScore => throw _privateConstructorUsedError;
  bool get isFakeSuspected => throw _privateConstructorUsedError;
  bool get isToxic => throw _privateConstructorUsedError;
  bool get isSpam => throw _privateConstructorUsedError;

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
          ReviewModel value, $Res Function(ReviewModel) then) =
      _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String? productId,
      String? userProfilePhoto,
      bool isVerifiedPurchase,
      DateTime reviewDate,
      String? productVariant,
      double rating,
      String? title,
      String description,
      List<ReviewImageModel> images,
      List<String> videoUrls,
      int helpfulCount,
      bool isLikedByMe,
      List<ReviewReplyModel> replies,
      String? aiReviewSummary,
      List<String> positiveKeywords,
      List<String> negativeKeywords,
      double sentimentScore,
      bool isFakeSuspected,
      bool isToxic,
      bool isSpam});
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? productId = freezed,
    Object? userProfilePhoto = freezed,
    Object? isVerifiedPurchase = null,
    Object? reviewDate = null,
    Object? productVariant = freezed,
    Object? rating = null,
    Object? title = freezed,
    Object? description = null,
    Object? images = null,
    Object? videoUrls = null,
    Object? helpfulCount = null,
    Object? isLikedByMe = null,
    Object? replies = null,
    Object? aiReviewSummary = freezed,
    Object? positiveKeywords = null,
    Object? negativeKeywords = null,
    Object? sentimentScore = null,
    Object? isFakeSuspected = null,
    Object? isToxic = null,
    Object? isSpam = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfilePhoto: freezed == userProfilePhoto
          ? _value.userProfilePhoto
          : userProfilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerifiedPurchase: null == isVerifiedPurchase
          ? _value.isVerifiedPurchase
          : isVerifiedPurchase // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productVariant: freezed == productVariant
          ? _value.productVariant
          : productVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ReviewImageModel>,
      videoUrls: null == videoUrls
          ? _value.videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      helpfulCount: null == helpfulCount
          ? _value.helpfulCount
          : helpfulCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikedByMe: null == isLikedByMe
          ? _value.isLikedByMe
          : isLikedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReviewReplyModel>,
      aiReviewSummary: freezed == aiReviewSummary
          ? _value.aiReviewSummary
          : aiReviewSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      positiveKeywords: null == positiveKeywords
          ? _value.positiveKeywords
          : positiveKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      negativeKeywords: null == negativeKeywords
          ? _value.negativeKeywords
          : negativeKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentScore: null == sentimentScore
          ? _value.sentimentScore
          : sentimentScore // ignore: cast_nullable_to_non_nullable
              as double,
      isFakeSuspected: null == isFakeSuspected
          ? _value.isFakeSuspected
          : isFakeSuspected // ignore: cast_nullable_to_non_nullable
              as bool,
      isToxic: null == isToxic
          ? _value.isToxic
          : isToxic // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpam: null == isSpam
          ? _value.isSpam
          : isSpam // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewModelImplCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$ReviewModelImplCopyWith(
          _$ReviewModelImpl value, $Res Function(_$ReviewModelImpl) then) =
      __$$ReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String? productId,
      String? userProfilePhoto,
      bool isVerifiedPurchase,
      DateTime reviewDate,
      String? productVariant,
      double rating,
      String? title,
      String description,
      List<ReviewImageModel> images,
      List<String> videoUrls,
      int helpfulCount,
      bool isLikedByMe,
      List<ReviewReplyModel> replies,
      String? aiReviewSummary,
      List<String> positiveKeywords,
      List<String> negativeKeywords,
      double sentimentScore,
      bool isFakeSuspected,
      bool isToxic,
      bool isSpam});
}

/// @nodoc
class __$$ReviewModelImplCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$ReviewModelImpl>
    implements _$$ReviewModelImplCopyWith<$Res> {
  __$$ReviewModelImplCopyWithImpl(
      _$ReviewModelImpl _value, $Res Function(_$ReviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? productId = freezed,
    Object? userProfilePhoto = freezed,
    Object? isVerifiedPurchase = null,
    Object? reviewDate = null,
    Object? productVariant = freezed,
    Object? rating = null,
    Object? title = freezed,
    Object? description = null,
    Object? images = null,
    Object? videoUrls = null,
    Object? helpfulCount = null,
    Object? isLikedByMe = null,
    Object? replies = null,
    Object? aiReviewSummary = freezed,
    Object? positiveKeywords = null,
    Object? negativeKeywords = null,
    Object? sentimentScore = null,
    Object? isFakeSuspected = null,
    Object? isToxic = null,
    Object? isSpam = null,
  }) {
    return _then(_$ReviewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfilePhoto: freezed == userProfilePhoto
          ? _value.userProfilePhoto
          : userProfilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerifiedPurchase: null == isVerifiedPurchase
          ? _value.isVerifiedPurchase
          : isVerifiedPurchase // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productVariant: freezed == productVariant
          ? _value.productVariant
          : productVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ReviewImageModel>,
      videoUrls: null == videoUrls
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      helpfulCount: null == helpfulCount
          ? _value.helpfulCount
          : helpfulCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikedByMe: null == isLikedByMe
          ? _value.isLikedByMe
          : isLikedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReviewReplyModel>,
      aiReviewSummary: freezed == aiReviewSummary
          ? _value.aiReviewSummary
          : aiReviewSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      positiveKeywords: null == positiveKeywords
          ? _value._positiveKeywords
          : positiveKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      negativeKeywords: null == negativeKeywords
          ? _value._negativeKeywords
          : negativeKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentimentScore: null == sentimentScore
          ? _value.sentimentScore
          : sentimentScore // ignore: cast_nullable_to_non_nullable
              as double,
      isFakeSuspected: null == isFakeSuspected
          ? _value.isFakeSuspected
          : isFakeSuspected // ignore: cast_nullable_to_non_nullable
              as bool,
      isToxic: null == isToxic
          ? _value.isToxic
          : isToxic // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpam: null == isSpam
          ? _value.isSpam
          : isSpam // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewModelImpl implements _ReviewModel {
  const _$ReviewModelImpl(
      {required this.id,
      required this.userId,
      required this.userName,
      this.productId,
      this.userProfilePhoto,
      this.isVerifiedPurchase = true,
      required this.reviewDate,
      this.productVariant,
      required this.rating,
      this.title,
      required this.description,
      final List<ReviewImageModel> images = const [],
      final List<String> videoUrls = const [],
      this.helpfulCount = 0,
      this.isLikedByMe = false,
      final List<ReviewReplyModel> replies = const [],
      this.aiReviewSummary,
      final List<String> positiveKeywords = const [],
      final List<String> negativeKeywords = const [],
      this.sentimentScore = 0.0,
      this.isFakeSuspected = false,
      this.isToxic = false,
      this.isSpam = false})
      : _images = images,
        _videoUrls = videoUrls,
        _replies = replies,
        _positiveKeywords = positiveKeywords,
        _negativeKeywords = negativeKeywords;

  factory _$ReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? productId;
  @override
  final String? userProfilePhoto;
  @override
  @JsonKey()
  final bool isVerifiedPurchase;
  @override
  final DateTime reviewDate;
  @override
  final String? productVariant;
  @override
  final double rating;
  @override
  final String? title;
  @override
  final String description;
  final List<ReviewImageModel> _images;
  @override
  @JsonKey()
  List<ReviewImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _videoUrls;
  @override
  @JsonKey()
  List<String> get videoUrls {
    if (_videoUrls is EqualUnmodifiableListView) return _videoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoUrls);
  }

  @override
  @JsonKey()
  final int helpfulCount;
  @override
  @JsonKey()
  final bool isLikedByMe;
  final List<ReviewReplyModel> _replies;
  @override
  @JsonKey()
  List<ReviewReplyModel> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

// AI Ready Fields
  @override
  final String? aiReviewSummary;
  final List<String> _positiveKeywords;
  @override
  @JsonKey()
  List<String> get positiveKeywords {
    if (_positiveKeywords is EqualUnmodifiableListView)
      return _positiveKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positiveKeywords);
  }

  final List<String> _negativeKeywords;
  @override
  @JsonKey()
  List<String> get negativeKeywords {
    if (_negativeKeywords is EqualUnmodifiableListView)
      return _negativeKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_negativeKeywords);
  }

  @override
  @JsonKey()
  final double sentimentScore;
  @override
  @JsonKey()
  final bool isFakeSuspected;
  @override
  @JsonKey()
  final bool isToxic;
  @override
  @JsonKey()
  final bool isSpam;

  @override
  String toString() {
    return 'ReviewModel(id: $id, userId: $userId, userName: $userName, productId: $productId, userProfilePhoto: $userProfilePhoto, isVerifiedPurchase: $isVerifiedPurchase, reviewDate: $reviewDate, productVariant: $productVariant, rating: $rating, title: $title, description: $description, images: $images, videoUrls: $videoUrls, helpfulCount: $helpfulCount, isLikedByMe: $isLikedByMe, replies: $replies, aiReviewSummary: $aiReviewSummary, positiveKeywords: $positiveKeywords, negativeKeywords: $negativeKeywords, sentimentScore: $sentimentScore, isFakeSuspected: $isFakeSuspected, isToxic: $isToxic, isSpam: $isSpam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userProfilePhoto, userProfilePhoto) ||
                other.userProfilePhoto == userProfilePhoto) &&
            (identical(other.isVerifiedPurchase, isVerifiedPurchase) ||
                other.isVerifiedPurchase == isVerifiedPurchase) &&
            (identical(other.reviewDate, reviewDate) ||
                other.reviewDate == reviewDate) &&
            (identical(other.productVariant, productVariant) ||
                other.productVariant == productVariant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls) &&
            (identical(other.helpfulCount, helpfulCount) ||
                other.helpfulCount == helpfulCount) &&
            (identical(other.isLikedByMe, isLikedByMe) ||
                other.isLikedByMe == isLikedByMe) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.aiReviewSummary, aiReviewSummary) ||
                other.aiReviewSummary == aiReviewSummary) &&
            const DeepCollectionEquality()
                .equals(other._positiveKeywords, _positiveKeywords) &&
            const DeepCollectionEquality()
                .equals(other._negativeKeywords, _negativeKeywords) &&
            (identical(other.sentimentScore, sentimentScore) ||
                other.sentimentScore == sentimentScore) &&
            (identical(other.isFakeSuspected, isFakeSuspected) ||
                other.isFakeSuspected == isFakeSuspected) &&
            (identical(other.isToxic, isToxic) || other.isToxic == isToxic) &&
            (identical(other.isSpam, isSpam) || other.isSpam == isSpam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        userName,
        productId,
        userProfilePhoto,
        isVerifiedPurchase,
        reviewDate,
        productVariant,
        rating,
        title,
        description,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_videoUrls),
        helpfulCount,
        isLikedByMe,
        const DeepCollectionEquality().hash(_replies),
        aiReviewSummary,
        const DeepCollectionEquality().hash(_positiveKeywords),
        const DeepCollectionEquality().hash(_negativeKeywords),
        sentimentScore,
        isFakeSuspected,
        isToxic,
        isSpam
      ]);

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      __$$ReviewModelImplCopyWithImpl<_$ReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewModel implements ReviewModel {
  const factory _ReviewModel(
      {required final String id,
      required final String userId,
      required final String userName,
      final String? productId,
      final String? userProfilePhoto,
      final bool isVerifiedPurchase,
      required final DateTime reviewDate,
      final String? productVariant,
      required final double rating,
      final String? title,
      required final String description,
      final List<ReviewImageModel> images,
      final List<String> videoUrls,
      final int helpfulCount,
      final bool isLikedByMe,
      final List<ReviewReplyModel> replies,
      final String? aiReviewSummary,
      final List<String> positiveKeywords,
      final List<String> negativeKeywords,
      final double sentimentScore,
      final bool isFakeSuspected,
      final bool isToxic,
      final bool isSpam}) = _$ReviewModelImpl;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$ReviewModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get productId;
  @override
  String? get userProfilePhoto;
  @override
  bool get isVerifiedPurchase;
  @override
  DateTime get reviewDate;
  @override
  String? get productVariant;
  @override
  double get rating;
  @override
  String? get title;
  @override
  String get description;
  @override
  List<ReviewImageModel> get images;
  @override
  List<String> get videoUrls;
  @override
  int get helpfulCount;
  @override
  bool get isLikedByMe;
  @override
  List<ReviewReplyModel> get replies; // AI Ready Fields
  @override
  String? get aiReviewSummary;
  @override
  List<String> get positiveKeywords;
  @override
  List<String> get negativeKeywords;
  @override
  double get sentimentScore;
  @override
  bool get isFakeSuspected;
  @override
  bool get isToxic;
  @override
  bool get isSpam;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewModelImplCopyWith<_$ReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewReplyModel _$ReviewReplyModelFromJson(Map<String, dynamic> json) {
  return _ReviewReplyModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewReplyModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get isAdminReply => throw _privateConstructorUsedError;

  /// Serializes this ReviewReplyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewReplyModelCopyWith<ReviewReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewReplyModelCopyWith<$Res> {
  factory $ReviewReplyModelCopyWith(
          ReviewReplyModel value, $Res Function(ReviewReplyModel) then) =
      _$ReviewReplyModelCopyWithImpl<$Res, ReviewReplyModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String message,
      DateTime date,
      bool isAdminReply});
}

/// @nodoc
class _$ReviewReplyModelCopyWithImpl<$Res, $Val extends ReviewReplyModel>
    implements $ReviewReplyModelCopyWith<$Res> {
  _$ReviewReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? message = null,
    Object? date = null,
    Object? isAdminReply = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAdminReply: null == isAdminReply
          ? _value.isAdminReply
          : isAdminReply // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewReplyModelImplCopyWith<$Res>
    implements $ReviewReplyModelCopyWith<$Res> {
  factory _$$ReviewReplyModelImplCopyWith(_$ReviewReplyModelImpl value,
          $Res Function(_$ReviewReplyModelImpl) then) =
      __$$ReviewReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String message,
      DateTime date,
      bool isAdminReply});
}

/// @nodoc
class __$$ReviewReplyModelImplCopyWithImpl<$Res>
    extends _$ReviewReplyModelCopyWithImpl<$Res, _$ReviewReplyModelImpl>
    implements _$$ReviewReplyModelImplCopyWith<$Res> {
  __$$ReviewReplyModelImplCopyWithImpl(_$ReviewReplyModelImpl _value,
      $Res Function(_$ReviewReplyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? message = null,
    Object? date = null,
    Object? isAdminReply = null,
  }) {
    return _then(_$ReviewReplyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAdminReply: null == isAdminReply
          ? _value.isAdminReply
          : isAdminReply // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewReplyModelImpl implements _ReviewReplyModel {
  const _$ReviewReplyModelImpl(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.message,
      required this.date,
      this.isAdminReply = false});

  factory _$ReviewReplyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewReplyModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String message;
  @override
  final DateTime date;
  @override
  @JsonKey()
  final bool isAdminReply;

  @override
  String toString() {
    return 'ReviewReplyModel(id: $id, userId: $userId, userName: $userName, message: $message, date: $date, isAdminReply: $isAdminReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewReplyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isAdminReply, isAdminReply) ||
                other.isAdminReply == isAdminReply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, userName, message, date, isAdminReply);

  /// Create a copy of ReviewReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewReplyModelImplCopyWith<_$ReviewReplyModelImpl> get copyWith =>
      __$$ReviewReplyModelImplCopyWithImpl<_$ReviewReplyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewReplyModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewReplyModel implements ReviewReplyModel {
  const factory _ReviewReplyModel(
      {required final String id,
      required final String userId,
      required final String userName,
      required final String message,
      required final DateTime date,
      final bool isAdminReply}) = _$ReviewReplyModelImpl;

  factory _ReviewReplyModel.fromJson(Map<String, dynamic> json) =
      _$ReviewReplyModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get message;
  @override
  DateTime get date;
  @override
  bool get isAdminReply;

  /// Create a copy of ReviewReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewReplyModelImplCopyWith<_$ReviewReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewAnalyticsModel _$ReviewAnalyticsModelFromJson(Map<String, dynamic> json) {
  return _ReviewAnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewAnalyticsModel {
  int get totalReviews => throw _privateConstructorUsedError;
  double get positivePercentage => throw _privateConstructorUsedError;
  double get negativePercentage => throw _privateConstructorUsedError;
  List<String> get mostMentionedPros => throw _privateConstructorUsedError;
  List<String> get mostMentionedCons => throw _privateConstructorUsedError;
  Map<String, double> get averageMonthlyRating =>
      throw _privateConstructorUsedError;

  /// Serializes this ReviewAnalyticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewAnalyticsModelCopyWith<ReviewAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAnalyticsModelCopyWith<$Res> {
  factory $ReviewAnalyticsModelCopyWith(ReviewAnalyticsModel value,
          $Res Function(ReviewAnalyticsModel) then) =
      _$ReviewAnalyticsModelCopyWithImpl<$Res, ReviewAnalyticsModel>;
  @useResult
  $Res call(
      {int totalReviews,
      double positivePercentage,
      double negativePercentage,
      List<String> mostMentionedPros,
      List<String> mostMentionedCons,
      Map<String, double> averageMonthlyRating});
}

/// @nodoc
class _$ReviewAnalyticsModelCopyWithImpl<$Res,
        $Val extends ReviewAnalyticsModel>
    implements $ReviewAnalyticsModelCopyWith<$Res> {
  _$ReviewAnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalReviews = null,
    Object? positivePercentage = null,
    Object? negativePercentage = null,
    Object? mostMentionedPros = null,
    Object? mostMentionedCons = null,
    Object? averageMonthlyRating = null,
  }) {
    return _then(_value.copyWith(
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      positivePercentage: null == positivePercentage
          ? _value.positivePercentage
          : positivePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      negativePercentage: null == negativePercentage
          ? _value.negativePercentage
          : negativePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      mostMentionedPros: null == mostMentionedPros
          ? _value.mostMentionedPros
          : mostMentionedPros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mostMentionedCons: null == mostMentionedCons
          ? _value.mostMentionedCons
          : mostMentionedCons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageMonthlyRating: null == averageMonthlyRating
          ? _value.averageMonthlyRating
          : averageMonthlyRating // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewAnalyticsModelImplCopyWith<$Res>
    implements $ReviewAnalyticsModelCopyWith<$Res> {
  factory _$$ReviewAnalyticsModelImplCopyWith(_$ReviewAnalyticsModelImpl value,
          $Res Function(_$ReviewAnalyticsModelImpl) then) =
      __$$ReviewAnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalReviews,
      double positivePercentage,
      double negativePercentage,
      List<String> mostMentionedPros,
      List<String> mostMentionedCons,
      Map<String, double> averageMonthlyRating});
}

/// @nodoc
class __$$ReviewAnalyticsModelImplCopyWithImpl<$Res>
    extends _$ReviewAnalyticsModelCopyWithImpl<$Res, _$ReviewAnalyticsModelImpl>
    implements _$$ReviewAnalyticsModelImplCopyWith<$Res> {
  __$$ReviewAnalyticsModelImplCopyWithImpl(_$ReviewAnalyticsModelImpl _value,
      $Res Function(_$ReviewAnalyticsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalReviews = null,
    Object? positivePercentage = null,
    Object? negativePercentage = null,
    Object? mostMentionedPros = null,
    Object? mostMentionedCons = null,
    Object? averageMonthlyRating = null,
  }) {
    return _then(_$ReviewAnalyticsModelImpl(
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      positivePercentage: null == positivePercentage
          ? _value.positivePercentage
          : positivePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      negativePercentage: null == negativePercentage
          ? _value.negativePercentage
          : negativePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      mostMentionedPros: null == mostMentionedPros
          ? _value._mostMentionedPros
          : mostMentionedPros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mostMentionedCons: null == mostMentionedCons
          ? _value._mostMentionedCons
          : mostMentionedCons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageMonthlyRating: null == averageMonthlyRating
          ? _value._averageMonthlyRating
          : averageMonthlyRating // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewAnalyticsModelImpl implements _ReviewAnalyticsModel {
  const _$ReviewAnalyticsModelImpl(
      {this.totalReviews = 0,
      this.positivePercentage = 0.0,
      this.negativePercentage = 0.0,
      final List<String> mostMentionedPros = const [],
      final List<String> mostMentionedCons = const [],
      final Map<String, double> averageMonthlyRating = const {}})
      : _mostMentionedPros = mostMentionedPros,
        _mostMentionedCons = mostMentionedCons,
        _averageMonthlyRating = averageMonthlyRating;

  factory _$ReviewAnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewAnalyticsModelImplFromJson(json);

  @override
  @JsonKey()
  final int totalReviews;
  @override
  @JsonKey()
  final double positivePercentage;
  @override
  @JsonKey()
  final double negativePercentage;
  final List<String> _mostMentionedPros;
  @override
  @JsonKey()
  List<String> get mostMentionedPros {
    if (_mostMentionedPros is EqualUnmodifiableListView)
      return _mostMentionedPros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostMentionedPros);
  }

  final List<String> _mostMentionedCons;
  @override
  @JsonKey()
  List<String> get mostMentionedCons {
    if (_mostMentionedCons is EqualUnmodifiableListView)
      return _mostMentionedCons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostMentionedCons);
  }

  final Map<String, double> _averageMonthlyRating;
  @override
  @JsonKey()
  Map<String, double> get averageMonthlyRating {
    if (_averageMonthlyRating is EqualUnmodifiableMapView)
      return _averageMonthlyRating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_averageMonthlyRating);
  }

  @override
  String toString() {
    return 'ReviewAnalyticsModel(totalReviews: $totalReviews, positivePercentage: $positivePercentage, negativePercentage: $negativePercentage, mostMentionedPros: $mostMentionedPros, mostMentionedCons: $mostMentionedCons, averageMonthlyRating: $averageMonthlyRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAnalyticsModelImpl &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.positivePercentage, positivePercentage) ||
                other.positivePercentage == positivePercentage) &&
            (identical(other.negativePercentage, negativePercentage) ||
                other.negativePercentage == negativePercentage) &&
            const DeepCollectionEquality()
                .equals(other._mostMentionedPros, _mostMentionedPros) &&
            const DeepCollectionEquality()
                .equals(other._mostMentionedCons, _mostMentionedCons) &&
            const DeepCollectionEquality()
                .equals(other._averageMonthlyRating, _averageMonthlyRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalReviews,
      positivePercentage,
      negativePercentage,
      const DeepCollectionEquality().hash(_mostMentionedPros),
      const DeepCollectionEquality().hash(_mostMentionedCons),
      const DeepCollectionEquality().hash(_averageMonthlyRating));

  /// Create a copy of ReviewAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAnalyticsModelImplCopyWith<_$ReviewAnalyticsModelImpl>
      get copyWith =>
          __$$ReviewAnalyticsModelImplCopyWithImpl<_$ReviewAnalyticsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewAnalyticsModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewAnalyticsModel implements ReviewAnalyticsModel {
  const factory _ReviewAnalyticsModel(
          {final int totalReviews,
          final double positivePercentage,
          final double negativePercentage,
          final List<String> mostMentionedPros,
          final List<String> mostMentionedCons,
          final Map<String, double> averageMonthlyRating}) =
      _$ReviewAnalyticsModelImpl;

  factory _ReviewAnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$ReviewAnalyticsModelImpl.fromJson;

  @override
  int get totalReviews;
  @override
  double get positivePercentage;
  @override
  double get negativePercentage;
  @override
  List<String> get mostMentionedPros;
  @override
  List<String> get mostMentionedCons;
  @override
  Map<String, double> get averageMonthlyRating;

  /// Create a copy of ReviewAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewAnalyticsModelImplCopyWith<_$ReviewAnalyticsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
