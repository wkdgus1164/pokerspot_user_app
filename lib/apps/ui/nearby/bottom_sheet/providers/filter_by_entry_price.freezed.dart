// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_entry_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByEntryPriceModel {
  int get minTicket => throw _privateConstructorUsedError;
  int get maxTicket => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByEntryPriceModelCopyWith<FilterByEntryPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByEntryPriceModelCopyWith<$Res> {
  factory $FilterByEntryPriceModelCopyWith(FilterByEntryPriceModel value,
          $Res Function(FilterByEntryPriceModel) then) =
      _$FilterByEntryPriceModelCopyWithImpl<$Res, FilterByEntryPriceModel>;
  @useResult
  $Res call({int minTicket, int maxTicket});
}

/// @nodoc
class _$FilterByEntryPriceModelCopyWithImpl<$Res,
        $Val extends FilterByEntryPriceModel>
    implements $FilterByEntryPriceModelCopyWith<$Res> {
  _$FilterByEntryPriceModelCopyWithImpl(this._value, this._then);

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
              as int,
      maxTicket: null == maxTicket
          ? _value.maxTicket
          : maxTicket // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByEntryPriceModelImplCopyWith<$Res>
    implements $FilterByEntryPriceModelCopyWith<$Res> {
  factory _$$FilterByEntryPriceModelImplCopyWith(
          _$FilterByEntryPriceModelImpl value,
          $Res Function(_$FilterByEntryPriceModelImpl) then) =
      __$$FilterByEntryPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minTicket, int maxTicket});
}

/// @nodoc
class __$$FilterByEntryPriceModelImplCopyWithImpl<$Res>
    extends _$FilterByEntryPriceModelCopyWithImpl<$Res,
        _$FilterByEntryPriceModelImpl>
    implements _$$FilterByEntryPriceModelImplCopyWith<$Res> {
  __$$FilterByEntryPriceModelImplCopyWithImpl(
      _$FilterByEntryPriceModelImpl _value,
      $Res Function(_$FilterByEntryPriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minTicket = null,
    Object? maxTicket = null,
  }) {
    return _then(_$FilterByEntryPriceModelImpl(
      minTicket: null == minTicket
          ? _value.minTicket
          : minTicket // ignore: cast_nullable_to_non_nullable
              as int,
      maxTicket: null == maxTicket
          ? _value.maxTicket
          : maxTicket // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterByEntryPriceModelImpl extends _FilterByEntryPriceModel {
  _$FilterByEntryPriceModelImpl({this.minTicket = 1, this.maxTicket = 30})
      : super._();

  @override
  @JsonKey()
  final int minTicket;
  @override
  @JsonKey()
  final int maxTicket;

  @override
  String toString() {
    return 'FilterByEntryPriceModel(minTicket: $minTicket, maxTicket: $maxTicket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByEntryPriceModelImpl &&
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
  _$$FilterByEntryPriceModelImplCopyWith<_$FilterByEntryPriceModelImpl>
      get copyWith => __$$FilterByEntryPriceModelImplCopyWithImpl<
          _$FilterByEntryPriceModelImpl>(this, _$identity);
}

abstract class _FilterByEntryPriceModel extends FilterByEntryPriceModel {
  factory _FilterByEntryPriceModel({final int minTicket, final int maxTicket}) =
      _$FilterByEntryPriceModelImpl;
  _FilterByEntryPriceModel._() : super._();

  @override
  int get minTicket;
  @override
  int get maxTicket;
  @override
  @JsonKey(ignore: true)
  _$$FilterByEntryPriceModelImplCopyWith<_$FilterByEntryPriceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
