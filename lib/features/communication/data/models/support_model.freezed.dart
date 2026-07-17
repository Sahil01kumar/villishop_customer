// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportTicketModel _$SupportTicketModelFromJson(Map<String, dynamic> json) {
  return _SupportTicketModel.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketModel {
  String get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  IssueCategory get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  SupportTicketStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  String? get resolutionSummary => throw _privateConstructorUsedError;
  bool get isEscalated => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketModelCopyWith<SupportTicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketModelCopyWith<$Res> {
  factory $SupportTicketModelCopyWith(
          SupportTicketModel value, $Res Function(SupportTicketModel) then) =
      _$SupportTicketModelCopyWithImpl<$Res, SupportTicketModel>;
  @useResult
  $Res call(
      {String id,
      String orderId,
      String customerId,
      IssueCategory category,
      String title,
      String description,
      SupportTicketStatus status,
      DateTime createdAt,
      DateTime? resolvedAt,
      String? resolutionSummary,
      bool isEscalated,
      List<String> attachments});
}

/// @nodoc
class _$SupportTicketModelCopyWithImpl<$Res, $Val extends SupportTicketModel>
    implements $SupportTicketModelCopyWith<$Res> {
  _$SupportTicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? customerId = null,
    Object? category = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? createdAt = null,
    Object? resolvedAt = freezed,
    Object? resolutionSummary = freezed,
    Object? isEscalated = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as IssueCategory,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolutionSummary: freezed == resolutionSummary
          ? _value.resolutionSummary
          : resolutionSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      isEscalated: null == isEscalated
          ? _value.isEscalated
          : isEscalated // ignore: cast_nullable_to_non_nullable
              as bool,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportTicketModelImplCopyWith<$Res>
    implements $SupportTicketModelCopyWith<$Res> {
  factory _$$SupportTicketModelImplCopyWith(_$SupportTicketModelImpl value,
          $Res Function(_$SupportTicketModelImpl) then) =
      __$$SupportTicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String orderId,
      String customerId,
      IssueCategory category,
      String title,
      String description,
      SupportTicketStatus status,
      DateTime createdAt,
      DateTime? resolvedAt,
      String? resolutionSummary,
      bool isEscalated,
      List<String> attachments});
}

/// @nodoc
class __$$SupportTicketModelImplCopyWithImpl<$Res>
    extends _$SupportTicketModelCopyWithImpl<$Res, _$SupportTicketModelImpl>
    implements _$$SupportTicketModelImplCopyWith<$Res> {
  __$$SupportTicketModelImplCopyWithImpl(_$SupportTicketModelImpl _value,
      $Res Function(_$SupportTicketModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? customerId = null,
    Object? category = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? createdAt = null,
    Object? resolvedAt = freezed,
    Object? resolutionSummary = freezed,
    Object? isEscalated = null,
    Object? attachments = null,
  }) {
    return _then(_$SupportTicketModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as IssueCategory,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolutionSummary: freezed == resolutionSummary
          ? _value.resolutionSummary
          : resolutionSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      isEscalated: null == isEscalated
          ? _value.isEscalated
          : isEscalated // ignore: cast_nullable_to_non_nullable
              as bool,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketModelImpl implements _SupportTicketModel {
  const _$SupportTicketModelImpl(
      {required this.id,
      required this.orderId,
      required this.customerId,
      required this.category,
      required this.title,
      required this.description,
      required this.status,
      required this.createdAt,
      this.resolvedAt,
      this.resolutionSummary,
      this.isEscalated = false,
      final List<String> attachments = const []})
      : _attachments = attachments;

  factory _$SupportTicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketModelImplFromJson(json);

  @override
  final String id;
  @override
  final String orderId;
  @override
  final String customerId;
  @override
  final IssueCategory category;
  @override
  final String title;
  @override
  final String description;
  @override
  final SupportTicketStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? resolvedAt;
  @override
  final String? resolutionSummary;
  @override
  @JsonKey()
  final bool isEscalated;
  final List<String> _attachments;
  @override
  @JsonKey()
  List<String> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'SupportTicketModel(id: $id, orderId: $orderId, customerId: $customerId, category: $category, title: $title, description: $description, status: $status, createdAt: $createdAt, resolvedAt: $resolvedAt, resolutionSummary: $resolutionSummary, isEscalated: $isEscalated, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolutionSummary, resolutionSummary) ||
                other.resolutionSummary == resolutionSummary) &&
            (identical(other.isEscalated, isEscalated) ||
                other.isEscalated == isEscalated) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      customerId,
      category,
      title,
      description,
      status,
      createdAt,
      resolvedAt,
      resolutionSummary,
      isEscalated,
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketModelImplCopyWith<_$SupportTicketModelImpl> get copyWith =>
      __$$SupportTicketModelImplCopyWithImpl<_$SupportTicketModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketModelImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketModel implements SupportTicketModel {
  const factory _SupportTicketModel(
      {required final String id,
      required final String orderId,
      required final String customerId,
      required final IssueCategory category,
      required final String title,
      required final String description,
      required final SupportTicketStatus status,
      required final DateTime createdAt,
      final DateTime? resolvedAt,
      final String? resolutionSummary,
      final bool isEscalated,
      final List<String> attachments}) = _$SupportTicketModelImpl;

  factory _SupportTicketModel.fromJson(Map<String, dynamic> json) =
      _$SupportTicketModelImpl.fromJson;

  @override
  String get id;
  @override
  String get orderId;
  @override
  String get customerId;
  @override
  IssueCategory get category;
  @override
  String get title;
  @override
  String get description;
  @override
  SupportTicketStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get resolvedAt;
  @override
  String? get resolutionSummary;
  @override
  bool get isEscalated;
  @override
  List<String> get attachments;

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketModelImplCopyWith<_$SupportTicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
