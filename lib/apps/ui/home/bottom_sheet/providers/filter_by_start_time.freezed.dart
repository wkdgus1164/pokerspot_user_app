// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_start_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByStartTimeModel {
  int get minTime => throw _privateConstructorUsedError;
  int get maxTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByStartTimeModelCopyWith<FilterByStartTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByStartTimeModelCopyWith<$Res> {
  factory $FilterByStartTimeModelCopyWith(FilterByStartTimeModel value,
          $Res Function(FilterByStartTimeModel) then) =
      _$FilterByStartTimeModelCopyWithImpl<$Res, FilterByStartTimeModel>;
  @useResult
  $Res call({int minTime, int maxTime});
}

/// @nodoc
class _$FilterByStartTimeModelCopyWithImpl<$Res,
        $Val extends FilterByStartTimeModel>
    implements $FilterByStartTimeModelCopyWith<$Res> {
  _$FilterByStartTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTime = null,
    Object? maxTime = null,
  }) {
    return _then(_value.copyWith(
      minTime: null == minTime
          ? _value.minTime
          : minTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByStartTimeModelImplCopyWith<$Res>
    implements $FilterByStartTimeModelCopyWith<$Res> {
  factory _$$FilterByStartTimeModelImplCopyWith(
          _$FilterByStartTimeModelImpl value,
          $Res Function(_$FilterByStartTimeModelImpl) then) =
      __$$FilterByStartTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minTime, int maxTime});
}

/// @nodoc
class __$$FilterByStartTimeModelImplCopyWithImpl<$Res>
    extends _$FilterByStartTimeModelCopyWithImpl<$Res,
        _$FilterByStartTimeModelImpl>
    implements _$$FilterByStartTimeModelImplCopyWith<$Res> {
  __$$FilterByStartTimeModelImplCopyWithImpl(
      _$FilterByStartTimeModelImpl _value,
      $Res Function(_$FilterByStartTimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTime = null,
    Object? maxTime = null,
  }) {
    return _then(_$FilterByStartTimeModelImpl(
      minTime: null == minTime
          ? _value.minTime
          : minTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxTime: null == maxTime
          ? _value.maxTime
          : maxTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterByStartTimeModelImpl extends _FilterByStartTimeModel {
  _$FilterByStartTimeModelImpl({this.minTime = 0, this.maxTime = 23})
      : super._();

  @override
  @JsonKey()
  final int minTime;
  @override
  @JsonKey()
  final int maxTime;

  @override
  String toString() {
    return 'FilterByStartTimeModel(minTime: $minTime, maxTime: $maxTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByStartTimeModelImpl &&
            (identical(other.minTime, minTime) || other.minTime == minTime) &&
            (identical(other.maxTime, maxTime) || other.maxTime == maxTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minTime, maxTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByStartTimeModelImplCopyWith<_$FilterByStartTimeModelImpl>
      get copyWith => __$$FilterByStartTimeModelImplCopyWithImpl<
          _$FilterByStartTimeModelImpl>(this, _$identity);
}

abstract class _FilterByStartTimeModel extends FilterByStartTimeModel {
  factory _FilterByStartTimeModel({final int minTime, final int maxTime}) =
      _$FilterByStartTimeModelImpl;
  _FilterByStartTimeModel._() : super._();

  @override
  int get minTime;
  @override
  int get maxTime;
  @override
  @JsonKey(ignore: true)
  _$$FilterByStartTimeModelImplCopyWith<_$FilterByStartTimeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
