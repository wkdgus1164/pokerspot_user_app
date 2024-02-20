// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_query_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoresQuery _$StoresQueryFromJson(Map<String, dynamic> json) {
  return _StoresQuery.fromJson(json);
}

/// @nodoc
mixin _$StoresQuery {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresQueryCopyWith<StoresQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresQueryCopyWith<$Res> {
  factory $StoresQueryCopyWith(
          StoresQuery value, $Res Function(StoresQuery) then) =
      _$StoresQueryCopyWithImpl<$Res, StoresQuery>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$StoresQueryCopyWithImpl<$Res, $Val extends StoresQuery>
    implements $StoresQueryCopyWith<$Res> {
  _$StoresQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresQueryImplCopyWith<$Res>
    implements $StoresQueryCopyWith<$Res> {
  factory _$$StoresQueryImplCopyWith(
          _$StoresQueryImpl value, $Res Function(_$StoresQueryImpl) then) =
      __$$StoresQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$StoresQueryImplCopyWithImpl<$Res>
    extends _$StoresQueryCopyWithImpl<$Res, _$StoresQueryImpl>
    implements _$$StoresQueryImplCopyWith<$Res> {
  __$$StoresQueryImplCopyWithImpl(
      _$StoresQueryImpl _value, $Res Function(_$StoresQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$StoresQueryImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresQueryImpl implements _StoresQuery {
  _$StoresQueryImpl({required this.lat, required this.lng});

  factory _$StoresQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresQueryImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'StoresQuery(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresQueryImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresQueryImplCopyWith<_$StoresQueryImpl> get copyWith =>
      __$$StoresQueryImplCopyWithImpl<_$StoresQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresQueryImplToJson(
      this,
    );
  }
}

abstract class _StoresQuery implements StoresQuery {
  factory _StoresQuery({required final double lat, required final double lng}) =
      _$StoresQueryImpl;

  factory _StoresQuery.fromJson(Map<String, dynamic> json) =
      _$StoresQueryImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$StoresQueryImplCopyWith<_$StoresQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
