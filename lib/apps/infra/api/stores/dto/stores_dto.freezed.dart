// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoresDataDto _$StoresDataDtoFromJson(Map<String, dynamic> json) {
  return _StoresDataDto.fromJson(json);
}

/// @nodoc
mixin _$StoresDataDto {
  StoresDto get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresDataDtoCopyWith<StoresDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresDataDtoCopyWith<$Res> {
  factory $StoresDataDtoCopyWith(
          StoresDataDto value, $Res Function(StoresDataDto) then) =
      _$StoresDataDtoCopyWithImpl<$Res, StoresDataDto>;
  @useResult
  $Res call({StoresDto data, String message});

  $StoresDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$StoresDataDtoCopyWithImpl<$Res, $Val extends StoresDataDto>
    implements $StoresDataDtoCopyWith<$Res> {
  _$StoresDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoresDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoresDtoCopyWith<$Res> get data {
    return $StoresDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoresDataDtoImplCopyWith<$Res>
    implements $StoresDataDtoCopyWith<$Res> {
  factory _$$StoresDataDtoImplCopyWith(
          _$StoresDataDtoImpl value, $Res Function(_$StoresDataDtoImpl) then) =
      __$$StoresDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoresDto data, String message});

  @override
  $StoresDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$StoresDataDtoImplCopyWithImpl<$Res>
    extends _$StoresDataDtoCopyWithImpl<$Res, _$StoresDataDtoImpl>
    implements _$$StoresDataDtoImplCopyWith<$Res> {
  __$$StoresDataDtoImplCopyWithImpl(
      _$StoresDataDtoImpl _value, $Res Function(_$StoresDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$StoresDataDtoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoresDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresDataDtoImpl implements _StoresDataDto {
  _$StoresDataDtoImpl({required this.data, required this.message});

  factory _$StoresDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresDataDtoImplFromJson(json);

  @override
  final StoresDto data;
  @override
  final String message;

  @override
  String toString() {
    return 'StoresDataDto(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresDataDtoImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresDataDtoImplCopyWith<_$StoresDataDtoImpl> get copyWith =>
      __$$StoresDataDtoImplCopyWithImpl<_$StoresDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresDataDtoImplToJson(
      this,
    );
  }
}

abstract class _StoresDataDto implements StoresDataDto {
  factory _StoresDataDto(
      {required final StoresDto data,
      required final String message}) = _$StoresDataDtoImpl;

  factory _StoresDataDto.fromJson(Map<String, dynamic> json) =
      _$StoresDataDtoImpl.fromJson;

  @override
  StoresDto get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$StoresDataDtoImplCopyWith<_$StoresDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoresDto _$StoresDtoFromJson(Map<String, dynamic> json) {
  return _StoresDto.fromJson(json);
}

/// @nodoc
mixin _$StoresDto {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<StoreDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresDtoCopyWith<StoresDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresDtoCopyWith<$Res> {
  factory $StoresDtoCopyWith(StoresDto value, $Res Function(StoresDto) then) =
      _$StoresDtoCopyWithImpl<$Res, StoresDto>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPage,
      int totalCount,
      List<StoreDto> items});
}

/// @nodoc
class _$StoresDtoCopyWithImpl<$Res, $Val extends StoresDto>
    implements $StoresDtoCopyWith<$Res> {
  _$StoresDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalPage = null,
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresDtoImplCopyWith<$Res>
    implements $StoresDtoCopyWith<$Res> {
  factory _$$StoresDtoImplCopyWith(
          _$StoresDtoImpl value, $Res Function(_$StoresDtoImpl) then) =
      __$$StoresDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPage,
      int totalCount,
      List<StoreDto> items});
}

/// @nodoc
class __$$StoresDtoImplCopyWithImpl<$Res>
    extends _$StoresDtoCopyWithImpl<$Res, _$StoresDtoImpl>
    implements _$$StoresDtoImplCopyWith<$Res> {
  __$$StoresDtoImplCopyWithImpl(
      _$StoresDtoImpl _value, $Res Function(_$StoresDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalPage = null,
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_$StoresDtoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StoreDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresDtoImpl implements _StoresDto {
  _$StoresDtoImpl(
      {required this.page,
      required this.perPage,
      required this.totalPage,
      required this.totalCount,
      required final List<StoreDto> items})
      : _items = items;

  factory _$StoresDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresDtoImplFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalPage;
  @override
  final int totalCount;
  final List<StoreDto> _items;
  @override
  List<StoreDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'StoresDto(page: $page, perPage: $perPage, totalPage: $totalPage, totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalPage,
      totalCount, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresDtoImplCopyWith<_$StoresDtoImpl> get copyWith =>
      __$$StoresDtoImplCopyWithImpl<_$StoresDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresDtoImplToJson(
      this,
    );
  }
}

abstract class _StoresDto implements StoresDto {
  factory _StoresDto(
      {required final int page,
      required final int perPage,
      required final int totalPage,
      required final int totalCount,
      required final List<StoreDto> items}) = _$StoresDtoImpl;

  factory _StoresDto.fromJson(Map<String, dynamic> json) =
      _$StoresDtoImpl.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  List<StoreDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$StoresDtoImplCopyWith<_$StoresDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
