// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentSearchModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of RecentSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentSearchModelCopyWith<RecentSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchModelCopyWith<$Res> {
  factory $RecentSearchModelCopyWith(
          RecentSearchModel value, $Res Function(RecentSearchModel) then) =
      _$RecentSearchModelCopyWithImpl<$Res, RecentSearchModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String address,
      String openTime,
      DateTime createdAt});
}

/// @nodoc
class _$RecentSearchModelCopyWithImpl<$Res, $Val extends RecentSearchModel>
    implements $RecentSearchModelCopyWith<$Res> {
  _$RecentSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? address = null,
    Object? openTime = null,
    Object? createdAt = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentSearchModelImplCopyWith<$Res>
    implements $RecentSearchModelCopyWith<$Res> {
  factory _$$RecentSearchModelImplCopyWith(_$RecentSearchModelImpl value,
          $Res Function(_$RecentSearchModelImpl) then) =
      __$$RecentSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String address,
      String openTime,
      DateTime createdAt});
}

/// @nodoc
class __$$RecentSearchModelImplCopyWithImpl<$Res>
    extends _$RecentSearchModelCopyWithImpl<$Res, _$RecentSearchModelImpl>
    implements _$$RecentSearchModelImplCopyWith<$Res> {
  __$$RecentSearchModelImplCopyWithImpl(_$RecentSearchModelImpl _value,
      $Res Function(_$RecentSearchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecentSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? address = null,
    Object? openTime = null,
    Object? createdAt = null,
  }) {
    return _then(_$RecentSearchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$RecentSearchModelImpl implements _RecentSearchModel {
  _$RecentSearchModelImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.address,
      required this.openTime,
      required this.createdAt});

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String address;
  @override
  final String openTime;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'RecentSearchModel(id: $id, name: $name, image: $image, address: $address, openTime: $openTime, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, address, openTime, createdAt);

  /// Create a copy of RecentSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSearchModelImplCopyWith<_$RecentSearchModelImpl> get copyWith =>
      __$$RecentSearchModelImplCopyWithImpl<_$RecentSearchModelImpl>(
          this, _$identity);
}

abstract class _RecentSearchModel implements RecentSearchModel {
  factory _RecentSearchModel(
      {required final String id,
      required final String name,
      required final String image,
      required final String address,
      required final String openTime,
      required final DateTime createdAt}) = _$RecentSearchModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get address;
  @override
  String get openTime;
  @override
  DateTime get createdAt;

  /// Create a copy of RecentSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentSearchModelImplCopyWith<_$RecentSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
