// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_min_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByMinRewardModel {
  int get minReward => throw _privateConstructorUsedError;

  /// Create a copy of FilterByMinRewardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterByMinRewardModelCopyWith<FilterByMinRewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByMinRewardModelCopyWith<$Res> {
  factory $FilterByMinRewardModelCopyWith(FilterByMinRewardModel value,
          $Res Function(FilterByMinRewardModel) then) =
      _$FilterByMinRewardModelCopyWithImpl<$Res, FilterByMinRewardModel>;
  @useResult
  $Res call({int minReward});
}

/// @nodoc
class _$FilterByMinRewardModelCopyWithImpl<$Res,
        $Val extends FilterByMinRewardModel>
    implements $FilterByMinRewardModelCopyWith<$Res> {
  _$FilterByMinRewardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterByMinRewardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minReward = null,
  }) {
    return _then(_value.copyWith(
      minReward: null == minReward
          ? _value.minReward
          : minReward // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByMinRewardModelImplCopyWith<$Res>
    implements $FilterByMinRewardModelCopyWith<$Res> {
  factory _$$FilterByMinRewardModelImplCopyWith(
          _$FilterByMinRewardModelImpl value,
          $Res Function(_$FilterByMinRewardModelImpl) then) =
      __$$FilterByMinRewardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minReward});
}

/// @nodoc
class __$$FilterByMinRewardModelImplCopyWithImpl<$Res>
    extends _$FilterByMinRewardModelCopyWithImpl<$Res,
        _$FilterByMinRewardModelImpl>
    implements _$$FilterByMinRewardModelImplCopyWith<$Res> {
  __$$FilterByMinRewardModelImplCopyWithImpl(
      _$FilterByMinRewardModelImpl _value,
      $Res Function(_$FilterByMinRewardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterByMinRewardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minReward = null,
  }) {
    return _then(_$FilterByMinRewardModelImpl(
      minReward: null == minReward
          ? _value.minReward
          : minReward // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterByMinRewardModelImpl extends _FilterByMinRewardModel {
  _$FilterByMinRewardModelImpl({this.minReward = 50}) : super._();

  @override
  @JsonKey()
  final int minReward;

  @override
  String toString() {
    return 'FilterByMinRewardModel(minReward: $minReward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByMinRewardModelImpl &&
            (identical(other.minReward, minReward) ||
                other.minReward == minReward));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minReward);

  /// Create a copy of FilterByMinRewardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByMinRewardModelImplCopyWith<_$FilterByMinRewardModelImpl>
      get copyWith => __$$FilterByMinRewardModelImplCopyWithImpl<
          _$FilterByMinRewardModelImpl>(this, _$identity);
}

abstract class _FilterByMinRewardModel extends FilterByMinRewardModel {
  factory _FilterByMinRewardModel({final int minReward}) =
      _$FilterByMinRewardModelImpl;
  _FilterByMinRewardModel._() : super._();

  @override
  int get minReward;

  /// Create a copy of FilterByMinRewardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByMinRewardModelImplCopyWith<_$FilterByMinRewardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
