// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_running_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterRunningStatusModel {
  RunningStatus get runningStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterRunningStatusModelCopyWith<FilterRunningStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterRunningStatusModelCopyWith<$Res> {
  factory $FilterRunningStatusModelCopyWith(FilterRunningStatusModel value,
          $Res Function(FilterRunningStatusModel) then) =
      _$FilterRunningStatusModelCopyWithImpl<$Res, FilterRunningStatusModel>;
  @useResult
  $Res call({RunningStatus runningStatus});
}

/// @nodoc
class _$FilterRunningStatusModelCopyWithImpl<$Res,
        $Val extends FilterRunningStatusModel>
    implements $FilterRunningStatusModelCopyWith<$Res> {
  _$FilterRunningStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningStatus = null,
  }) {
    return _then(_value.copyWith(
      runningStatus: null == runningStatus
          ? _value.runningStatus
          : runningStatus // ignore: cast_nullable_to_non_nullable
              as RunningStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterRunningStatusModelImplCopyWith<$Res>
    implements $FilterRunningStatusModelCopyWith<$Res> {
  factory _$$FilterRunningStatusModelImplCopyWith(
          _$FilterRunningStatusModelImpl value,
          $Res Function(_$FilterRunningStatusModelImpl) then) =
      __$$FilterRunningStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RunningStatus runningStatus});
}

/// @nodoc
class __$$FilterRunningStatusModelImplCopyWithImpl<$Res>
    extends _$FilterRunningStatusModelCopyWithImpl<$Res,
        _$FilterRunningStatusModelImpl>
    implements _$$FilterRunningStatusModelImplCopyWith<$Res> {
  __$$FilterRunningStatusModelImplCopyWithImpl(
      _$FilterRunningStatusModelImpl _value,
      $Res Function(_$FilterRunningStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningStatus = null,
  }) {
    return _then(_$FilterRunningStatusModelImpl(
      runningStatus: null == runningStatus
          ? _value.runningStatus
          : runningStatus // ignore: cast_nullable_to_non_nullable
              as RunningStatus,
    ));
  }
}

/// @nodoc

class _$FilterRunningStatusModelImpl extends _FilterRunningStatusModel {
  _$FilterRunningStatusModelImpl({this.runningStatus = RunningStatus.all})
      : super._();

  @override
  @JsonKey()
  final RunningStatus runningStatus;

  @override
  String toString() {
    return 'FilterRunningStatusModel(runningStatus: $runningStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterRunningStatusModelImpl &&
            (identical(other.runningStatus, runningStatus) ||
                other.runningStatus == runningStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, runningStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterRunningStatusModelImplCopyWith<_$FilterRunningStatusModelImpl>
      get copyWith => __$$FilterRunningStatusModelImplCopyWithImpl<
          _$FilterRunningStatusModelImpl>(this, _$identity);
}

abstract class _FilterRunningStatusModel extends FilterRunningStatusModel {
  factory _FilterRunningStatusModel({final RunningStatus runningStatus}) =
      _$FilterRunningStatusModelImpl;
  _FilterRunningStatusModel._() : super._();

  @override
  RunningStatus get runningStatus;
  @override
  @JsonKey(ignore: true)
  _$$FilterRunningStatusModelImplCopyWith<_$FilterRunningStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
