// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AreaListModel {
  List<AreaModel> get regcodes => throw _privateConstructorUsedError;

  /// Create a copy of AreaListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaListModelCopyWith<AreaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaListModelCopyWith<$Res> {
  factory $AreaListModelCopyWith(
          AreaListModel value, $Res Function(AreaListModel) then) =
      _$AreaListModelCopyWithImpl<$Res, AreaListModel>;
  @useResult
  $Res call({List<AreaModel> regcodes});
}

/// @nodoc
class _$AreaListModelCopyWithImpl<$Res, $Val extends AreaListModel>
    implements $AreaListModelCopyWith<$Res> {
  _$AreaListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regcodes = null,
  }) {
    return _then(_value.copyWith(
      regcodes: null == regcodes
          ? _value.regcodes
          : regcodes // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaListModelImplCopyWith<$Res>
    implements $AreaListModelCopyWith<$Res> {
  factory _$$AreaListModelImplCopyWith(
          _$AreaListModelImpl value, $Res Function(_$AreaListModelImpl) then) =
      __$$AreaListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AreaModel> regcodes});
}

/// @nodoc
class __$$AreaListModelImplCopyWithImpl<$Res>
    extends _$AreaListModelCopyWithImpl<$Res, _$AreaListModelImpl>
    implements _$$AreaListModelImplCopyWith<$Res> {
  __$$AreaListModelImplCopyWithImpl(
      _$AreaListModelImpl _value, $Res Function(_$AreaListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regcodes = null,
  }) {
    return _then(_$AreaListModelImpl(
      regcodes: null == regcodes
          ? _value._regcodes
          : regcodes // ignore: cast_nullable_to_non_nullable
              as List<AreaModel>,
    ));
  }
}

/// @nodoc

class _$AreaListModelImpl implements _AreaListModel {
  _$AreaListModelImpl({required final List<AreaModel> regcodes})
      : _regcodes = regcodes;

  final List<AreaModel> _regcodes;
  @override
  List<AreaModel> get regcodes {
    if (_regcodes is EqualUnmodifiableListView) return _regcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regcodes);
  }

  @override
  String toString() {
    return 'AreaListModel(regcodes: $regcodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaListModelImpl &&
            const DeepCollectionEquality().equals(other._regcodes, _regcodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_regcodes));

  /// Create a copy of AreaListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaListModelImplCopyWith<_$AreaListModelImpl> get copyWith =>
      __$$AreaListModelImplCopyWithImpl<_$AreaListModelImpl>(this, _$identity);
}

abstract class _AreaListModel implements AreaListModel {
  factory _AreaListModel({required final List<AreaModel> regcodes}) =
      _$AreaListModelImpl;

  @override
  List<AreaModel> get regcodes;

  /// Create a copy of AreaListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaListModelImplCopyWith<_$AreaListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AreaModel {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of AreaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaModelCopyWith<AreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaModelCopyWith<$Res> {
  factory $AreaModelCopyWith(AreaModel value, $Res Function(AreaModel) then) =
      _$AreaModelCopyWithImpl<$Res, AreaModel>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$AreaModelCopyWithImpl<$Res, $Val extends AreaModel>
    implements $AreaModelCopyWith<$Res> {
  _$AreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaModelImplCopyWith<$Res>
    implements $AreaModelCopyWith<$Res> {
  factory _$$AreaModelImplCopyWith(
          _$AreaModelImpl value, $Res Function(_$AreaModelImpl) then) =
      __$$AreaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$AreaModelImplCopyWithImpl<$Res>
    extends _$AreaModelCopyWithImpl<$Res, _$AreaModelImpl>
    implements _$$AreaModelImplCopyWith<$Res> {
  __$$AreaModelImplCopyWithImpl(
      _$AreaModelImpl _value, $Res Function(_$AreaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$AreaModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AreaModelImpl implements _AreaModel {
  _$AreaModelImpl({required this.code, required this.name});

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'AreaModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of AreaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaModelImplCopyWith<_$AreaModelImpl> get copyWith =>
      __$$AreaModelImplCopyWithImpl<_$AreaModelImpl>(this, _$identity);
}

abstract class _AreaModel implements AreaModel {
  factory _AreaModel({required final String code, required final String name}) =
      _$AreaModelImpl;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of AreaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaModelImplCopyWith<_$AreaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
