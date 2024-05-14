// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_operation_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByOperationStatusModel {
  OperationStatus get operationStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByOperationStatusModelCopyWith<FilterByOperationStatusModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByOperationStatusModelCopyWith<$Res> {
  factory $FilterByOperationStatusModelCopyWith(
          FilterByOperationStatusModel value,
          $Res Function(FilterByOperationStatusModel) then) =
      _$FilterByOperationStatusModelCopyWithImpl<$Res,
          FilterByOperationStatusModel>;
  @useResult
  $Res call({OperationStatus operationStatus});
}

/// @nodoc
class _$FilterByOperationStatusModelCopyWithImpl<$Res,
        $Val extends FilterByOperationStatusModel>
    implements $FilterByOperationStatusModelCopyWith<$Res> {
  _$FilterByOperationStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationStatus = null,
  }) {
    return _then(_value.copyWith(
      operationStatus: null == operationStatus
          ? _value.operationStatus
          : operationStatus // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByOperationStatusModelImplCopyWith<$Res>
    implements $FilterByOperationStatusModelCopyWith<$Res> {
  factory _$$FilterByOperationStatusModelImplCopyWith(
          _$FilterByOperationStatusModelImpl value,
          $Res Function(_$FilterByOperationStatusModelImpl) then) =
      __$$FilterByOperationStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OperationStatus operationStatus});
}

/// @nodoc
class __$$FilterByOperationStatusModelImplCopyWithImpl<$Res>
    extends _$FilterByOperationStatusModelCopyWithImpl<$Res,
        _$FilterByOperationStatusModelImpl>
    implements _$$FilterByOperationStatusModelImplCopyWith<$Res> {
  __$$FilterByOperationStatusModelImplCopyWithImpl(
      _$FilterByOperationStatusModelImpl _value,
      $Res Function(_$FilterByOperationStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationStatus = null,
  }) {
    return _then(_$FilterByOperationStatusModelImpl(
      operationStatus: null == operationStatus
          ? _value.operationStatus
          : operationStatus // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
    ));
  }
}

/// @nodoc

class _$FilterByOperationStatusModelImpl extends _FilterByOperationStatusModel {
  _$FilterByOperationStatusModelImpl(
      {this.operationStatus = OperationStatus.all})
      : super._();

  @override
  @JsonKey()
  final OperationStatus operationStatus;

  @override
  String toString() {
    return 'FilterByOperationStatusModel(operationStatus: $operationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByOperationStatusModelImpl &&
            (identical(other.operationStatus, operationStatus) ||
                other.operationStatus == operationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByOperationStatusModelImplCopyWith<
          _$FilterByOperationStatusModelImpl>
      get copyWith => __$$FilterByOperationStatusModelImplCopyWithImpl<
          _$FilterByOperationStatusModelImpl>(this, _$identity);
}

abstract class _FilterByOperationStatusModel
    extends FilterByOperationStatusModel {
  factory _FilterByOperationStatusModel(
          {final OperationStatus operationStatus}) =
      _$FilterByOperationStatusModelImpl;
  _FilterByOperationStatusModel._() : super._();

  @override
  OperationStatus get operationStatus;
  @override
  @JsonKey(ignore: true)
  _$$FilterByOperationStatusModelImplCopyWith<
          _$FilterByOperationStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
