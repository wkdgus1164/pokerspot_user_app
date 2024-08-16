// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressSearchQuery _$AddressSearchQueryFromJson(Map<String, dynamic> json) {
  return _AddressSearchQuery.fromJson(json);
}

/// @nodoc
mixin _$AddressSearchQuery {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  /// Serializes this AddressSearchQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressSearchQueryCopyWith<AddressSearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSearchQueryCopyWith<$Res> {
  factory $AddressSearchQueryCopyWith(
          AddressSearchQuery value, $Res Function(AddressSearchQuery) then) =
      _$AddressSearchQueryCopyWithImpl<$Res, AddressSearchQuery>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$AddressSearchQueryCopyWithImpl<$Res, $Val extends AddressSearchQuery>
    implements $AddressSearchQueryCopyWith<$Res> {
  _$AddressSearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressSearchQueryImplCopyWith<$Res>
    implements $AddressSearchQueryCopyWith<$Res> {
  factory _$$AddressSearchQueryImplCopyWith(_$AddressSearchQueryImpl value,
          $Res Function(_$AddressSearchQueryImpl) then) =
      __$$AddressSearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$AddressSearchQueryImplCopyWithImpl<$Res>
    extends _$AddressSearchQueryCopyWithImpl<$Res, _$AddressSearchQueryImpl>
    implements _$$AddressSearchQueryImplCopyWith<$Res> {
  __$$AddressSearchQueryImplCopyWithImpl(_$AddressSearchQueryImpl _value,
      $Res Function(_$AddressSearchQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$AddressSearchQueryImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressSearchQueryImpl implements _AddressSearchQuery {
  _$AddressSearchQueryImpl({required this.x, required this.y});

  factory _$AddressSearchQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressSearchQueryImplFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'AddressSearchQuery(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressSearchQueryImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  /// Create a copy of AddressSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressSearchQueryImplCopyWith<_$AddressSearchQueryImpl> get copyWith =>
      __$$AddressSearchQueryImplCopyWithImpl<_$AddressSearchQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressSearchQueryImplToJson(
      this,
    );
  }
}

abstract class _AddressSearchQuery implements AddressSearchQuery {
  factory _AddressSearchQuery(
      {required final double x,
      required final double y}) = _$AddressSearchQueryImpl;

  factory _AddressSearchQuery.fromJson(Map<String, dynamic> json) =
      _$AddressSearchQueryImpl.fromJson;

  @override
  double get x;
  @override
  double get y;

  /// Create a copy of AddressSearchQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressSearchQueryImplCopyWith<_$AddressSearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
