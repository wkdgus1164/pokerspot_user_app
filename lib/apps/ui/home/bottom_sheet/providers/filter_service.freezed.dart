// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterServiceModel {
  String get isRunning => throw _privateConstructorUsedError;
  int get minOpenTime => throw _privateConstructorUsedError;
  int get maxOpenTime => throw _privateConstructorUsedError;
  String get gameType => throw _privateConstructorUsedError;
  int get minEntryPrice => throw _privateConstructorUsedError;
  int get maxEntryPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterServiceModelCopyWith<FilterServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterServiceModelCopyWith<$Res> {
  factory $FilterServiceModelCopyWith(
          FilterServiceModel value, $Res Function(FilterServiceModel) then) =
      _$FilterServiceModelCopyWithImpl<$Res, FilterServiceModel>;
  @useResult
  $Res call(
      {String isRunning,
      int minOpenTime,
      int maxOpenTime,
      String gameType,
      int minEntryPrice,
      int maxEntryPrice});
}

/// @nodoc
class _$FilterServiceModelCopyWithImpl<$Res, $Val extends FilterServiceModel>
    implements $FilterServiceModelCopyWith<$Res> {
  _$FilterServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRunning = null,
    Object? minOpenTime = null,
    Object? maxOpenTime = null,
    Object? gameType = null,
    Object? minEntryPrice = null,
    Object? maxEntryPrice = null,
  }) {
    return _then(_value.copyWith(
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as String,
      minOpenTime: null == minOpenTime
          ? _value.minOpenTime
          : minOpenTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxOpenTime: null == maxOpenTime
          ? _value.maxOpenTime
          : maxOpenTime // ignore: cast_nullable_to_non_nullable
              as int,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
      minEntryPrice: null == minEntryPrice
          ? _value.minEntryPrice
          : minEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxEntryPrice: null == maxEntryPrice
          ? _value.maxEntryPrice
          : maxEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterServiceModelImplCopyWith<$Res>
    implements $FilterServiceModelCopyWith<$Res> {
  factory _$$FilterServiceModelImplCopyWith(_$FilterServiceModelImpl value,
          $Res Function(_$FilterServiceModelImpl) then) =
      __$$FilterServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String isRunning,
      int minOpenTime,
      int maxOpenTime,
      String gameType,
      int minEntryPrice,
      int maxEntryPrice});
}

/// @nodoc
class __$$FilterServiceModelImplCopyWithImpl<$Res>
    extends _$FilterServiceModelCopyWithImpl<$Res, _$FilterServiceModelImpl>
    implements _$$FilterServiceModelImplCopyWith<$Res> {
  __$$FilterServiceModelImplCopyWithImpl(_$FilterServiceModelImpl _value,
      $Res Function(_$FilterServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRunning = null,
    Object? minOpenTime = null,
    Object? maxOpenTime = null,
    Object? gameType = null,
    Object? minEntryPrice = null,
    Object? maxEntryPrice = null,
  }) {
    return _then(_$FilterServiceModelImpl(
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as String,
      minOpenTime: null == minOpenTime
          ? _value.minOpenTime
          : minOpenTime // ignore: cast_nullable_to_non_nullable
              as int,
      maxOpenTime: null == maxOpenTime
          ? _value.maxOpenTime
          : maxOpenTime // ignore: cast_nullable_to_non_nullable
              as int,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
      minEntryPrice: null == minEntryPrice
          ? _value.minEntryPrice
          : minEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxEntryPrice: null == maxEntryPrice
          ? _value.maxEntryPrice
          : maxEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterServiceModelImpl extends _FilterServiceModel {
  _$FilterServiceModelImpl(
      {required this.isRunning,
      required this.minOpenTime,
      required this.maxOpenTime,
      required this.gameType,
      required this.minEntryPrice,
      required this.maxEntryPrice})
      : super._();

  @override
  final String isRunning;
  @override
  final int minOpenTime;
  @override
  final int maxOpenTime;
  @override
  final String gameType;
  @override
  final int minEntryPrice;
  @override
  final int maxEntryPrice;

  @override
  String toString() {
    return 'FilterServiceModel(isRunning: $isRunning, minOpenTime: $minOpenTime, maxOpenTime: $maxOpenTime, gameType: $gameType, minEntryPrice: $minEntryPrice, maxEntryPrice: $maxEntryPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterServiceModelImpl &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.minOpenTime, minOpenTime) ||
                other.minOpenTime == minOpenTime) &&
            (identical(other.maxOpenTime, maxOpenTime) ||
                other.maxOpenTime == maxOpenTime) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.minEntryPrice, minEntryPrice) ||
                other.minEntryPrice == minEntryPrice) &&
            (identical(other.maxEntryPrice, maxEntryPrice) ||
                other.maxEntryPrice == maxEntryPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRunning, minOpenTime,
      maxOpenTime, gameType, minEntryPrice, maxEntryPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterServiceModelImplCopyWith<_$FilterServiceModelImpl> get copyWith =>
      __$$FilterServiceModelImplCopyWithImpl<_$FilterServiceModelImpl>(
          this, _$identity);
}

abstract class _FilterServiceModel extends FilterServiceModel {
  factory _FilterServiceModel(
      {required final String isRunning,
      required final int minOpenTime,
      required final int maxOpenTime,
      required final String gameType,
      required final int minEntryPrice,
      required final int maxEntryPrice}) = _$FilterServiceModelImpl;
  _FilterServiceModel._() : super._();

  @override
  String get isRunning;
  @override
  int get minOpenTime;
  @override
  int get maxOpenTime;
  @override
  String get gameType;
  @override
  int get minEntryPrice;
  @override
  int get maxEntryPrice;
  @override
  @JsonKey(ignore: true)
  _$$FilterServiceModelImplCopyWith<_$FilterServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
