// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeDto _$NoticeDtoFromJson(Map<String, dynamic> json) {
  return _NoticeDto.fromJson(json);
}

/// @nodoc
mixin _$NoticeDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeDtoCopyWith<NoticeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeDtoCopyWith<$Res> {
  factory $NoticeDtoCopyWith(NoticeDto value, $Res Function(NoticeDto) then) =
      _$NoticeDtoCopyWithImpl<$Res, NoticeDto>;
  @useResult
  $Res call({String id, String title, String description, DateTime createdAt});
}

/// @nodoc
class _$NoticeDtoCopyWithImpl<$Res, $Val extends NoticeDto>
    implements $NoticeDtoCopyWith<$Res> {
  _$NoticeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeDtoImplCopyWith<$Res>
    implements $NoticeDtoCopyWith<$Res> {
  factory _$$NoticeDtoImplCopyWith(
          _$NoticeDtoImpl value, $Res Function(_$NoticeDtoImpl) then) =
      __$$NoticeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description, DateTime createdAt});
}

/// @nodoc
class __$$NoticeDtoImplCopyWithImpl<$Res>
    extends _$NoticeDtoCopyWithImpl<$Res, _$NoticeDtoImpl>
    implements _$$NoticeDtoImplCopyWith<$Res> {
  __$$NoticeDtoImplCopyWithImpl(
      _$NoticeDtoImpl _value, $Res Function(_$NoticeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_$NoticeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeDtoImpl implements _NoticeDto {
  _$NoticeDtoImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.createdAt});

  factory _$NoticeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'NoticeDto(id: $id, title: $title, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeDtoImplCopyWith<_$NoticeDtoImpl> get copyWith =>
      __$$NoticeDtoImplCopyWithImpl<_$NoticeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeDtoImplToJson(
      this,
    );
  }
}

abstract class _NoticeDto implements NoticeDto {
  factory _NoticeDto(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime createdAt}) = _$NoticeDtoImpl;

  factory _NoticeDto.fromJson(Map<String, dynamic> json) =
      _$NoticeDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$NoticeDtoImplCopyWith<_$NoticeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
