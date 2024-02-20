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
mixin _$OffsetPaginationMetaData {
  int get currentPage => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffsetPaginationMetaDataCopyWith<OffsetPaginationMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetPaginationMetaDataCopyWith<$Res> {
  factory $OffsetPaginationMetaDataCopyWith(OffsetPaginationMetaData value,
          $Res Function(OffsetPaginationMetaData) then) =
      _$OffsetPaginationMetaDataCopyWithImpl<$Res, OffsetPaginationMetaData>;
  @useResult
  $Res call({int currentPage, bool isLast});
}

/// @nodoc
class _$OffsetPaginationMetaDataCopyWithImpl<$Res,
        $Val extends OffsetPaginationMetaData>
    implements $OffsetPaginationMetaDataCopyWith<$Res> {
  _$OffsetPaginationMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffsetPaginationMetaDataImplCopyWith<$Res>
    implements $OffsetPaginationMetaDataCopyWith<$Res> {
  factory _$$OffsetPaginationMetaDataImplCopyWith(
          _$OffsetPaginationMetaDataImpl value,
          $Res Function(_$OffsetPaginationMetaDataImpl) then) =
      __$$OffsetPaginationMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, bool isLast});
}

/// @nodoc
class __$$OffsetPaginationMetaDataImplCopyWithImpl<$Res>
    extends _$OffsetPaginationMetaDataCopyWithImpl<$Res,
        _$OffsetPaginationMetaDataImpl>
    implements _$$OffsetPaginationMetaDataImplCopyWith<$Res> {
  __$$OffsetPaginationMetaDataImplCopyWithImpl(
      _$OffsetPaginationMetaDataImpl _value,
      $Res Function(_$OffsetPaginationMetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? isLast = null,
  }) {
    return _then(_$OffsetPaginationMetaDataImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OffsetPaginationMetaDataImpl implements _OffsetPaginationMetaData {
  _$OffsetPaginationMetaDataImpl({this.currentPage = 1, this.isLast = false});

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool isLast;

  @override
  String toString() {
    return 'OffsetPaginationMetaData(currentPage: $currentPage, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffsetPaginationMetaDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, isLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffsetPaginationMetaDataImplCopyWith<_$OffsetPaginationMetaDataImpl>
      get copyWith => __$$OffsetPaginationMetaDataImplCopyWithImpl<
          _$OffsetPaginationMetaDataImpl>(this, _$identity);
}

abstract class _OffsetPaginationMetaData implements OffsetPaginationMetaData {
  factory _OffsetPaginationMetaData(
      {final int currentPage,
      final bool isLast}) = _$OffsetPaginationMetaDataImpl;

  @override
  int get currentPage;
  @override
  bool get isLast;
  @override
  @JsonKey(ignore: true)
  _$$OffsetPaginationMetaDataImplCopyWith<_$OffsetPaginationMetaDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WithOffsetPagination<T> {
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
  $Res call({T items});
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
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({T items});
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
    Object? items = freezed,
  }) {
    return _then(_$WithOffsetPaginationImpl<T>(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$WithOffsetPaginationImpl<T> implements _WithOffsetPagination<T> {
  _$WithOffsetPaginationImpl({required this.items});

  @override
  final T items;

  @override
  String toString() {
    return 'WithOffsetPagination<$T>(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithOffsetPaginationImpl<T> &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithOffsetPaginationImplCopyWith<T, _$WithOffsetPaginationImpl<T>>
      get copyWith => __$$WithOffsetPaginationImplCopyWithImpl<T,
          _$WithOffsetPaginationImpl<T>>(this, _$identity);
}

abstract class _WithOffsetPagination<T> implements WithOffsetPagination<T> {
  factory _WithOffsetPagination({required final T items}) =
      _$WithOffsetPaginationImpl<T>;

  @override
  T get items;
  @override
  @JsonKey(ignore: true)
  _$$WithOffsetPaginationImplCopyWith<T, _$WithOffsetPaginationImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
