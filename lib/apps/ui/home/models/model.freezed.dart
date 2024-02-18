// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoresMainItemModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoresMainItemModelCopyWith<StoresMainItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresMainItemModelCopyWith<$Res> {
  factory $StoresMainItemModelCopyWith(
          StoresMainItemModel value, $Res Function(StoresMainItemModel) then) =
      _$StoresMainItemModelCopyWithImpl<$Res, StoresMainItemModel>;
  @useResult
  $Res call({int id, String type, String name});
}

/// @nodoc
class _$StoresMainItemModelCopyWithImpl<$Res, $Val extends StoresMainItemModel>
    implements $StoresMainItemModelCopyWith<$Res> {
  _$StoresMainItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoresMainItemModelCopyWith<$Res>
    implements $StoresMainItemModelCopyWith<$Res> {
  factory _$$_StoresMainItemModelCopyWith(_$_StoresMainItemModel value,
          $Res Function(_$_StoresMainItemModel) then) =
      __$$_StoresMainItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type, String name});
}

/// @nodoc
class __$$_StoresMainItemModelCopyWithImpl<$Res>
    extends _$StoresMainItemModelCopyWithImpl<$Res, _$_StoresMainItemModel>
    implements _$$_StoresMainItemModelCopyWith<$Res> {
  __$$_StoresMainItemModelCopyWithImpl(_$_StoresMainItemModel _value,
      $Res Function(_$_StoresMainItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_$_StoresMainItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StoresMainItemModel implements _StoresMainItemModel {
  _$_StoresMainItemModel(
      {required this.id, required this.type, required this.name});

  @override
  final int id;
  @override
  final String type;
  @override
  final String name;

  @override
  String toString() {
    return 'StoresMainItemModel(id: $id, type: $type, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoresMainItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoresMainItemModelCopyWith<_$_StoresMainItemModel> get copyWith =>
      __$$_StoresMainItemModelCopyWithImpl<_$_StoresMainItemModel>(
          this, _$identity);
}

abstract class _StoresMainItemModel implements StoresMainItemModel {
  factory _StoresMainItemModel(
      {required final int id,
      required final String type,
      required final String name}) = _$_StoresMainItemModel;

  @override
  int get id;
  @override
  String get type;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StoresMainItemModelCopyWith<_$_StoresMainItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
