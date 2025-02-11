// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_benefit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByBenefitModel {
  bool get isOnlyFirstGameBenefit => throw _privateConstructorUsedError;
  bool get isOnlyNewUserBenefit => throw _privateConstructorUsedError;

  /// Create a copy of FilterByBenefitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterByBenefitModelCopyWith<FilterByBenefitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByBenefitModelCopyWith<$Res> {
  factory $FilterByBenefitModelCopyWith(FilterByBenefitModel value,
          $Res Function(FilterByBenefitModel) then) =
      _$FilterByBenefitModelCopyWithImpl<$Res, FilterByBenefitModel>;
  @useResult
  $Res call({bool isOnlyFirstGameBenefit, bool isOnlyNewUserBenefit});
}

/// @nodoc
class _$FilterByBenefitModelCopyWithImpl<$Res,
        $Val extends FilterByBenefitModel>
    implements $FilterByBenefitModelCopyWith<$Res> {
  _$FilterByBenefitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterByBenefitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnlyFirstGameBenefit = null,
    Object? isOnlyNewUserBenefit = null,
  }) {
    return _then(_value.copyWith(
      isOnlyFirstGameBenefit: null == isOnlyFirstGameBenefit
          ? _value.isOnlyFirstGameBenefit
          : isOnlyFirstGameBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnlyNewUserBenefit: null == isOnlyNewUserBenefit
          ? _value.isOnlyNewUserBenefit
          : isOnlyNewUserBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByBenefitModelImplCopyWith<$Res>
    implements $FilterByBenefitModelCopyWith<$Res> {
  factory _$$FilterByBenefitModelImplCopyWith(_$FilterByBenefitModelImpl value,
          $Res Function(_$FilterByBenefitModelImpl) then) =
      __$$FilterByBenefitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOnlyFirstGameBenefit, bool isOnlyNewUserBenefit});
}

/// @nodoc
class __$$FilterByBenefitModelImplCopyWithImpl<$Res>
    extends _$FilterByBenefitModelCopyWithImpl<$Res, _$FilterByBenefitModelImpl>
    implements _$$FilterByBenefitModelImplCopyWith<$Res> {
  __$$FilterByBenefitModelImplCopyWithImpl(_$FilterByBenefitModelImpl _value,
      $Res Function(_$FilterByBenefitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterByBenefitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnlyFirstGameBenefit = null,
    Object? isOnlyNewUserBenefit = null,
  }) {
    return _then(_$FilterByBenefitModelImpl(
      isOnlyFirstGameBenefit: null == isOnlyFirstGameBenefit
          ? _value.isOnlyFirstGameBenefit
          : isOnlyFirstGameBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnlyNewUserBenefit: null == isOnlyNewUserBenefit
          ? _value.isOnlyNewUserBenefit
          : isOnlyNewUserBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FilterByBenefitModelImpl extends _FilterByBenefitModel {
  _$FilterByBenefitModelImpl(
      {this.isOnlyFirstGameBenefit = false, this.isOnlyNewUserBenefit = false})
      : super._();

  @override
  @JsonKey()
  final bool isOnlyFirstGameBenefit;
  @override
  @JsonKey()
  final bool isOnlyNewUserBenefit;

  @override
  String toString() {
    return 'FilterByBenefitModel(isOnlyFirstGameBenefit: $isOnlyFirstGameBenefit, isOnlyNewUserBenefit: $isOnlyNewUserBenefit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByBenefitModelImpl &&
            (identical(other.isOnlyFirstGameBenefit, isOnlyFirstGameBenefit) ||
                other.isOnlyFirstGameBenefit == isOnlyFirstGameBenefit) &&
            (identical(other.isOnlyNewUserBenefit, isOnlyNewUserBenefit) ||
                other.isOnlyNewUserBenefit == isOnlyNewUserBenefit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isOnlyFirstGameBenefit, isOnlyNewUserBenefit);

  /// Create a copy of FilterByBenefitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByBenefitModelImplCopyWith<_$FilterByBenefitModelImpl>
      get copyWith =>
          __$$FilterByBenefitModelImplCopyWithImpl<_$FilterByBenefitModelImpl>(
              this, _$identity);
}

abstract class _FilterByBenefitModel extends FilterByBenefitModel {
  factory _FilterByBenefitModel(
      {final bool isOnlyFirstGameBenefit,
      final bool isOnlyNewUserBenefit}) = _$FilterByBenefitModelImpl;
  _FilterByBenefitModel._() : super._();

  @override
  bool get isOnlyFirstGameBenefit;
  @override
  bool get isOnlyNewUserBenefit;

  /// Create a copy of FilterByBenefitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByBenefitModelImplCopyWith<_$FilterByBenefitModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
