// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchKeywordModel {
  String get keyword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchKeywordModelCopyWith<SearchKeywordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchKeywordModelCopyWith<$Res> {
  factory $SearchKeywordModelCopyWith(
          SearchKeywordModel value, $Res Function(SearchKeywordModel) then) =
      _$SearchKeywordModelCopyWithImpl<$Res, SearchKeywordModel>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class _$SearchKeywordModelCopyWithImpl<$Res, $Val extends SearchKeywordModel>
    implements $SearchKeywordModelCopyWith<$Res> {
  _$SearchKeywordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchKeywordModelImplCopyWith<$Res>
    implements $SearchKeywordModelCopyWith<$Res> {
  factory _$$SearchKeywordModelImplCopyWith(_$SearchKeywordModelImpl value,
          $Res Function(_$SearchKeywordModelImpl) then) =
      __$$SearchKeywordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchKeywordModelImplCopyWithImpl<$Res>
    extends _$SearchKeywordModelCopyWithImpl<$Res, _$SearchKeywordModelImpl>
    implements _$$SearchKeywordModelImplCopyWith<$Res> {
  __$$SearchKeywordModelImplCopyWithImpl(_$SearchKeywordModelImpl _value,
      $Res Function(_$SearchKeywordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$SearchKeywordModelImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchKeywordModelImpl extends _SearchKeywordModel {
  _$SearchKeywordModelImpl({this.keyword = ""}) : super._();

  @override
  @JsonKey()
  final String keyword;

  @override
  String toString() {
    return 'SearchKeywordModel(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchKeywordModelImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchKeywordModelImplCopyWith<_$SearchKeywordModelImpl> get copyWith =>
      __$$SearchKeywordModelImplCopyWithImpl<_$SearchKeywordModelImpl>(
          this, _$identity);
}

abstract class _SearchKeywordModel extends SearchKeywordModel {
  factory _SearchKeywordModel({final String keyword}) =
      _$SearchKeywordModelImpl;
  _SearchKeywordModel._() : super._();

  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$SearchKeywordModelImplCopyWith<_$SearchKeywordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
