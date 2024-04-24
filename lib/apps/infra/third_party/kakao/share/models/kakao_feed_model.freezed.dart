// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kakao_feed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KakaoFeedModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KakaoFeedModelCopyWith<KakaoFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoFeedModelCopyWith<$Res> {
  factory $KakaoFeedModelCopyWith(
          KakaoFeedModel value, $Res Function(KakaoFeedModel) then) =
      _$KakaoFeedModelCopyWithImpl<$Res, KakaoFeedModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String thumbnail,
      String authorName,
      String profileImageUrl});
}

/// @nodoc
class _$KakaoFeedModelCopyWithImpl<$Res, $Val extends KakaoFeedModel>
    implements $KakaoFeedModelCopyWith<$Res> {
  _$KakaoFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnail = null,
    Object? authorName = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KakaoFeedModelImplCopyWith<$Res>
    implements $KakaoFeedModelCopyWith<$Res> {
  factory _$$KakaoFeedModelImplCopyWith(_$KakaoFeedModelImpl value,
          $Res Function(_$KakaoFeedModelImpl) then) =
      __$$KakaoFeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String thumbnail,
      String authorName,
      String profileImageUrl});
}

/// @nodoc
class __$$KakaoFeedModelImplCopyWithImpl<$Res>
    extends _$KakaoFeedModelCopyWithImpl<$Res, _$KakaoFeedModelImpl>
    implements _$$KakaoFeedModelImplCopyWith<$Res> {
  __$$KakaoFeedModelImplCopyWithImpl(
      _$KakaoFeedModelImpl _value, $Res Function(_$KakaoFeedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnail = null,
    Object? authorName = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_$KakaoFeedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KakaoFeedModelImpl extends _KakaoFeedModel {
  _$KakaoFeedModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.thumbnail,
      required this.authorName,
      required this.profileImageUrl})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String thumbnail;
  @override
  final String authorName;
  @override
  final String profileImageUrl;

  @override
  String toString() {
    return 'KakaoFeedModel(id: $id, title: $title, description: $description, thumbnail: $thumbnail, authorName: $authorName, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KakaoFeedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      thumbnail, authorName, profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KakaoFeedModelImplCopyWith<_$KakaoFeedModelImpl> get copyWith =>
      __$$KakaoFeedModelImplCopyWithImpl<_$KakaoFeedModelImpl>(
          this, _$identity);
}

abstract class _KakaoFeedModel extends KakaoFeedModel {
  factory _KakaoFeedModel(
      {required final int id,
      required final String title,
      required final String description,
      required final String thumbnail,
      required final String authorName,
      required final String profileImageUrl}) = _$KakaoFeedModelImpl;
  _KakaoFeedModel._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get thumbnail;
  @override
  String get authorName;
  @override
  String get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$KakaoFeedModelImplCopyWith<_$KakaoFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
