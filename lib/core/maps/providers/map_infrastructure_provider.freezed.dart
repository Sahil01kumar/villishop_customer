// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_infrastructure_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapInfrastructureState {
  bool get isMapLoaded => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  Set<Polyline> get polylines => throw _privateConstructorUsedError;
  bool get isAutoFollowEnabled => throw _privateConstructorUsedError;
  bool get isTrafficEnabled => throw _privateConstructorUsedError;
  CameraPosition? get initialPosition => throw _privateConstructorUsedError;
  GoogleMapController? get controller => throw _privateConstructorUsedError;

  /// Create a copy of MapInfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapInfrastructureStateCopyWith<MapInfrastructureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapInfrastructureStateCopyWith<$Res> {
  factory $MapInfrastructureStateCopyWith(MapInfrastructureState value,
          $Res Function(MapInfrastructureState) then) =
      _$MapInfrastructureStateCopyWithImpl<$Res, MapInfrastructureState>;
  @useResult
  $Res call(
      {bool isMapLoaded,
      Set<Marker> markers,
      Set<Polyline> polylines,
      bool isAutoFollowEnabled,
      bool isTrafficEnabled,
      CameraPosition? initialPosition,
      GoogleMapController? controller});
}

/// @nodoc
class _$MapInfrastructureStateCopyWithImpl<$Res,
        $Val extends MapInfrastructureState>
    implements $MapInfrastructureStateCopyWith<$Res> {
  _$MapInfrastructureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapInfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMapLoaded = null,
    Object? markers = null,
    Object? polylines = null,
    Object? isAutoFollowEnabled = null,
    Object? isTrafficEnabled = null,
    Object? initialPosition = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      isMapLoaded: null == isMapLoaded
          ? _value.isMapLoaded
          : isMapLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      polylines: null == polylines
          ? _value.polylines
          : polylines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>,
      isAutoFollowEnabled: null == isAutoFollowEnabled
          ? _value.isAutoFollowEnabled
          : isAutoFollowEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrafficEnabled: null == isTrafficEnabled
          ? _value.isTrafficEnabled
          : isTrafficEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPosition: freezed == initialPosition
          ? _value.initialPosition
          : initialPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapInfrastructureStateImplCopyWith<$Res>
    implements $MapInfrastructureStateCopyWith<$Res> {
  factory _$$MapInfrastructureStateImplCopyWith(
          _$MapInfrastructureStateImpl value,
          $Res Function(_$MapInfrastructureStateImpl) then) =
      __$$MapInfrastructureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMapLoaded,
      Set<Marker> markers,
      Set<Polyline> polylines,
      bool isAutoFollowEnabled,
      bool isTrafficEnabled,
      CameraPosition? initialPosition,
      GoogleMapController? controller});
}

/// @nodoc
class __$$MapInfrastructureStateImplCopyWithImpl<$Res>
    extends _$MapInfrastructureStateCopyWithImpl<$Res,
        _$MapInfrastructureStateImpl>
    implements _$$MapInfrastructureStateImplCopyWith<$Res> {
  __$$MapInfrastructureStateImplCopyWithImpl(
      _$MapInfrastructureStateImpl _value,
      $Res Function(_$MapInfrastructureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapInfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMapLoaded = null,
    Object? markers = null,
    Object? polylines = null,
    Object? isAutoFollowEnabled = null,
    Object? isTrafficEnabled = null,
    Object? initialPosition = freezed,
    Object? controller = freezed,
  }) {
    return _then(_$MapInfrastructureStateImpl(
      isMapLoaded: null == isMapLoaded
          ? _value.isMapLoaded
          : isMapLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      polylines: null == polylines
          ? _value._polylines
          : polylines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>,
      isAutoFollowEnabled: null == isAutoFollowEnabled
          ? _value.isAutoFollowEnabled
          : isAutoFollowEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrafficEnabled: null == isTrafficEnabled
          ? _value.isTrafficEnabled
          : isTrafficEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPosition: freezed == initialPosition
          ? _value.initialPosition
          : initialPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
    ));
  }
}

/// @nodoc

class _$MapInfrastructureStateImpl implements _MapInfrastructureState {
  const _$MapInfrastructureStateImpl(
      {this.isMapLoaded = false,
      final Set<Marker> markers = const {},
      final Set<Polyline> polylines = const {},
      this.isAutoFollowEnabled = true,
      this.isTrafficEnabled = false,
      this.initialPosition,
      this.controller})
      : _markers = markers,
        _polylines = polylines;

  @override
  @JsonKey()
  final bool isMapLoaded;
  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  final Set<Polyline> _polylines;
  @override
  @JsonKey()
  Set<Polyline> get polylines {
    if (_polylines is EqualUnmodifiableSetView) return _polylines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_polylines);
  }

  @override
  @JsonKey()
  final bool isAutoFollowEnabled;
  @override
  @JsonKey()
  final bool isTrafficEnabled;
  @override
  final CameraPosition? initialPosition;
  @override
  final GoogleMapController? controller;

  @override
  String toString() {
    return 'MapInfrastructureState(isMapLoaded: $isMapLoaded, markers: $markers, polylines: $polylines, isAutoFollowEnabled: $isAutoFollowEnabled, isTrafficEnabled: $isTrafficEnabled, initialPosition: $initialPosition, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapInfrastructureStateImpl &&
            (identical(other.isMapLoaded, isMapLoaded) ||
                other.isMapLoaded == isMapLoaded) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality()
                .equals(other._polylines, _polylines) &&
            (identical(other.isAutoFollowEnabled, isAutoFollowEnabled) ||
                other.isAutoFollowEnabled == isAutoFollowEnabled) &&
            (identical(other.isTrafficEnabled, isTrafficEnabled) ||
                other.isTrafficEnabled == isTrafficEnabled) &&
            (identical(other.initialPosition, initialPosition) ||
                other.initialPosition == initialPosition) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMapLoaded,
      const DeepCollectionEquality().hash(_markers),
      const DeepCollectionEquality().hash(_polylines),
      isAutoFollowEnabled,
      isTrafficEnabled,
      initialPosition,
      controller);

  /// Create a copy of MapInfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapInfrastructureStateImplCopyWith<_$MapInfrastructureStateImpl>
      get copyWith => __$$MapInfrastructureStateImplCopyWithImpl<
          _$MapInfrastructureStateImpl>(this, _$identity);
}

abstract class _MapInfrastructureState implements MapInfrastructureState {
  const factory _MapInfrastructureState(
      {final bool isMapLoaded,
      final Set<Marker> markers,
      final Set<Polyline> polylines,
      final bool isAutoFollowEnabled,
      final bool isTrafficEnabled,
      final CameraPosition? initialPosition,
      final GoogleMapController? controller}) = _$MapInfrastructureStateImpl;

  @override
  bool get isMapLoaded;
  @override
  Set<Marker> get markers;
  @override
  Set<Polyline> get polylines;
  @override
  bool get isAutoFollowEnabled;
  @override
  bool get isTrafficEnabled;
  @override
  CameraPosition? get initialPosition;
  @override
  GoogleMapController? get controller;

  /// Create a copy of MapInfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapInfrastructureStateImplCopyWith<_$MapInfrastructureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
