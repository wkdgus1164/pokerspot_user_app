// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeoLocationModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoLocationModelCopyWith<GeoLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationModelCopyWith<$Res> {
  factory $GeoLocationModelCopyWith(
          GeoLocationModel value, $Res Function(GeoLocationModel) then) =
      _$GeoLocationModelCopyWithImpl<$Res, GeoLocationModel>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$GeoLocationModelCopyWithImpl<$Res, $Val extends GeoLocationModel>
    implements $GeoLocationModelCopyWith<$Res> {
  _$GeoLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoLocationModelImplCopyWith<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  factory _$$GeoLocationModelImplCopyWith(_$GeoLocationModelImpl value,
          $Res Function(_$GeoLocationModelImpl) then) =
      __$$GeoLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$GeoLocationModelImplCopyWithImpl<$Res>
    extends _$GeoLocationModelCopyWithImpl<$Res, _$GeoLocationModelImpl>
    implements _$$GeoLocationModelImplCopyWith<$Res> {
  __$$GeoLocationModelImplCopyWithImpl(_$GeoLocationModelImpl _value,
      $Res Function(_$GeoLocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$GeoLocationModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GeoLocationModelImpl extends _GeoLocationModel {
  _$GeoLocationModelImpl(
      {this.latitude = 37.496486063, this.longitude = 127.028361548})
      : super._();

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'GeoLocationModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoLocationModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocationModelImplCopyWith<_$GeoLocationModelImpl> get copyWith =>
      __$$GeoLocationModelImplCopyWithImpl<_$GeoLocationModelImpl>(
          this, _$identity);
}

abstract class _GeoLocationModel extends GeoLocationModel {
  factory _GeoLocationModel({final double latitude, final double longitude}) =
      _$GeoLocationModelImpl;
  _GeoLocationModel._() : super._();

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoLocationModelImplCopyWith<_$GeoLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
