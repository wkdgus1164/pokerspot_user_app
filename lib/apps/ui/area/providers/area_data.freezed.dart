// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AreaDataModel {
  String get name => throw _privateConstructorUsedError;
  String get regCode => throw _privateConstructorUsedError;

  /// Create a copy of AreaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaDataModelCopyWith<AreaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaDataModelCopyWith<$Res> {
  factory $AreaDataModelCopyWith(
          AreaDataModel value, $Res Function(AreaDataModel) then) =
      _$AreaDataModelCopyWithImpl<$Res, AreaDataModel>;
  @useResult
  $Res call({String name, String regCode});
}

/// @nodoc
class _$AreaDataModelCopyWithImpl<$Res, $Val extends AreaDataModel>
    implements $AreaDataModelCopyWith<$Res> {
  _$AreaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? regCode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regCode: null == regCode
          ? _value.regCode
          : regCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaDataModelImplCopyWith<$Res>
    implements $AreaDataModelCopyWith<$Res> {
  factory _$$AreaDataModelImplCopyWith(
          _$AreaDataModelImpl value, $Res Function(_$AreaDataModelImpl) then) =
      __$$AreaDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String regCode});
}

/// @nodoc
class __$$AreaDataModelImplCopyWithImpl<$Res>
    extends _$AreaDataModelCopyWithImpl<$Res, _$AreaDataModelImpl>
    implements _$$AreaDataModelImplCopyWith<$Res> {
  __$$AreaDataModelImplCopyWithImpl(
      _$AreaDataModelImpl _value, $Res Function(_$AreaDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? regCode = null,
  }) {
    return _then(_$AreaDataModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regCode: null == regCode
          ? _value.regCode
          : regCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AreaDataModelImpl extends _AreaDataModel {
  _$AreaDataModelImpl({this.name = "서울특별시", this.regCode = "11*00000"})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String regCode;

  @override
  String toString() {
    return 'AreaDataModel(name: $name, regCode: $regCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.regCode, regCode) || other.regCode == regCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, regCode);

  /// Create a copy of AreaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaDataModelImplCopyWith<_$AreaDataModelImpl> get copyWith =>
      __$$AreaDataModelImplCopyWithImpl<_$AreaDataModelImpl>(this, _$identity);
}

abstract class _AreaDataModel extends AreaDataModel {
  factory _AreaDataModel({final String name, final String regCode}) =
      _$AreaDataModelImpl;
  _AreaDataModel._() : super._();

  @override
  String get name;
  @override
  String get regCode;

  /// Create a copy of AreaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaDataModelImplCopyWith<_$AreaDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
