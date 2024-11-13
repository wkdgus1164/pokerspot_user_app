// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_v2_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoresV2Dto _$StoresV2DtoFromJson(Map<String, dynamic> json) {
  return _StoresV2Dto.fromJson(json);
}

/// @nodoc
mixin _$StoresV2Dto {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<StoreV2Dto> get items => throw _privateConstructorUsedError;

  /// Serializes this StoresV2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoresV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoresV2DtoCopyWith<StoresV2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresV2DtoCopyWith<$Res> {
  factory $StoresV2DtoCopyWith(
          StoresV2Dto value, $Res Function(StoresV2Dto) then) =
      _$StoresV2DtoCopyWithImpl<$Res, StoresV2Dto>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPage,
      int totalCount,
      List<StoreV2Dto> items});
}

/// @nodoc
class _$StoresV2DtoCopyWithImpl<$Res, $Val extends StoresV2Dto>
    implements $StoresV2DtoCopyWith<$Res> {
  _$StoresV2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoresV2Dto
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
              as List<StoreV2Dto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresV2DtoImplCopyWith<$Res>
    implements $StoresV2DtoCopyWith<$Res> {
  factory _$$StoresV2DtoImplCopyWith(
          _$StoresV2DtoImpl value, $Res Function(_$StoresV2DtoImpl) then) =
      __$$StoresV2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPage,
      int totalCount,
      List<StoreV2Dto> items});
}

/// @nodoc
class __$$StoresV2DtoImplCopyWithImpl<$Res>
    extends _$StoresV2DtoCopyWithImpl<$Res, _$StoresV2DtoImpl>
    implements _$$StoresV2DtoImplCopyWith<$Res> {
  __$$StoresV2DtoImplCopyWithImpl(
      _$StoresV2DtoImpl _value, $Res Function(_$StoresV2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresV2Dto
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
    return _then(_$StoresV2DtoImpl(
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
              as List<StoreV2Dto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresV2DtoImpl implements _StoresV2Dto {
  _$StoresV2DtoImpl(
      {required this.page,
      required this.perPage,
      required this.totalPage,
      required this.totalCount,
      required final List<StoreV2Dto> items})
      : _items = items;

  factory _$StoresV2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresV2DtoImplFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalPage;
  @override
  final int totalCount;
  final List<StoreV2Dto> _items;
  @override
  List<StoreV2Dto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'StoresV2Dto(page: $page, perPage: $perPage, totalPage: $totalPage, totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresV2DtoImpl &&
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

  /// Create a copy of StoresV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresV2DtoImplCopyWith<_$StoresV2DtoImpl> get copyWith =>
      __$$StoresV2DtoImplCopyWithImpl<_$StoresV2DtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresV2DtoImplToJson(
      this,
    );
  }
}

abstract class _StoresV2Dto implements StoresV2Dto {
  factory _StoresV2Dto(
      {required final int page,
      required final int perPage,
      required final int totalPage,
      required final int totalCount,
      required final List<StoreV2Dto> items}) = _$StoresV2DtoImpl;

  factory _StoresV2Dto.fromJson(Map<String, dynamic> json) =
      _$StoresV2DtoImpl.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  List<StoreV2Dto> get items;

  /// Create a copy of StoresV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoresV2DtoImplCopyWith<_$StoresV2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
