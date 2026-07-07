// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_rule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidationRuleModel _$ValidationRuleModelFromJson(Map<String, dynamic> json) {
  return _ValidationRuleModel.fromJson(json);
}

/// @nodoc
mixin _$ValidationRuleModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  RuleCategory get category => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  Map<String, dynamic> get config => throw _privateConstructorUsedError;

  /// Serializes this ValidationRuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationRuleModelCopyWith<ValidationRuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationRuleModelCopyWith<$Res> {
  factory $ValidationRuleModelCopyWith(
          ValidationRuleModel value, $Res Function(ValidationRuleModel) then) =
      _$ValidationRuleModelCopyWithImpl<$Res, ValidationRuleModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      RuleCategory category,
      bool isEnabled,
      Map<String, dynamic> config});
}

/// @nodoc
class _$ValidationRuleModelCopyWithImpl<$Res, $Val extends ValidationRuleModel>
    implements $ValidationRuleModelCopyWith<$Res> {
  _$ValidationRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? isEnabled = null,
    Object? config = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RuleCategory,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationRuleModelImplCopyWith<$Res>
    implements $ValidationRuleModelCopyWith<$Res> {
  factory _$$ValidationRuleModelImplCopyWith(_$ValidationRuleModelImpl value,
          $Res Function(_$ValidationRuleModelImpl) then) =
      __$$ValidationRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      RuleCategory category,
      bool isEnabled,
      Map<String, dynamic> config});
}

/// @nodoc
class __$$ValidationRuleModelImplCopyWithImpl<$Res>
    extends _$ValidationRuleModelCopyWithImpl<$Res, _$ValidationRuleModelImpl>
    implements _$$ValidationRuleModelImplCopyWith<$Res> {
  __$$ValidationRuleModelImplCopyWithImpl(_$ValidationRuleModelImpl _value,
      $Res Function(_$ValidationRuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? isEnabled = null,
    Object? config = null,
  }) {
    return _then(_$ValidationRuleModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RuleCategory,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      config: null == config
          ? _value._config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationRuleModelImpl implements _ValidationRuleModel {
  const _$ValidationRuleModelImpl(
      {required this.id,
      required this.name,
      required this.category,
      required this.isEnabled,
      final Map<String, dynamic> config = const {}})
      : _config = config;

  factory _$ValidationRuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationRuleModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final RuleCategory category;
  @override
  final bool isEnabled;
  final Map<String, dynamic> _config;
  @override
  @JsonKey()
  Map<String, dynamic> get config {
    if (_config is EqualUnmodifiableMapView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_config);
  }

  @override
  String toString() {
    return 'ValidationRuleModel(id: $id, name: $name, category: $category, isEnabled: $isEnabled, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationRuleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality().equals(other._config, _config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, category, isEnabled,
      const DeepCollectionEquality().hash(_config));

  /// Create a copy of ValidationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationRuleModelImplCopyWith<_$ValidationRuleModelImpl> get copyWith =>
      __$$ValidationRuleModelImplCopyWithImpl<_$ValidationRuleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationRuleModelImplToJson(
      this,
    );
  }
}

abstract class _ValidationRuleModel implements ValidationRuleModel {
  const factory _ValidationRuleModel(
      {required final String id,
      required final String name,
      required final RuleCategory category,
      required final bool isEnabled,
      final Map<String, dynamic> config}) = _$ValidationRuleModelImpl;

  factory _ValidationRuleModel.fromJson(Map<String, dynamic> json) =
      _$ValidationRuleModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  RuleCategory get category;
  @override
  bool get isEnabled;
  @override
  Map<String, dynamic> get config;

  /// Create a copy of ValidationRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationRuleModelImplCopyWith<_$ValidationRuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
