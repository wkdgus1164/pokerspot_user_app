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

  /// Serializes this StoresDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoresDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of StoresDto
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of StoresDto
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalPage,
      totalCount, const DeepCollectionEquality().hash(_items));

  /// Create a copy of StoresDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of StoresDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoresDtoImplCopyWith<_$StoresDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
