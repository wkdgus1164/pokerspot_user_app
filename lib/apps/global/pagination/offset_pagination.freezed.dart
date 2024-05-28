// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offset_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WithOffsetPagination<T> {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  T get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithOffsetPaginationCopyWith<T, WithOffsetPagination<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithOffsetPaginationCopyWith<T, $Res> {
  factory $WithOffsetPaginationCopyWith(WithOffsetPagination<T> value,
          $Res Function(WithOffsetPagination<T>) then) =
      _$WithOffsetPaginationCopyWithImpl<T, $Res, WithOffsetPagination<T>>;
  @useResult
  $Res call({int page, int perPage, int totalPage, int totalCount, T items});
}

/// @nodoc
class _$WithOffsetPaginationCopyWithImpl<T, $Res,
        $Val extends WithOffsetPagination<T>>
    implements $WithOffsetPaginationCopyWith<T, $Res> {
  _$WithOffsetPaginationCopyWithImpl(this._value, this._then);

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
    Object? items = freezed,
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
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithOffsetPaginationImplCopyWith<T, $Res>
    implements $WithOffsetPaginationCopyWith<T, $Res> {
  factory _$$WithOffsetPaginationImplCopyWith(
          _$WithOffsetPaginationImpl<T> value,
          $Res Function(_$WithOffsetPaginationImpl<T>) then) =
      __$$WithOffsetPaginationImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int page, int perPage, int totalPage, int totalCount, T items});
}

/// @nodoc
class __$$WithOffsetPaginationImplCopyWithImpl<T, $Res>
    extends _$WithOffsetPaginationCopyWithImpl<T, $Res,
        _$WithOffsetPaginationImpl<T>>
    implements _$$WithOffsetPaginationImplCopyWith<T, $Res> {
  __$$WithOffsetPaginationImplCopyWithImpl(_$WithOffsetPaginationImpl<T> _value,
      $Res Function(_$WithOffsetPaginationImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalPage = null,
    Object? totalCount = null,
    Object? items = freezed,
  }) {
    return _then(_$WithOffsetPaginationImpl<T>(
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
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$WithOffsetPaginationImpl<T> implements _WithOffsetPagination<T> {
  _$WithOffsetPaginationImpl(
      {this.page = 1,
      this.perPage = 20,
      this.totalPage = 100,
      this.totalCount = 0,
      required this.items});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int totalPage;
  @override
  @JsonKey()
  final int totalCount;
  @override
  final T items;

  @override
  String toString() {
    return 'WithOffsetPagination<$T>(page: $page, perPage: $perPage, totalPage: $totalPage, totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithOffsetPaginationImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalPage,
      totalCount, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithOffsetPaginationImplCopyWith<T, _$WithOffsetPaginationImpl<T>>
      get copyWith => __$$WithOffsetPaginationImplCopyWithImpl<T,
          _$WithOffsetPaginationImpl<T>>(this, _$identity);
}

abstract class _WithOffsetPagination<T> implements WithOffsetPagination<T> {
  factory _WithOffsetPagination(
      {final int page,
      final int perPage,
      final int totalPage,
      final int totalCount,
      required final T items}) = _$WithOffsetPaginationImpl<T>;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  T get items;
  @override
  @JsonKey(ignore: true)
  _$$WithOffsetPaginationImplCopyWith<T, _$WithOffsetPaginationImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
