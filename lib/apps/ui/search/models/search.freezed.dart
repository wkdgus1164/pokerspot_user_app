// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchListResultModel {
  String get search_term => throw _privateConstructorUsedError;
  String? get knowledge_panel => throw _privateConstructorUsedError;
  List<SearchResultModel> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchListResultModelCopyWith<SearchListResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchListResultModelCopyWith<$Res> {
  factory $SearchListResultModelCopyWith(SearchListResultModel value,
          $Res Function(SearchListResultModel) then) =
      _$SearchListResultModelCopyWithImpl<$Res, SearchListResultModel>;
  @useResult
  $Res call(
      {String search_term,
      String? knowledge_panel,
      List<SearchResultModel> results});
}

/// @nodoc
class _$SearchListResultModelCopyWithImpl<$Res,
        $Val extends SearchListResultModel>
    implements $SearchListResultModelCopyWith<$Res> {
  _$SearchListResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_term = null,
    Object? knowledge_panel = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      search_term: null == search_term
          ? _value.search_term
          : search_term // ignore: cast_nullable_to_non_nullable
              as String,
      knowledge_panel: freezed == knowledge_panel
          ? _value.knowledge_panel
          : knowledge_panel // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchListResultModelImplCopyWith<$Res>
    implements $SearchListResultModelCopyWith<$Res> {
  factory _$$SearchListResultModelImplCopyWith(
          _$SearchListResultModelImpl value,
          $Res Function(_$SearchListResultModelImpl) then) =
      __$$SearchListResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String search_term,
      String? knowledge_panel,
      List<SearchResultModel> results});
}

/// @nodoc
class __$$SearchListResultModelImplCopyWithImpl<$Res>
    extends _$SearchListResultModelCopyWithImpl<$Res,
        _$SearchListResultModelImpl>
    implements _$$SearchListResultModelImplCopyWith<$Res> {
  __$$SearchListResultModelImplCopyWithImpl(_$SearchListResultModelImpl _value,
      $Res Function(_$SearchListResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search_term = null,
    Object? knowledge_panel = freezed,
    Object? results = null,
  }) {
    return _then(_$SearchListResultModelImpl(
      search_term: null == search_term
          ? _value.search_term
          : search_term // ignore: cast_nullable_to_non_nullable
              as String,
      knowledge_panel: freezed == knowledge_panel
          ? _value.knowledge_panel
          : knowledge_panel // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultModel>,
    ));
  }
}

/// @nodoc

class _$SearchListResultModelImpl implements _SearchListResultModel {
  _$SearchListResultModelImpl(
      {required this.search_term,
      required this.knowledge_panel,
      required final List<SearchResultModel> results})
      : _results = results;

  @override
  final String search_term;
  @override
  final String? knowledge_panel;
  final List<SearchResultModel> _results;
  @override
  List<SearchResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchListResultModel(search_term: $search_term, knowledge_panel: $knowledge_panel, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchListResultModelImpl &&
            (identical(other.search_term, search_term) ||
                other.search_term == search_term) &&
            (identical(other.knowledge_panel, knowledge_panel) ||
                other.knowledge_panel == knowledge_panel) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search_term, knowledge_panel,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchListResultModelImplCopyWith<_$SearchListResultModelImpl>
      get copyWith => __$$SearchListResultModelImplCopyWithImpl<
          _$SearchListResultModelImpl>(this, _$identity);
}

abstract class _SearchListResultModel implements SearchListResultModel {
  factory _SearchListResultModel(
          {required final String search_term,
          required final String? knowledge_panel,
          required final List<SearchResultModel> results}) =
      _$SearchListResultModelImpl;

  @override
  String get search_term;
  @override
  String? get knowledge_panel;
  @override
  List<SearchResultModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchListResultModelImplCopyWith<_$SearchListResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchResultModel {
  int get position => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call({int position, String url, String title, String description});
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchResultModelImplCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$SearchResultModelImplCopyWith(_$SearchResultModelImpl value,
          $Res Function(_$SearchResultModelImpl) then) =
      __$$SearchResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, String url, String title, String description});
}

/// @nodoc
class __$$SearchResultModelImplCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$SearchResultModelImpl>
    implements _$$SearchResultModelImplCopyWith<$Res> {
  __$$SearchResultModelImplCopyWithImpl(_$SearchResultModelImpl _value,
      $Res Function(_$SearchResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? url = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$SearchResultModelImpl(
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

class _$SearchResultModelImpl implements _SearchResultModel {
  _$SearchResultModelImpl(
      {required this.position,
      required this.url,
      required this.title,
      required this.description});

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
    return 'SearchResultModel(position: $position, url: $url, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultModelImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, position, url, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultModelImplCopyWith<_$SearchResultModelImpl> get copyWith =>
      __$$SearchResultModelImplCopyWithImpl<_$SearchResultModelImpl>(
          this, _$identity);
}

abstract class _SearchResultModel implements SearchResultModel {
  factory _SearchResultModel(
      {required final int position,
      required final String url,
      required final String title,
      required final String description}) = _$SearchResultModelImpl;

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
  _$$SearchResultModelImplCopyWith<_$SearchResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
