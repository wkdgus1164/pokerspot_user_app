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

SearchResultListDto _$SearchResultListDtoFromJson(Map<String, dynamic> json) {
  return _SearchResultListDto.fromJson(json);
}

/// @nodoc
mixin _$SearchResultListDto {
  String get search_term => throw _privateConstructorUsedError;
  List<SearchResultDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultListDtoCopyWith<SearchResultListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultListDtoCopyWith<$Res> {
  factory $SearchResultListDtoCopyWith(
          SearchResultListDto value, $Res Function(SearchResultListDto) then) =
      _$SearchResultListDtoCopyWithImpl<$Res, SearchResultListDto>;
  @useResult
  $Res call({String search_term, List<SearchResultDto> results});
}

/// @nodoc
class _$SearchResultListDtoCopyWithImpl<$Res, $Val extends SearchResultListDto>
    implements $SearchResultListDtoCopyWith<$Res> {
  _$SearchResultListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_term = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      search_term: null == search_term
          ? _value.search_term
          : search_term // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultListDtoImplCopyWith<$Res>
    implements $SearchResultListDtoCopyWith<$Res> {
  factory _$$SearchResultListDtoImplCopyWith(_$SearchResultListDtoImpl value,
          $Res Function(_$SearchResultListDtoImpl) then) =
      __$$SearchResultListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search_term, List<SearchResultDto> results});
}

/// @nodoc
class __$$SearchResultListDtoImplCopyWithImpl<$Res>
    extends _$SearchResultListDtoCopyWithImpl<$Res, _$SearchResultListDtoImpl>
    implements _$$SearchResultListDtoImplCopyWith<$Res> {
  __$$SearchResultListDtoImplCopyWithImpl(_$SearchResultListDtoImpl _value,
      $Res Function(_$SearchResultListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_term = null,
    Object? results = null,
  }) {
    return _then(_$SearchResultListDtoImpl(
      search_term: null == search_term
          ? _value.search_term
          : search_term // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultListDtoImpl implements _SearchResultListDto {
  _$SearchResultListDtoImpl(
      {required this.search_term, required final List<SearchResultDto> results})
      : _results = results;

  factory _$SearchResultListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultListDtoImplFromJson(json);

  @override
  final String search_term;
  final List<SearchResultDto> _results;
  @override
  List<SearchResultDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchResultListDto(search_term: $search_term, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultListDtoImpl &&
            (identical(other.search_term, search_term) ||
                other.search_term == search_term) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, search_term, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultListDtoImplCopyWith<_$SearchResultListDtoImpl> get copyWith =>
      __$$SearchResultListDtoImplCopyWithImpl<_$SearchResultListDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultListDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchResultListDto implements SearchResultListDto {
  factory _SearchResultListDto(
          {required final String search_term,
          required final List<SearchResultDto> results}) =
      _$SearchResultListDtoImpl;

  factory _SearchResultListDto.fromJson(Map<String, dynamic> json) =
      _$SearchResultListDtoImpl.fromJson;

  @override
  String get search_term;
  @override
  List<SearchResultDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultListDtoImplCopyWith<_$SearchResultListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultDto _$SearchResultDtoFromJson(Map<String, dynamic> json) {
  return _SearchResultDto.fromJson(json);
}

/// @nodoc
mixin _$SearchResultDto {
  int get position => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDtoCopyWith<SearchResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDtoCopyWith<$Res> {
  factory $SearchResultDtoCopyWith(
          SearchResultDto value, $Res Function(SearchResultDto) then) =
      _$SearchResultDtoCopyWithImpl<$Res, SearchResultDto>;
  @useResult
  $Res call({int position, String url, String title, String description});
}

/// @nodoc
class _$SearchResultDtoCopyWithImpl<$Res, $Val extends SearchResultDto>
    implements $SearchResultDtoCopyWith<$Res> {
  _$SearchResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? url = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultDtoImplCopyWith<$Res>
    implements $SearchResultDtoCopyWith<$Res> {
  factory _$$SearchResultDtoImplCopyWith(_$SearchResultDtoImpl value,
          $Res Function(_$SearchResultDtoImpl) then) =
      __$$SearchResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, String url, String title, String description});
}

/// @nodoc
class __$$SearchResultDtoImplCopyWithImpl<$Res>
    extends _$SearchResultDtoCopyWithImpl<$Res, _$SearchResultDtoImpl>
    implements _$$SearchResultDtoImplCopyWith<$Res> {
  __$$SearchResultDtoImplCopyWithImpl(
      _$SearchResultDtoImpl _value, $Res Function(_$SearchResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? url = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$SearchResultDtoImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultDtoImpl implements _SearchResultDto {
  _$SearchResultDtoImpl(
      {required this.position,
      required this.url,
      required this.title,
      required this.description});

  factory _$SearchResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultDtoImplFromJson(json);

  @override
  final int position;
  @override
  final String url;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'SearchResultDto(position: $position, url: $url, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultDtoImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, url, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultDtoImplCopyWith<_$SearchResultDtoImpl> get copyWith =>
      __$$SearchResultDtoImplCopyWithImpl<_$SearchResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchResultDto implements SearchResultDto {
  factory _SearchResultDto(
      {required final int position,
      required final String url,
      required final String title,
      required final String description}) = _$SearchResultDtoImpl;

  factory _SearchResultDto.fromJson(Map<String, dynamic> json) =
      _$SearchResultDtoImpl.fromJson;

  @override
  int get position;
  @override
  String get url;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultDtoImplCopyWith<_$SearchResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
