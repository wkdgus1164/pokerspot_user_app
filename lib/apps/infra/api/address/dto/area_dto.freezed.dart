// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AreaListDto _$AreaListDtoFromJson(Map<String, dynamic> json) {
  return _AreaListDto.fromJson(json);
}

/// @nodoc
mixin _$AreaListDto {
  List<AreaDto> get regcodes => throw _privateConstructorUsedError;

  /// Serializes this AreaListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaListDtoCopyWith<AreaListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaListDtoCopyWith<$Res> {
  factory $AreaListDtoCopyWith(
          AreaListDto value, $Res Function(AreaListDto) then) =
      _$AreaListDtoCopyWithImpl<$Res, AreaListDto>;
  @useResult
  $Res call({List<AreaDto> regcodes});
}

/// @nodoc
class _$AreaListDtoCopyWithImpl<$Res, $Val extends AreaListDto>
    implements $AreaListDtoCopyWith<$Res> {
  _$AreaListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regcodes = null,
  }) {
    return _then(_value.copyWith(
      regcodes: null == regcodes
          ? _value.regcodes
          : regcodes // ignore: cast_nullable_to_non_nullable
              as List<AreaDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaListDtoImplCopyWith<$Res>
    implements $AreaListDtoCopyWith<$Res> {
  factory _$$AreaListDtoImplCopyWith(
          _$AreaListDtoImpl value, $Res Function(_$AreaListDtoImpl) then) =
      __$$AreaListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AreaDto> regcodes});
}

/// @nodoc
class __$$AreaListDtoImplCopyWithImpl<$Res>
    extends _$AreaListDtoCopyWithImpl<$Res, _$AreaListDtoImpl>
    implements _$$AreaListDtoImplCopyWith<$Res> {
  __$$AreaListDtoImplCopyWithImpl(
      _$AreaListDtoImpl _value, $Res Function(_$AreaListDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regcodes = null,
  }) {
    return _then(_$AreaListDtoImpl(
      regcodes: null == regcodes
          ? _value._regcodes
          : regcodes // ignore: cast_nullable_to_non_nullable
              as List<AreaDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaListDtoImpl implements _AreaListDto {
  _$AreaListDtoImpl({required final List<AreaDto> regcodes})
      : _regcodes = regcodes;

  factory _$AreaListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaListDtoImplFromJson(json);

  final List<AreaDto> _regcodes;
  @override
  List<AreaDto> get regcodes {
    if (_regcodes is EqualUnmodifiableListView) return _regcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regcodes);
  }

  @override
  String toString() {
    return 'AreaListDto(regcodes: $regcodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaListDtoImpl &&
            const DeepCollectionEquality().equals(other._regcodes, _regcodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_regcodes));

  /// Create a copy of AreaListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaListDtoImplCopyWith<_$AreaListDtoImpl> get copyWith =>
      __$$AreaListDtoImplCopyWithImpl<_$AreaListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaListDtoImplToJson(
      this,
    );
  }
}

abstract class _AreaListDto implements AreaListDto {
  factory _AreaListDto({required final List<AreaDto> regcodes}) =
      _$AreaListDtoImpl;

  factory _AreaListDto.fromJson(Map<String, dynamic> json) =
      _$AreaListDtoImpl.fromJson;

  @override
  List<AreaDto> get regcodes;

  /// Create a copy of AreaListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaListDtoImplCopyWith<_$AreaListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaDto _$AreaDtoFromJson(Map<String, dynamic> json) {
  return _AreaDto.fromJson(json);
}

/// @nodoc
mixin _$AreaDto {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AreaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaDtoCopyWith<AreaDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaDtoCopyWith<$Res> {
  factory $AreaDtoCopyWith(AreaDto value, $Res Function(AreaDto) then) =
      _$AreaDtoCopyWithImpl<$Res, AreaDto>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$AreaDtoCopyWithImpl<$Res, $Val extends AreaDto>
    implements $AreaDtoCopyWith<$Res> {
  _$AreaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaDtoImplCopyWith<$Res> implements $AreaDtoCopyWith<$Res> {
  factory _$$AreaDtoImplCopyWith(
          _$AreaDtoImpl value, $Res Function(_$AreaDtoImpl) then) =
      __$$AreaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$AreaDtoImplCopyWithImpl<$Res>
    extends _$AreaDtoCopyWithImpl<$Res, _$AreaDtoImpl>
    implements _$$AreaDtoImplCopyWith<$Res> {
  __$$AreaDtoImplCopyWithImpl(
      _$AreaDtoImpl _value, $Res Function(_$AreaDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$AreaDtoImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaDtoImpl implements _AreaDto {
  _$AreaDtoImpl({required this.code, required this.name});

  factory _$AreaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaDtoImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'AreaDto(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of AreaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaDtoImplCopyWith<_$AreaDtoImpl> get copyWith =>
      __$$AreaDtoImplCopyWithImpl<_$AreaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaDtoImplToJson(
      this,
    );
  }
}

abstract class _AreaDto implements AreaDto {
  factory _AreaDto({required final String code, required final String name}) =
      _$AreaDtoImpl;

  factory _AreaDto.fromJson(Map<String, dynamic> json) = _$AreaDtoImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of AreaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaDtoImplCopyWith<_$AreaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
