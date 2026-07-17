// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  String get id => throw _privateConstructorUsedError;
  String get threadId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  ChatParticipantType get senderType => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  MessageStatus get status => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get voiceUrl => throw _privateConstructorUsedError;
  bool get isQuickReply => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
          ChatMessageModel value, $Res Function(ChatMessageModel) then) =
      _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call(
      {String id,
      String threadId,
      String senderId,
      String senderName,
      ChatParticipantType senderType,
      String text,
      DateTime timestamp,
      MessageStatus status,
      String? imageUrl,
      String? voiceUrl,
      bool isQuickReply});
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? threadId = null,
    Object? senderId = null,
    Object? senderName = null,
    Object? senderType = null,
    Object? text = null,
    Object? timestamp = null,
    Object? status = null,
    Object? imageUrl = freezed,
    Object? voiceUrl = freezed,
    Object? isQuickReply = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as ChatParticipantType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceUrl: freezed == voiceUrl
          ? _value.voiceUrl
          : voiceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuickReply: null == isQuickReply
          ? _value.isQuickReply
          : isQuickReply // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(_$ChatMessageModelImpl value,
          $Res Function(_$ChatMessageModelImpl) then) =
      __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String threadId,
      String senderId,
      String senderName,
      ChatParticipantType senderType,
      String text,
      DateTime timestamp,
      MessageStatus status,
      String? imageUrl,
      String? voiceUrl,
      bool isQuickReply});
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(_$ChatMessageModelImpl _value,
      $Res Function(_$ChatMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? threadId = null,
    Object? senderId = null,
    Object? senderName = null,
    Object? senderType = null,
    Object? text = null,
    Object? timestamp = null,
    Object? status = null,
    Object? imageUrl = freezed,
    Object? voiceUrl = freezed,
    Object? isQuickReply = null,
  }) {
    return _then(_$ChatMessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as ChatParticipantType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      voiceUrl: freezed == voiceUrl
          ? _value.voiceUrl
          : voiceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isQuickReply: null == isQuickReply
          ? _value.isQuickReply
          : isQuickReply // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl implements _ChatMessageModel {
  const _$ChatMessageModelImpl(
      {required this.id,
      required this.threadId,
      required this.senderId,
      required this.senderName,
      required this.senderType,
      required this.text,
      required this.timestamp,
      this.status = MessageStatus.sent,
      this.imageUrl,
      this.voiceUrl,
      this.isQuickReply = false});

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  final String id;
  @override
  final String threadId;
  @override
  final String senderId;
  @override
  final String senderName;
  @override
  final ChatParticipantType senderType;
  @override
  final String text;
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final MessageStatus status;
  @override
  final String? imageUrl;
  @override
  final String? voiceUrl;
  @override
  @JsonKey()
  final bool isQuickReply;

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, threadId: $threadId, senderId: $senderId, senderName: $senderName, senderType: $senderType, text: $text, timestamp: $timestamp, status: $status, imageUrl: $imageUrl, voiceUrl: $voiceUrl, isQuickReply: $isQuickReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.voiceUrl, voiceUrl) ||
                other.voiceUrl == voiceUrl) &&
            (identical(other.isQuickReply, isQuickReply) ||
                other.isQuickReply == isQuickReply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      threadId,
      senderId,
      senderName,
      senderType,
      text,
      timestamp,
      status,
      imageUrl,
      voiceUrl,
      isQuickReply);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageModel implements ChatMessageModel {
  const factory _ChatMessageModel(
      {required final String id,
      required final String threadId,
      required final String senderId,
      required final String senderName,
      required final ChatParticipantType senderType,
      required final String text,
      required final DateTime timestamp,
      final MessageStatus status,
      final String? imageUrl,
      final String? voiceUrl,
      final bool isQuickReply}) = _$ChatMessageModelImpl;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  String get id;
  @override
  String get threadId;
  @override
  String get senderId;
  @override
  String get senderName;
  @override
  ChatParticipantType get senderType;
  @override
  String get text;
  @override
  DateTime get timestamp;
  @override
  MessageStatus get status;
  @override
  String? get imageUrl;
  @override
  String? get voiceUrl;
  @override
  bool get isQuickReply;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatThreadModel _$ChatThreadModelFromJson(Map<String, dynamic> json) {
  return _ChatThreadModel.fromJson(json);
}

/// @nodoc
mixin _$ChatThreadModel {
  String get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get deliveryPartnerId => throw _privateConstructorUsedError;
  String get participantName => throw _privateConstructorUsedError;
  String get participantPhoto => throw _privateConstructorUsedError;
  ChatParticipantType get participantType => throw _privateConstructorUsedError;
  ChatMessageModel? get lastMessage => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get lastSeen => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this ChatThreadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatThreadModelCopyWith<ChatThreadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatThreadModelCopyWith<$Res> {
  factory $ChatThreadModelCopyWith(
          ChatThreadModel value, $Res Function(ChatThreadModel) then) =
      _$ChatThreadModelCopyWithImpl<$Res, ChatThreadModel>;
  @useResult
  $Res call(
      {String id,
      String orderId,
      String customerId,
      String deliveryPartnerId,
      String participantName,
      String participantPhoto,
      ChatParticipantType participantType,
      ChatMessageModel? lastMessage,
      int unreadCount,
      bool isTyping,
      DateTime updatedAt,
      DateTime? lastSeen,
      bool isActive});

  $ChatMessageModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatThreadModelCopyWithImpl<$Res, $Val extends ChatThreadModel>
    implements $ChatThreadModelCopyWith<$Res> {
  _$ChatThreadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? customerId = null,
    Object? deliveryPartnerId = null,
    Object? participantName = null,
    Object? participantPhoto = null,
    Object? participantType = null,
    Object? lastMessage = freezed,
    Object? unreadCount = null,
    Object? isTyping = null,
    Object? updatedAt = null,
    Object? lastSeen = freezed,
    Object? isActive = null,
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
      deliveryPartnerId: null == deliveryPartnerId
          ? _value.deliveryPartnerId
          : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
      participantName: null == participantName
          ? _value.participantName
          : participantName // ignore: cast_nullable_to_non_nullable
              as String,
      participantPhoto: null == participantPhoto
          ? _value.participantPhoto
          : participantPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      participantType: null == participantType
          ? _value.participantType
          : participantType // ignore: cast_nullable_to_non_nullable
              as ChatParticipantType,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageModelCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $ChatMessageModelCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatThreadModelImplCopyWith<$Res>
    implements $ChatThreadModelCopyWith<$Res> {
  factory _$$ChatThreadModelImplCopyWith(_$ChatThreadModelImpl value,
          $Res Function(_$ChatThreadModelImpl) then) =
      __$$ChatThreadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String orderId,
      String customerId,
      String deliveryPartnerId,
      String participantName,
      String participantPhoto,
      ChatParticipantType participantType,
      ChatMessageModel? lastMessage,
      int unreadCount,
      bool isTyping,
      DateTime updatedAt,
      DateTime? lastSeen,
      bool isActive});

  @override
  $ChatMessageModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ChatThreadModelImplCopyWithImpl<$Res>
    extends _$ChatThreadModelCopyWithImpl<$Res, _$ChatThreadModelImpl>
    implements _$$ChatThreadModelImplCopyWith<$Res> {
  __$$ChatThreadModelImplCopyWithImpl(
      _$ChatThreadModelImpl _value, $Res Function(_$ChatThreadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? customerId = null,
    Object? deliveryPartnerId = null,
    Object? participantName = null,
    Object? participantPhoto = null,
    Object? participantType = null,
    Object? lastMessage = freezed,
    Object? unreadCount = null,
    Object? isTyping = null,
    Object? updatedAt = null,
    Object? lastSeen = freezed,
    Object? isActive = null,
  }) {
    return _then(_$ChatThreadModelImpl(
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
      deliveryPartnerId: null == deliveryPartnerId
          ? _value.deliveryPartnerId
          : deliveryPartnerId // ignore: cast_nullable_to_non_nullable
              as String,
      participantName: null == participantName
          ? _value.participantName
          : participantName // ignore: cast_nullable_to_non_nullable
              as String,
      participantPhoto: null == participantPhoto
          ? _value.participantPhoto
          : participantPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      participantType: null == participantType
          ? _value.participantType
          : participantType // ignore: cast_nullable_to_non_nullable
              as ChatParticipantType,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatThreadModelImpl implements _ChatThreadModel {
  const _$ChatThreadModelImpl(
      {required this.id,
      required this.orderId,
      required this.customerId,
      required this.deliveryPartnerId,
      required this.participantName,
      required this.participantPhoto,
      required this.participantType,
      this.lastMessage,
      this.unreadCount = 0,
      this.isTyping = false,
      required this.updatedAt,
      this.lastSeen,
      this.isActive = true});

  factory _$ChatThreadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatThreadModelImplFromJson(json);

  @override
  final String id;
  @override
  final String orderId;
  @override
  final String customerId;
  @override
  final String deliveryPartnerId;
  @override
  final String participantName;
  @override
  final String participantPhoto;
  @override
  final ChatParticipantType participantType;
  @override
  final ChatMessageModel? lastMessage;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  @JsonKey()
  final bool isTyping;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? lastSeen;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'ChatThreadModel(id: $id, orderId: $orderId, customerId: $customerId, deliveryPartnerId: $deliveryPartnerId, participantName: $participantName, participantPhoto: $participantPhoto, participantType: $participantType, lastMessage: $lastMessage, unreadCount: $unreadCount, isTyping: $isTyping, updatedAt: $updatedAt, lastSeen: $lastSeen, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatThreadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.deliveryPartnerId, deliveryPartnerId) ||
                other.deliveryPartnerId == deliveryPartnerId) &&
            (identical(other.participantName, participantName) ||
                other.participantName == participantName) &&
            (identical(other.participantPhoto, participantPhoto) ||
                other.participantPhoto == participantPhoto) &&
            (identical(other.participantType, participantType) ||
                other.participantType == participantType) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      customerId,
      deliveryPartnerId,
      participantName,
      participantPhoto,
      participantType,
      lastMessage,
      unreadCount,
      isTyping,
      updatedAt,
      lastSeen,
      isActive);

  /// Create a copy of ChatThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatThreadModelImplCopyWith<_$ChatThreadModelImpl> get copyWith =>
      __$$ChatThreadModelImplCopyWithImpl<_$ChatThreadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatThreadModelImplToJson(
      this,
    );
  }
}

abstract class _ChatThreadModel implements ChatThreadModel {
  const factory _ChatThreadModel(
      {required final String id,
      required final String orderId,
      required final String customerId,
      required final String deliveryPartnerId,
      required final String participantName,
      required final String participantPhoto,
      required final ChatParticipantType participantType,
      final ChatMessageModel? lastMessage,
      final int unreadCount,
      final bool isTyping,
      required final DateTime updatedAt,
      final DateTime? lastSeen,
      final bool isActive}) = _$ChatThreadModelImpl;

  factory _ChatThreadModel.fromJson(Map<String, dynamic> json) =
      _$ChatThreadModelImpl.fromJson;

  @override
  String get id;
  @override
  String get orderId;
  @override
  String get customerId;
  @override
  String get deliveryPartnerId;
  @override
  String get participantName;
  @override
  String get participantPhoto;
  @override
  ChatParticipantType get participantType;
  @override
  ChatMessageModel? get lastMessage;
  @override
  int get unreadCount;
  @override
  bool get isTyping;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get lastSeen;
  @override
  bool get isActive;

  /// Create a copy of ChatThreadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatThreadModelImplCopyWith<_$ChatThreadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
