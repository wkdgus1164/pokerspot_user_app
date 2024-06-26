// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerDto _$BannerDtoFromJson(Map<String, dynamic> json) {
  return _BannerDto.fromJson(json);
}

/// @nodoc
mixin _$BannerDto {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDtoCopyWith<BannerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDtoCopyWith<$Res> {
  factory $BannerDtoCopyWith(BannerDto value, $Res Function(BannerDto) then) =
      _$BannerDtoCopyWithImpl<$Res, BannerDto>;
  @useResult
  $Res call({String id, String imageUrl});
}

/// @nodoc
class _$BannerDtoCopyWithImpl<$Res, $Val extends BannerDto>
    implements $BannerDtoCopyWith<$Res> {
  _$BannerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerDtoImplCopyWith<$Res>
    implements $BannerDtoCopyWith<$Res> {
  factory _$$BannerDtoImplCopyWith(
          _$BannerDtoImpl value, $Res Function(_$BannerDtoImpl) then) =
      __$$BannerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imageUrl});
}

/// @nodoc
class __$$BannerDtoImplCopyWithImpl<$Res>
    extends _$BannerDtoCopyWithImpl<$Res, _$BannerDtoImpl>
    implements _$$BannerDtoImplCopyWith<$Res> {
  __$$BannerDtoImplCopyWithImpl(
      _$BannerDtoImpl _value, $Res Function(_$BannerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
  }) {
    return _then(_$BannerDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerDtoImpl implements _BannerDto {
  _$BannerDtoImpl({required this.id, required this.imageUrl});

  factory _$BannerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'BannerDto(id: $id, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDtoImplCopyWith<_$BannerDtoImpl> get copyWith =>
      __$$BannerDtoImplCopyWithImpl<_$BannerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDtoImplToJson(
      this,
    );
  }
}

abstract class _BannerDto implements BannerDto {
  factory _BannerDto(
      {required final String id,
      required final String imageUrl}) = _$BannerDtoImpl;

  factory _BannerDto.fromJson(Map<String, dynamic> json) =
      _$BannerDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$BannerDtoImplCopyWith<_$BannerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
