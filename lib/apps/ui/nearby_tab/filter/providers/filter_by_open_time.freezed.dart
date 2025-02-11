// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_open_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByOpenTimeModel {
  int get minTime => throw _privateConstructorUsedError;
  int get maxTime => throw _privateConstructorUsedError;

  /// Create a copy of FilterByOpenTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterByOpenTimeModelCopyWith<FilterByOpenTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByOpenTimeModelCopyWith<$Res> {
  factory $FilterByOpenTimeModelCopyWith(FilterByOpenTimeModel value,
          $Res Function(FilterByOpenTimeModel) then) =
      _$FilterByOpenTimeModelCopyWithImpl<$Res, FilterByOpenTimeModel>;
  @useResult
  $Res call({int minTime, int maxTime});
}

/// @nodoc
class _$FilterByOpenTimeModelCopyWithImpl<$Res,
        $Val extends FilterByOpenTimeModel>
    implements $FilterByOpenTimeModelCopyWith<$Res> {
  _$FilterByOpenTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterByOpenTimeModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$FilterByOpenTimeModelImplCopyWith<$Res>
    implements $FilterByOpenTimeModelCopyWith<$Res> {
  factory _$$FilterByOpenTimeModelImplCopyWith(
          _$FilterByOpenTimeModelImpl value,
          $Res Function(_$FilterByOpenTimeModelImpl) then) =
      __$$FilterByOpenTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minTime, int maxTime});
}

/// @nodoc
class __$$FilterByOpenTimeModelImplCopyWithImpl<$Res>
    extends _$FilterByOpenTimeModelCopyWithImpl<$Res,
        _$FilterByOpenTimeModelImpl>
    implements _$$FilterByOpenTimeModelImplCopyWith<$Res> {
  __$$FilterByOpenTimeModelImplCopyWithImpl(_$FilterByOpenTimeModelImpl _value,
      $Res Function(_$FilterByOpenTimeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterByOpenTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTime = null,
    Object? maxTime = null,
  }) {
    return _then(_$FilterByOpenTimeModelImpl(
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

class _$FilterByOpenTimeModelImpl extends _FilterByOpenTimeModel {
  _$FilterByOpenTimeModelImpl({this.minTime = 0, this.maxTime = 23})
      : super._();

  @override
  @JsonKey()
  final int minTime;
  @override
  @JsonKey()
  final int maxTime;

  @override
  String toString() {
    return 'FilterByOpenTimeModel(minTime: $minTime, maxTime: $maxTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByOpenTimeModelImpl &&
            (identical(other.minTime, minTime) || other.minTime == minTime) &&
            (identical(other.maxTime, maxTime) || other.maxTime == maxTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minTime, maxTime);

  /// Create a copy of FilterByOpenTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByOpenTimeModelImplCopyWith<_$FilterByOpenTimeModelImpl>
      get copyWith => __$$FilterByOpenTimeModelImplCopyWithImpl<
          _$FilterByOpenTimeModelImpl>(this, _$identity);
}

abstract class _FilterByOpenTimeModel extends FilterByOpenTimeModel {
  factory _FilterByOpenTimeModel({final int minTime, final int maxTime}) =
      _$FilterByOpenTimeModelImpl;
  _FilterByOpenTimeModel._() : super._();

  @override
  int get minTime;
  @override
  int get maxTime;

  /// Create a copy of FilterByOpenTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByOpenTimeModelImplCopyWith<_$FilterByOpenTimeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
