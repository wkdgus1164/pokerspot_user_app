// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

/// @nodoc
mixin _$SearchDto {
  double get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDtoCopyWith<SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res, SearchDto>;
  @useResult
  $Res call({double id, String name});
}

/// @nodoc
class _$SearchDtoCopyWithImpl<$Res, $Val extends SearchDto>
    implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDtoImplCopyWith<$Res>
    implements $SearchDtoCopyWith<$Res> {
  factory _$$SearchDtoImplCopyWith(
          _$SearchDtoImpl value, $Res Function(_$SearchDtoImpl) then) =
      __$$SearchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double id, String name});
}

/// @nodoc
class __$$SearchDtoImplCopyWithImpl<$Res>
    extends _$SearchDtoCopyWithImpl<$Res, _$SearchDtoImpl>
    implements _$$SearchDtoImplCopyWith<$Res> {
  __$$SearchDtoImplCopyWithImpl(
      _$SearchDtoImpl _value, $Res Function(_$SearchDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SearchDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDtoImpl implements _SearchDto {
  _$SearchDtoImpl({required this.id, required this.name});

  factory _$SearchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDtoImplFromJson(json);

  @override
  final double id;
  @override
  final String name;

  @override
  String toString() {
    return 'SearchDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDtoImplCopyWith<_$SearchDtoImpl> get copyWith =>
      __$$SearchDtoImplCopyWithImpl<_$SearchDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchDto implements SearchDto {
  factory _SearchDto({required final double id, required final String name}) =
      _$SearchDtoImpl;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$SearchDtoImpl.fromJson;

  @override
  double get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SearchDtoImplCopyWith<_$SearchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
