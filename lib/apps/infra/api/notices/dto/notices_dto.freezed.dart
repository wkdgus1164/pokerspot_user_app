// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notices_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticesDto _$NoticesDtoFromJson(Map<String, dynamic> json) {
  return _NoticesDto.fromJson(json);
}

/// @nodoc
mixin _$NoticesDto {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<NoticeDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticesDtoCopyWith<NoticesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticesDtoCopyWith<$Res> {
  factory $NoticesDtoCopyWith(
          NoticesDto value, $Res Function(NoticesDto) then) =
      _$NoticesDtoCopyWithImpl<$Res, NoticesDto>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPage,
      int totalCount,
      List<NoticeDto> items});
}

/// @nodoc
class _$NoticesDtoCopyWithImpl<$Res, $Val extends NoticesDto>
    implements $NoticesDtoCopyWith<$Res> {
  _$NoticesDtoCopyWithImpl(this._value, this._then);

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
              as List<NoticeDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticesDtoImplCopyWith<$Res>
    implements $NoticesDtoCopyWith<$Res> {
  factory _$$NoticesDtoImplCopyWith(
          _$NoticesDtoImpl value, $Res Function(_$NoticesDtoImpl) then) =
      __$$NoticesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPage,
      int totalCount,
      List<NoticeDto> items});
}

/// @nodoc
class __$$NoticesDtoImplCopyWithImpl<$Res>
    extends _$NoticesDtoCopyWithImpl<$Res, _$NoticesDtoImpl>
    implements _$$NoticesDtoImplCopyWith<$Res> {
  __$$NoticesDtoImplCopyWithImpl(
      _$NoticesDtoImpl _value, $Res Function(_$NoticesDtoImpl) _then)
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
    return _then(_$NoticesDtoImpl(
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
              as List<NoticeDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticesDtoImpl implements _NoticesDto {
  _$NoticesDtoImpl(
      {required this.page,
      required this.perPage,
      required this.totalPage,
      required this.totalCount,
      required final List<NoticeDto> items})
      : _items = items;

  factory _$NoticesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticesDtoImplFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalPage;
  @override
  final int totalCount;
  final List<NoticeDto> _items;
  @override
  List<NoticeDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'NoticesDto(page: $page, perPage: $perPage, totalPage: $totalPage, totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticesDtoImpl &&
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
  _$$NoticesDtoImplCopyWith<_$NoticesDtoImpl> get copyWith =>
      __$$NoticesDtoImplCopyWithImpl<_$NoticesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticesDtoImplToJson(
      this,
    );
  }
}

abstract class _NoticesDto implements NoticesDto {
  factory _NoticesDto(
      {required final int page,
      required final int perPage,
      required final int totalPage,
      required final int totalCount,
      required final List<NoticeDto> items}) = _$NoticesDtoImpl;

  factory _NoticesDto.fromJson(Map<String, dynamic> json) =
      _$NoticesDtoImpl.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  List<NoticeDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$NoticesDtoImplCopyWith<_$NoticesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
