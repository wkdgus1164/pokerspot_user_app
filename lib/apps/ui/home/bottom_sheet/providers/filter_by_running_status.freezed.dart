// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_running_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByRunningStatusModel {
  RunningStatus get runningStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByRunningStatusModelCopyWith<FilterByRunningStatusModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByRunningStatusModelCopyWith<$Res> {
  factory $FilterByRunningStatusModelCopyWith(FilterByRunningStatusModel value,
          $Res Function(FilterByRunningStatusModel) then) =
      _$FilterByRunningStatusModelCopyWithImpl<$Res,
          FilterByRunningStatusModel>;
  @useResult
  $Res call({RunningStatus runningStatus});
}

/// @nodoc
class _$FilterByRunningStatusModelCopyWithImpl<$Res,
        $Val extends FilterByRunningStatusModel>
    implements $FilterByRunningStatusModelCopyWith<$Res> {
  _$FilterByRunningStatusModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FilterByRunningStatusModelImplCopyWith<$Res>
    implements $FilterByRunningStatusModelCopyWith<$Res> {
  factory _$$FilterByRunningStatusModelImplCopyWith(
          _$FilterByRunningStatusModelImpl value,
          $Res Function(_$FilterByRunningStatusModelImpl) then) =
      __$$FilterByRunningStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RunningStatus runningStatus});
}

/// @nodoc
class __$$FilterByRunningStatusModelImplCopyWithImpl<$Res>
    extends _$FilterByRunningStatusModelCopyWithImpl<$Res,
        _$FilterByRunningStatusModelImpl>
    implements _$$FilterByRunningStatusModelImplCopyWith<$Res> {
  __$$FilterByRunningStatusModelImplCopyWithImpl(
      _$FilterByRunningStatusModelImpl _value,
      $Res Function(_$FilterByRunningStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningStatus = null,
  }) {
    return _then(_$FilterByRunningStatusModelImpl(
      runningStatus: null == runningStatus
          ? _value.runningStatus
          : runningStatus // ignore: cast_nullable_to_non_nullable
              as RunningStatus,
    ));
  }
}

/// @nodoc

class _$FilterByRunningStatusModelImpl extends _FilterByRunningStatusModel {
  _$FilterByRunningStatusModelImpl({this.runningStatus = RunningStatus.all})
      : super._();

  @override
  @JsonKey()
  final RunningStatus runningStatus;

  @override
  String toString() {
    return 'FilterByRunningStatusModel(runningStatus: $runningStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByRunningStatusModelImpl &&
            (identical(other.runningStatus, runningStatus) ||
                other.runningStatus == runningStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, runningStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByRunningStatusModelImplCopyWith<_$FilterByRunningStatusModelImpl>
      get copyWith => __$$FilterByRunningStatusModelImplCopyWithImpl<
          _$FilterByRunningStatusModelImpl>(this, _$identity);
}

abstract class _FilterByRunningStatusModel extends FilterByRunningStatusModel {
  factory _FilterByRunningStatusModel({final RunningStatus runningStatus}) =
      _$FilterByRunningStatusModelImpl;
  _FilterByRunningStatusModel._() : super._();

  @override
  RunningStatus get runningStatus;
  @override
  @JsonKey(ignore: true)
  _$$FilterByRunningStatusModelImplCopyWith<_$FilterByRunningStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
