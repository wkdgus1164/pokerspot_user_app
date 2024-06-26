// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_game_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByGameTypeModel {
  GameType get gameType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByGameTypeModelCopyWith<FilterByGameTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByGameTypeModelCopyWith<$Res> {
  factory $FilterByGameTypeModelCopyWith(FilterByGameTypeModel value,
          $Res Function(FilterByGameTypeModel) then) =
      _$FilterByGameTypeModelCopyWithImpl<$Res, FilterByGameTypeModel>;
  @useResult
  $Res call({GameType gameType});
}

/// @nodoc
class _$FilterByGameTypeModelCopyWithImpl<$Res,
        $Val extends FilterByGameTypeModel>
    implements $FilterByGameTypeModelCopyWith<$Res> {
  _$FilterByGameTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
  }) {
    return _then(_value.copyWith(
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByGameTypeModelImplCopyWith<$Res>
    implements $FilterByGameTypeModelCopyWith<$Res> {
  factory _$$FilterByGameTypeModelImplCopyWith(
          _$FilterByGameTypeModelImpl value,
          $Res Function(_$FilterByGameTypeModelImpl) then) =
      __$$FilterByGameTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameType gameType});
}

/// @nodoc
class __$$FilterByGameTypeModelImplCopyWithImpl<$Res>
    extends _$FilterByGameTypeModelCopyWithImpl<$Res,
        _$FilterByGameTypeModelImpl>
    implements _$$FilterByGameTypeModelImplCopyWith<$Res> {
  __$$FilterByGameTypeModelImplCopyWithImpl(_$FilterByGameTypeModelImpl _value,
      $Res Function(_$FilterByGameTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
  }) {
    return _then(_$FilterByGameTypeModelImpl(
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType,
    ));
  }
}

/// @nodoc

class _$FilterByGameTypeModelImpl extends _FilterByGameTypeModel {
  _$FilterByGameTypeModelImpl({this.gameType = GameType.ALL}) : super._();

  @override
  @JsonKey()
  final GameType gameType;

  @override
  String toString() {
    return 'FilterByGameTypeModel(gameType: $gameType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByGameTypeModelImpl &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByGameTypeModelImplCopyWith<_$FilterByGameTypeModelImpl>
      get copyWith => __$$FilterByGameTypeModelImplCopyWithImpl<
          _$FilterByGameTypeModelImpl>(this, _$identity);
}

abstract class _FilterByGameTypeModel extends FilterByGameTypeModel {
  factory _FilterByGameTypeModel({final GameType gameType}) =
      _$FilterByGameTypeModelImpl;
  _FilterByGameTypeModel._() : super._();

  @override
  GameType get gameType;
  @override
  @JsonKey(ignore: true)
  _$$FilterByGameTypeModelImplCopyWith<_$FilterByGameTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
