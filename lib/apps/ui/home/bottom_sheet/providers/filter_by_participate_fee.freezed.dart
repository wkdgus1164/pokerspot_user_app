// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_participate_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByParticipateFeeModel {
  double get minTicket => throw _privateConstructorUsedError;
  double get maxTicket => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByParticipateFeeModelCopyWith<FilterByParticipateFeeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByParticipateFeeModelCopyWith<$Res> {
  factory $FilterByParticipateFeeModelCopyWith(
          FilterByParticipateFeeModel value,
          $Res Function(FilterByParticipateFeeModel) then) =
      _$FilterByParticipateFeeModelCopyWithImpl<$Res,
          FilterByParticipateFeeModel>;
  @useResult
  $Res call({double minTicket, double maxTicket});
}

/// @nodoc
class _$FilterByParticipateFeeModelCopyWithImpl<$Res,
        $Val extends FilterByParticipateFeeModel>
    implements $FilterByParticipateFeeModelCopyWith<$Res> {
  _$FilterByParticipateFeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTicket = null,
    Object? maxTicket = null,
  }) {
    return _then(_value.copyWith(
      minTicket: null == minTicket
          ? _value.minTicket
          : minTicket // ignore: cast_nullable_to_non_nullable
              as double,
      maxTicket: null == maxTicket
          ? _value.maxTicket
          : maxTicket // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByParticipageFeeModelImplCopyWith<$Res>
    implements $FilterByParticipateFeeModelCopyWith<$Res> {
  factory _$$FilterByParticipageFeeModelImplCopyWith(
          _$FilterByParticipageFeeModelImpl value,
          $Res Function(_$FilterByParticipageFeeModelImpl) then) =
      __$$FilterByParticipageFeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double minTicket, double maxTicket});
}

/// @nodoc
class __$$FilterByParticipageFeeModelImplCopyWithImpl<$Res>
    extends _$FilterByParticipateFeeModelCopyWithImpl<$Res,
        _$FilterByParticipageFeeModelImpl>
    implements _$$FilterByParticipageFeeModelImplCopyWith<$Res> {
  __$$FilterByParticipageFeeModelImplCopyWithImpl(
      _$FilterByParticipageFeeModelImpl _value,
      $Res Function(_$FilterByParticipageFeeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTicket = null,
    Object? maxTicket = null,
  }) {
    return _then(_$FilterByParticipageFeeModelImpl(
      minTicket: null == minTicket
          ? _value.minTicket
          : minTicket // ignore: cast_nullable_to_non_nullable
              as double,
      maxTicket: null == maxTicket
          ? _value.maxTicket
          : maxTicket // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FilterByParticipageFeeModelImpl extends _FilterByParticipageFeeModel {
  _$FilterByParticipageFeeModelImpl({this.minTicket = 1, this.maxTicket = 30})
      : super._();

  @override
  @JsonKey()
  final double minTicket;
  @override
  @JsonKey()
  final double maxTicket;

  @override
  String toString() {
    return 'FilterByParticipateFeeModel(minTicket: $minTicket, maxTicket: $maxTicket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByParticipageFeeModelImpl &&
            (identical(other.minTicket, minTicket) ||
                other.minTicket == minTicket) &&
            (identical(other.maxTicket, maxTicket) ||
                other.maxTicket == maxTicket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minTicket, maxTicket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByParticipageFeeModelImplCopyWith<_$FilterByParticipageFeeModelImpl>
      get copyWith => __$$FilterByParticipageFeeModelImplCopyWithImpl<
          _$FilterByParticipageFeeModelImpl>(this, _$identity);
}

abstract class _FilterByParticipageFeeModel
    extends FilterByParticipateFeeModel {
  factory _FilterByParticipageFeeModel(
      {final double minTicket,
      final double maxTicket}) = _$FilterByParticipageFeeModelImpl;
  _FilterByParticipageFeeModel._() : super._();

  @override
  double get minTicket;
  @override
  double get maxTicket;
  @override
  @JsonKey(ignore: true)
  _$$FilterByParticipageFeeModelImplCopyWith<_$FilterByParticipageFeeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
