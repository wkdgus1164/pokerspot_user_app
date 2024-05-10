// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_by_tournament_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterByTournamentTypeModel {
  TournamentType get tournamentType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterByTournamentTypeModelCopyWith<FilterByTournamentTypeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByTournamentTypeModelCopyWith<$Res> {
  factory $FilterByTournamentTypeModelCopyWith(
          FilterByTournamentTypeModel value,
          $Res Function(FilterByTournamentTypeModel) then) =
      _$FilterByTournamentTypeModelCopyWithImpl<$Res,
          FilterByTournamentTypeModel>;
  @useResult
  $Res call({TournamentType tournamentType});
}

/// @nodoc
class _$FilterByTournamentTypeModelCopyWithImpl<$Res,
        $Val extends FilterByTournamentTypeModel>
    implements $FilterByTournamentTypeModelCopyWith<$Res> {
  _$FilterByTournamentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentType = null,
  }) {
    return _then(_value.copyWith(
      tournamentType: null == tournamentType
          ? _value.tournamentType
          : tournamentType // ignore: cast_nullable_to_non_nullable
              as TournamentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterByTournamentTypeModelImplCopyWith<$Res>
    implements $FilterByTournamentTypeModelCopyWith<$Res> {
  factory _$$FilterByTournamentTypeModelImplCopyWith(
          _$FilterByTournamentTypeModelImpl value,
          $Res Function(_$FilterByTournamentTypeModelImpl) then) =
      __$$FilterByTournamentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TournamentType tournamentType});
}

/// @nodoc
class __$$FilterByTournamentTypeModelImplCopyWithImpl<$Res>
    extends _$FilterByTournamentTypeModelCopyWithImpl<$Res,
        _$FilterByTournamentTypeModelImpl>
    implements _$$FilterByTournamentTypeModelImplCopyWith<$Res> {
  __$$FilterByTournamentTypeModelImplCopyWithImpl(
      _$FilterByTournamentTypeModelImpl _value,
      $Res Function(_$FilterByTournamentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentType = null,
  }) {
    return _then(_$FilterByTournamentTypeModelImpl(
      tournamentType: null == tournamentType
          ? _value.tournamentType
          : tournamentType // ignore: cast_nullable_to_non_nullable
              as TournamentType,
    ));
  }
}

/// @nodoc

class _$FilterByTournamentTypeModelImpl extends _FilterByTournamentTypeModel {
  _$FilterByTournamentTypeModelImpl({this.tournamentType = TournamentType.all})
      : super._();

  @override
  @JsonKey()
  final TournamentType tournamentType;

  @override
  String toString() {
    return 'FilterByTournamentTypeModel(tournamentType: $tournamentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByTournamentTypeModelImpl &&
            (identical(other.tournamentType, tournamentType) ||
                other.tournamentType == tournamentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tournamentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByTournamentTypeModelImplCopyWith<_$FilterByTournamentTypeModelImpl>
      get copyWith => __$$FilterByTournamentTypeModelImplCopyWithImpl<
          _$FilterByTournamentTypeModelImpl>(this, _$identity);
}

abstract class _FilterByTournamentTypeModel
    extends FilterByTournamentTypeModel {
  factory _FilterByTournamentTypeModel({final TournamentType tournamentType}) =
      _$FilterByTournamentTypeModelImpl;
  _FilterByTournamentTypeModel._() : super._();

  @override
  TournamentType get tournamentType;
  @override
  @JsonKey(ignore: true)
  _$$FilterByTournamentTypeModelImplCopyWith<_$FilterByTournamentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
