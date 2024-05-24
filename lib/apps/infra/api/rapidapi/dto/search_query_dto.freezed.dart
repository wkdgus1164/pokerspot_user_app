// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) {
  return _SearchQuery.fromJson(json);
}

/// @nodoc
mixin _$SearchQuery {
  String get query => throw _privateConstructorUsedError;
  String get limit => throw _privateConstructorUsedError;
  String get related_keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchQueryCopyWith<SearchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCopyWith<$Res> {
  factory $SearchQueryCopyWith(
          SearchQuery value, $Res Function(SearchQuery) then) =
      _$SearchQueryCopyWithImpl<$Res, SearchQuery>;
  @useResult
  $Res call({String query, String limit, String related_keywords});
}

/// @nodoc
class _$SearchQueryCopyWithImpl<$Res, $Val extends SearchQuery>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? limit = null,
    Object? related_keywords = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      related_keywords: null == related_keywords
          ? _value.related_keywords
          : related_keywords // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchQueryImplCopyWith<$Res>
    implements $SearchQueryCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
          _$SearchQueryImpl value, $Res Function(_$SearchQueryImpl) then) =
      __$$SearchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, String limit, String related_keywords});
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchQueryCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
      _$SearchQueryImpl _value, $Res Function(_$SearchQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? limit = null,
    Object? related_keywords = null,
  }) {
    return _then(_$SearchQueryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      related_keywords: null == related_keywords
          ? _value.related_keywords
          : related_keywords // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchQueryImpl implements _SearchQuery {
  _$SearchQueryImpl(
      {required this.query,
      required this.limit,
      required this.related_keywords});

  factory _$SearchQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchQueryImplFromJson(json);

  @override
  final String query;
  @override
  final String limit;
  @override
  final String related_keywords;

  @override
  String toString() {
    return 'SearchQuery(query: $query, limit: $limit, related_keywords: $related_keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.related_keywords, related_keywords) ||
                other.related_keywords == related_keywords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, limit, related_keywords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchQueryImplToJson(
      this,
    );
  }
}

abstract class _SearchQuery implements SearchQuery {
  factory _SearchQuery(
      {required final String query,
      required final String limit,
      required final String related_keywords}) = _$SearchQueryImpl;

  factory _SearchQuery.fromJson(Map<String, dynamic> json) =
      _$SearchQueryImpl.fromJson;

  @override
  String get query;
  @override
  String get limit;
  @override
  String get related_keywords;
  @override
  @JsonKey(ignore: true)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
