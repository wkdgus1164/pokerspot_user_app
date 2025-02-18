// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavigationPageIndexModel {
  int get index => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavigationPageIndexModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavigationPageIndexModelCopyWith<BottomNavigationPageIndexModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationPageIndexModelCopyWith<$Res> {
  factory $BottomNavigationPageIndexModelCopyWith(
          BottomNavigationPageIndexModel value,
          $Res Function(BottomNavigationPageIndexModel) then) =
      _$BottomNavigationPageIndexModelCopyWithImpl<$Res,
          BottomNavigationPageIndexModel>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BottomNavigationPageIndexModelCopyWithImpl<$Res,
        $Val extends BottomNavigationPageIndexModel>
    implements $BottomNavigationPageIndexModelCopyWith<$Res> {
  _$BottomNavigationPageIndexModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationPageIndexModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavigationPageIndexModelImplCopyWith<$Res>
    implements $BottomNavigationPageIndexModelCopyWith<$Res> {
  factory _$$BottomNavigationPageIndexModelImplCopyWith(
          _$BottomNavigationPageIndexModelImpl value,
          $Res Function(_$BottomNavigationPageIndexModelImpl) then) =
      __$$BottomNavigationPageIndexModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$BottomNavigationPageIndexModelImplCopyWithImpl<$Res>
    extends _$BottomNavigationPageIndexModelCopyWithImpl<$Res,
        _$BottomNavigationPageIndexModelImpl>
    implements _$$BottomNavigationPageIndexModelImplCopyWith<$Res> {
  __$$BottomNavigationPageIndexModelImplCopyWithImpl(
      _$BottomNavigationPageIndexModelImpl _value,
      $Res Function(_$BottomNavigationPageIndexModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationPageIndexModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$BottomNavigationPageIndexModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottomNavigationPageIndexModelImpl
    implements _BottomNavigationPageIndexModel {
  _$BottomNavigationPageIndexModelImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationPageIndexModel(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationPageIndexModelImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BottomNavigationPageIndexModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationPageIndexModelImplCopyWith<
          _$BottomNavigationPageIndexModelImpl>
      get copyWith => __$$BottomNavigationPageIndexModelImplCopyWithImpl<
          _$BottomNavigationPageIndexModelImpl>(this, _$identity);
}

abstract class _BottomNavigationPageIndexModel
    implements BottomNavigationPageIndexModel {
  factory _BottomNavigationPageIndexModel({required final int index}) =
      _$BottomNavigationPageIndexModelImpl;

  @override
  int get index;

  /// Create a copy of BottomNavigationPageIndexModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavigationPageIndexModelImplCopyWith<
          _$BottomNavigationPageIndexModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
