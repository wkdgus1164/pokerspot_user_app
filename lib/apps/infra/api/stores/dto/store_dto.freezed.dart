// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreImagesDto _$StoreImagesDtoFromJson(Map<String, dynamic> json) {
  return _StoreImageDto.fromJson(json);
}

/// @nodoc
mixin _$StoreImagesDto {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this StoreImagesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreImagesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreImagesDtoCopyWith<StoreImagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreImagesDtoCopyWith<$Res> {
  factory $StoreImagesDtoCopyWith(
          StoreImagesDto value, $Res Function(StoreImagesDto) then) =
      _$StoreImagesDtoCopyWithImpl<$Res, StoreImagesDto>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$StoreImagesDtoCopyWithImpl<$Res, $Val extends StoreImagesDto>
    implements $StoreImagesDtoCopyWith<$Res> {
  _$StoreImagesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreImagesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreImageDtoImplCopyWith<$Res>
    implements $StoreImagesDtoCopyWith<$Res> {
  factory _$$StoreImageDtoImplCopyWith(
          _$StoreImageDtoImpl value, $Res Function(_$StoreImageDtoImpl) then) =
      __$$StoreImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$StoreImageDtoImplCopyWithImpl<$Res>
    extends _$StoreImagesDtoCopyWithImpl<$Res, _$StoreImageDtoImpl>
    implements _$$StoreImageDtoImplCopyWith<$Res> {
  __$$StoreImageDtoImplCopyWithImpl(
      _$StoreImageDtoImpl _value, $Res Function(_$StoreImageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreImagesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$StoreImageDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImageDtoImpl implements _StoreImageDto {
  const _$StoreImageDtoImpl({required this.id, required this.url});

  factory _$StoreImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImageDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'StoreImagesDto(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of StoreImagesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImageDtoImplCopyWith<_$StoreImageDtoImpl> get copyWith =>
      __$$StoreImageDtoImplCopyWithImpl<_$StoreImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImageDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreImageDto implements StoreImagesDto {
  const factory _StoreImageDto(
      {required final String id,
      required final String url}) = _$StoreImageDtoImpl;

  factory _StoreImageDto.fromJson(Map<String, dynamic> json) =
      _$StoreImageDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get url;

  /// Create a copy of StoreImagesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImageDtoImplCopyWith<_$StoreImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameMTTDto _$GameMTTDtoFromJson(Map<String, dynamic> json) {
  return _GameMTTDto.fromJson(json);
}

/// @nodoc
mixin _$GameMTTDto {
  String get id => throw _privateConstructorUsedError;
  GameType get type => throw _privateConstructorUsedError;
  EntryType get entryType => throw _privateConstructorUsedError;
  int? get entryPrice => throw _privateConstructorUsedError;
  int? get regEndBlindLevel => throw _privateConstructorUsedError;
  int? get entryMax => throw _privateConstructorUsedError;
  int? get reEntryMax => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  PrizeType? get prizeType => throw _privateConstructorUsedError;
  int? get prize => throw _privateConstructorUsedError;
  int? get gtdMinReward => throw _privateConstructorUsedError;
  EventType? get eventType => throw _privateConstructorUsedError;
  bool? get isDaily => throw _privateConstructorUsedError;
  String? get gameSchedule => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this GameMTTDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameMTTDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameMTTDtoCopyWith<GameMTTDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMTTDtoCopyWith<$Res> {
  factory $GameMTTDtoCopyWith(
          GameMTTDto value, $Res Function(GameMTTDto) then) =
      _$GameMTTDtoCopyWithImpl<$Res, GameMTTDto>;
  @useResult
  $Res call(
      {String id,
      GameType type,
      EntryType entryType,
      int? entryPrice,
      int? regEndBlindLevel,
      int? entryMax,
      int? reEntryMax,
      int? duration,
      PrizeType? prizeType,
      int? prize,
      int? gtdMinReward,
      EventType? eventType,
      bool? isDaily,
      String? gameSchedule,
      String? name});
}

/// @nodoc
class _$GameMTTDtoCopyWithImpl<$Res, $Val extends GameMTTDto>
    implements $GameMTTDtoCopyWith<$Res> {
  _$GameMTTDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameMTTDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? entryType = null,
    Object? entryPrice = freezed,
    Object? regEndBlindLevel = freezed,
    Object? entryMax = freezed,
    Object? reEntryMax = freezed,
    Object? duration = freezed,
    Object? prizeType = freezed,
    Object? prize = freezed,
    Object? gtdMinReward = freezed,
    Object? eventType = freezed,
    Object? isDaily = freezed,
    Object? gameSchedule = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameType,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as EntryType,
      entryPrice: freezed == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      regEndBlindLevel: freezed == regEndBlindLevel
          ? _value.regEndBlindLevel
          : regEndBlindLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      entryMax: freezed == entryMax
          ? _value.entryMax
          : entryMax // ignore: cast_nullable_to_non_nullable
              as int?,
      reEntryMax: freezed == reEntryMax
          ? _value.reEntryMax
          : reEntryMax // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      prizeType: freezed == prizeType
          ? _value.prizeType
          : prizeType // ignore: cast_nullable_to_non_nullable
              as PrizeType?,
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int?,
      gtdMinReward: freezed == gtdMinReward
          ? _value.gtdMinReward
          : gtdMinReward // ignore: cast_nullable_to_non_nullable
              as int?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType?,
      isDaily: freezed == isDaily
          ? _value.isDaily
          : isDaily // ignore: cast_nullable_to_non_nullable
              as bool?,
      gameSchedule: freezed == gameSchedule
          ? _value.gameSchedule
          : gameSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameMTTDtoImplCopyWith<$Res>
    implements $GameMTTDtoCopyWith<$Res> {
  factory _$$GameMTTDtoImplCopyWith(
          _$GameMTTDtoImpl value, $Res Function(_$GameMTTDtoImpl) then) =
      __$$GameMTTDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      GameType type,
      EntryType entryType,
      int? entryPrice,
      int? regEndBlindLevel,
      int? entryMax,
      int? reEntryMax,
      int? duration,
      PrizeType? prizeType,
      int? prize,
      int? gtdMinReward,
      EventType? eventType,
      bool? isDaily,
      String? gameSchedule,
      String? name});
}

/// @nodoc
class __$$GameMTTDtoImplCopyWithImpl<$Res>
    extends _$GameMTTDtoCopyWithImpl<$Res, _$GameMTTDtoImpl>
    implements _$$GameMTTDtoImplCopyWith<$Res> {
  __$$GameMTTDtoImplCopyWithImpl(
      _$GameMTTDtoImpl _value, $Res Function(_$GameMTTDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameMTTDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? entryType = null,
    Object? entryPrice = freezed,
    Object? regEndBlindLevel = freezed,
    Object? entryMax = freezed,
    Object? reEntryMax = freezed,
    Object? duration = freezed,
    Object? prizeType = freezed,
    Object? prize = freezed,
    Object? gtdMinReward = freezed,
    Object? eventType = freezed,
    Object? isDaily = freezed,
    Object? gameSchedule = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GameMTTDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameType,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as EntryType,
      entryPrice: freezed == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      regEndBlindLevel: freezed == regEndBlindLevel
          ? _value.regEndBlindLevel
          : regEndBlindLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      entryMax: freezed == entryMax
          ? _value.entryMax
          : entryMax // ignore: cast_nullable_to_non_nullable
              as int?,
      reEntryMax: freezed == reEntryMax
          ? _value.reEntryMax
          : reEntryMax // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      prizeType: freezed == prizeType
          ? _value.prizeType
          : prizeType // ignore: cast_nullable_to_non_nullable
              as PrizeType?,
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int?,
      gtdMinReward: freezed == gtdMinReward
          ? _value.gtdMinReward
          : gtdMinReward // ignore: cast_nullable_to_non_nullable
              as int?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType?,
      isDaily: freezed == isDaily
          ? _value.isDaily
          : isDaily // ignore: cast_nullable_to_non_nullable
              as bool?,
      gameSchedule: freezed == gameSchedule
          ? _value.gameSchedule
          : gameSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameMTTDtoImpl implements _GameMTTDto {
  const _$GameMTTDtoImpl(
      {required this.id,
      required this.type,
      required this.entryType,
      this.entryPrice,
      this.regEndBlindLevel,
      this.entryMax,
      this.reEntryMax,
      this.duration,
      this.prizeType,
      this.prize,
      this.gtdMinReward,
      this.eventType,
      this.isDaily,
      this.gameSchedule,
      this.name});

  factory _$GameMTTDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameMTTDtoImplFromJson(json);

  @override
  final String id;
  @override
  final GameType type;
  @override
  final EntryType entryType;
  @override
  final int? entryPrice;
  @override
  final int? regEndBlindLevel;
  @override
  final int? entryMax;
  @override
  final int? reEntryMax;
  @override
  final int? duration;
  @override
  final PrizeType? prizeType;
  @override
  final int? prize;
  @override
  final int? gtdMinReward;
  @override
  final EventType? eventType;
  @override
  final bool? isDaily;
  @override
  final String? gameSchedule;
  @override
  final String? name;

  @override
  String toString() {
    return 'GameMTTDto(id: $id, type: $type, entryType: $entryType, entryPrice: $entryPrice, regEndBlindLevel: $regEndBlindLevel, entryMax: $entryMax, reEntryMax: $reEntryMax, duration: $duration, prizeType: $prizeType, prize: $prize, gtdMinReward: $gtdMinReward, eventType: $eventType, isDaily: $isDaily, gameSchedule: $gameSchedule, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMTTDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.entryType, entryType) ||
                other.entryType == entryType) &&
            (identical(other.entryPrice, entryPrice) ||
                other.entryPrice == entryPrice) &&
            (identical(other.regEndBlindLevel, regEndBlindLevel) ||
                other.regEndBlindLevel == regEndBlindLevel) &&
            (identical(other.entryMax, entryMax) ||
                other.entryMax == entryMax) &&
            (identical(other.reEntryMax, reEntryMax) ||
                other.reEntryMax == reEntryMax) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.prizeType, prizeType) ||
                other.prizeType == prizeType) &&
            (identical(other.prize, prize) || other.prize == prize) &&
            (identical(other.gtdMinReward, gtdMinReward) ||
                other.gtdMinReward == gtdMinReward) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.isDaily, isDaily) || other.isDaily == isDaily) &&
            (identical(other.gameSchedule, gameSchedule) ||
                other.gameSchedule == gameSchedule) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      entryType,
      entryPrice,
      regEndBlindLevel,
      entryMax,
      reEntryMax,
      duration,
      prizeType,
      prize,
      gtdMinReward,
      eventType,
      isDaily,
      gameSchedule,
      name);

  /// Create a copy of GameMTTDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMTTDtoImplCopyWith<_$GameMTTDtoImpl> get copyWith =>
      __$$GameMTTDtoImplCopyWithImpl<_$GameMTTDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameMTTDtoImplToJson(
      this,
    );
  }
}

abstract class _GameMTTDto implements GameMTTDto {
  const factory _GameMTTDto(
      {required final String id,
      required final GameType type,
      required final EntryType entryType,
      final int? entryPrice,
      final int? regEndBlindLevel,
      final int? entryMax,
      final int? reEntryMax,
      final int? duration,
      final PrizeType? prizeType,
      final int? prize,
      final int? gtdMinReward,
      final EventType? eventType,
      final bool? isDaily,
      final String? gameSchedule,
      final String? name}) = _$GameMTTDtoImpl;

  factory _GameMTTDto.fromJson(Map<String, dynamic> json) =
      _$GameMTTDtoImpl.fromJson;

  @override
  String get id;
  @override
  GameType get type;
  @override
  EntryType get entryType;
  @override
  int? get entryPrice;
  @override
  int? get regEndBlindLevel;
  @override
  int? get entryMax;
  @override
  int? get reEntryMax;
  @override
  int? get duration;
  @override
  PrizeType? get prizeType;
  @override
  int? get prize;
  @override
  int? get gtdMinReward;
  @override
  EventType? get eventType;
  @override
  bool? get isDaily;
  @override
  String? get gameSchedule;
  @override
  String? get name;

  /// Create a copy of GameMTTDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameMTTDtoImplCopyWith<_$GameMTTDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreBenefitsDto _$StoreBenefitsDtoFromJson(Map<String, dynamic> json) {
  return _StoreBenefitsDto.fromJson(json);
}

/// @nodoc
mixin _$StoreBenefitsDto {
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this StoreBenefitsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreBenefitsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreBenefitsDtoCopyWith<StoreBenefitsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBenefitsDtoCopyWith<$Res> {
  factory $StoreBenefitsDtoCopyWith(
          StoreBenefitsDto value, $Res Function(StoreBenefitsDto) then) =
      _$StoreBenefitsDtoCopyWithImpl<$Res, StoreBenefitsDto>;
  @useResult
  $Res call({String type, String description});
}

/// @nodoc
class _$StoreBenefitsDtoCopyWithImpl<$Res, $Val extends StoreBenefitsDto>
    implements $StoreBenefitsDtoCopyWith<$Res> {
  _$StoreBenefitsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreBenefitsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreBenefitsDtoImplCopyWith<$Res>
    implements $StoreBenefitsDtoCopyWith<$Res> {
  factory _$$StoreBenefitsDtoImplCopyWith(_$StoreBenefitsDtoImpl value,
          $Res Function(_$StoreBenefitsDtoImpl) then) =
      __$$StoreBenefitsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String description});
}

/// @nodoc
class __$$StoreBenefitsDtoImplCopyWithImpl<$Res>
    extends _$StoreBenefitsDtoCopyWithImpl<$Res, _$StoreBenefitsDtoImpl>
    implements _$$StoreBenefitsDtoImplCopyWith<$Res> {
  __$$StoreBenefitsDtoImplCopyWithImpl(_$StoreBenefitsDtoImpl _value,
      $Res Function(_$StoreBenefitsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreBenefitsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_$StoreBenefitsDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreBenefitsDtoImpl implements _StoreBenefitsDto {
  const _$StoreBenefitsDtoImpl({required this.type, required this.description});

  factory _$StoreBenefitsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreBenefitsDtoImplFromJson(json);

  @override
  final String type;
  @override
  final String description;

  @override
  String toString() {
    return 'StoreBenefitsDto(type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBenefitsDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, description);

  /// Create a copy of StoreBenefitsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBenefitsDtoImplCopyWith<_$StoreBenefitsDtoImpl> get copyWith =>
      __$$StoreBenefitsDtoImplCopyWithImpl<_$StoreBenefitsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreBenefitsDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreBenefitsDto implements StoreBenefitsDto {
  const factory _StoreBenefitsDto(
      {required final String type,
      required final String description}) = _$StoreBenefitsDtoImpl;

  factory _StoreBenefitsDto.fromJson(Map<String, dynamic> json) =
      _$StoreBenefitsDtoImpl.fromJson;

  @override
  String get type;
  @override
  String get description;

  /// Create a copy of StoreBenefitsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreBenefitsDtoImplCopyWith<_$StoreBenefitsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreTagsDto _$StoreTagsDtoFromJson(Map<String, dynamic> json) {
  return _StoreTagsDto.fromJson(json);
}

/// @nodoc
mixin _$StoreTagsDto {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StoreTagsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreTagsDtoCopyWith<StoreTagsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreTagsDtoCopyWith<$Res> {
  factory $StoreTagsDtoCopyWith(
          StoreTagsDto value, $Res Function(StoreTagsDto) then) =
      _$StoreTagsDtoCopyWithImpl<$Res, StoreTagsDto>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StoreTagsDtoCopyWithImpl<$Res, $Val extends StoreTagsDto>
    implements $StoreTagsDtoCopyWith<$Res> {
  _$StoreTagsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreTagsDtoImplCopyWith<$Res>
    implements $StoreTagsDtoCopyWith<$Res> {
  factory _$$StoreTagsDtoImplCopyWith(
          _$StoreTagsDtoImpl value, $Res Function(_$StoreTagsDtoImpl) then) =
      __$$StoreTagsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StoreTagsDtoImplCopyWithImpl<$Res>
    extends _$StoreTagsDtoCopyWithImpl<$Res, _$StoreTagsDtoImpl>
    implements _$$StoreTagsDtoImplCopyWith<$Res> {
  __$$StoreTagsDtoImplCopyWithImpl(
      _$StoreTagsDtoImpl _value, $Res Function(_$StoreTagsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StoreTagsDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreTagsDtoImpl implements _StoreTagsDto {
  const _$StoreTagsDtoImpl({required this.name});

  factory _$StoreTagsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreTagsDtoImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StoreTagsDto(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTagsDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of StoreTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTagsDtoImplCopyWith<_$StoreTagsDtoImpl> get copyWith =>
      __$$StoreTagsDtoImplCopyWithImpl<_$StoreTagsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreTagsDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreTagsDto implements StoreTagsDto {
  const factory _StoreTagsDto({required final String name}) =
      _$StoreTagsDtoImpl;

  factory _StoreTagsDto.fromJson(Map<String, dynamic> json) =
      _$StoreTagsDtoImpl.fromJson;

  @override
  String get name;

  /// Create a copy of StoreTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreTagsDtoImplCopyWith<_$StoreTagsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDto _$StoreDtoFromJson(Map<String, dynamic> json) {
  return _StoreDto.fromJson(json);
}

/// @nodoc
mixin _$StoreDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get isViewKakaoChat => throw _privateConstructorUsedError;
  String get kakaoChatUrl => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  List<StoreImagesDto> get storeImages => throw _privateConstructorUsedError;
  List<StoreBenefitsDto> get storeBenefits =>
      throw _privateConstructorUsedError;
  List<StoreTagsDto> get storeTags => throw _privateConstructorUsedError;
  List<GameMTTDto> get gameMttItems => throw _privateConstructorUsedError;

  /// Serializes this StoreDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDtoCopyWith<StoreDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDtoCopyWith<$Res> {
  factory $StoreDtoCopyWith(StoreDto value, $Res Function(StoreDto) then) =
      _$StoreDtoCopyWithImpl<$Res, StoreDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String address,
      String addressDetail,
      String openTime,
      String closeTime,
      String phone,
      bool isViewKakaoChat,
      String kakaoChatUrl,
      DateTime? updatedAt,
      double distance,
      double lat,
      double lng,
      List<StoreImagesDto> storeImages,
      List<StoreBenefitsDto> storeBenefits,
      List<StoreTagsDto> storeTags,
      List<GameMTTDto> gameMttItems});
}

/// @nodoc
class _$StoreDtoCopyWithImpl<$Res, $Val extends StoreDto>
    implements $StoreDtoCopyWith<$Res> {
  _$StoreDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? phone = null,
    Object? isViewKakaoChat = null,
    Object? kakaoChatUrl = null,
    Object? updatedAt = freezed,
    Object? distance = null,
    Object? lat = null,
    Object? lng = null,
    Object? storeImages = null,
    Object? storeBenefits = null,
    Object? storeTags = null,
    Object? gameMttItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isViewKakaoChat: null == isViewKakaoChat
          ? _value.isViewKakaoChat
          : isViewKakaoChat // ignore: cast_nullable_to_non_nullable
              as bool,
      kakaoChatUrl: null == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      storeImages: null == storeImages
          ? _value.storeImages
          : storeImages // ignore: cast_nullable_to_non_nullable
              as List<StoreImagesDto>,
      storeBenefits: null == storeBenefits
          ? _value.storeBenefits
          : storeBenefits // ignore: cast_nullable_to_non_nullable
              as List<StoreBenefitsDto>,
      storeTags: null == storeTags
          ? _value.storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagsDto>,
      gameMttItems: null == gameMttItems
          ? _value.gameMttItems
          : gameMttItems // ignore: cast_nullable_to_non_nullable
              as List<GameMTTDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDtoImplCopyWith<$Res>
    implements $StoreDtoCopyWith<$Res> {
  factory _$$StoreDtoImplCopyWith(
          _$StoreDtoImpl value, $Res Function(_$StoreDtoImpl) then) =
      __$$StoreDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String address,
      String addressDetail,
      String openTime,
      String closeTime,
      String phone,
      bool isViewKakaoChat,
      String kakaoChatUrl,
      DateTime? updatedAt,
      double distance,
      double lat,
      double lng,
      List<StoreImagesDto> storeImages,
      List<StoreBenefitsDto> storeBenefits,
      List<StoreTagsDto> storeTags,
      List<GameMTTDto> gameMttItems});
}

/// @nodoc
class __$$StoreDtoImplCopyWithImpl<$Res>
    extends _$StoreDtoCopyWithImpl<$Res, _$StoreDtoImpl>
    implements _$$StoreDtoImplCopyWith<$Res> {
  __$$StoreDtoImplCopyWithImpl(
      _$StoreDtoImpl _value, $Res Function(_$StoreDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? phone = null,
    Object? isViewKakaoChat = null,
    Object? kakaoChatUrl = null,
    Object? updatedAt = freezed,
    Object? distance = null,
    Object? lat = null,
    Object? lng = null,
    Object? storeImages = null,
    Object? storeBenefits = null,
    Object? storeTags = null,
    Object? gameMttItems = null,
  }) {
    return _then(_$StoreDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isViewKakaoChat: null == isViewKakaoChat
          ? _value.isViewKakaoChat
          : isViewKakaoChat // ignore: cast_nullable_to_non_nullable
              as bool,
      kakaoChatUrl: null == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      storeImages: null == storeImages
          ? _value._storeImages
          : storeImages // ignore: cast_nullable_to_non_nullable
              as List<StoreImagesDto>,
      storeBenefits: null == storeBenefits
          ? _value._storeBenefits
          : storeBenefits // ignore: cast_nullable_to_non_nullable
              as List<StoreBenefitsDto>,
      storeTags: null == storeTags
          ? _value._storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagsDto>,
      gameMttItems: null == gameMttItems
          ? _value._gameMttItems
          : gameMttItems // ignore: cast_nullable_to_non_nullable
              as List<GameMTTDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDtoImpl implements _StoreDto {
  const _$StoreDtoImpl(
      {required this.id,
      this.type = '',
      this.name = '',
      this.address = '',
      this.addressDetail = '',
      this.openTime = '',
      this.closeTime = '마감 시',
      this.phone = '',
      this.isViewKakaoChat = false,
      this.kakaoChatUrl = '',
      this.updatedAt,
      this.distance = 0.0,
      this.lat = 0.0,
      this.lng = 0.0,
      final List<StoreImagesDto> storeImages = const [],
      final List<StoreBenefitsDto> storeBenefits = const [],
      final List<StoreTagsDto> storeTags = const [],
      final List<GameMTTDto> gameMttItems = const []})
      : _storeImages = storeImages,
        _storeBenefits = storeBenefits,
        _storeTags = storeTags,
        _gameMttItems = gameMttItems;

  factory _$StoreDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String addressDetail;
  @override
  @JsonKey()
  final String openTime;
  @override
  @JsonKey()
  final String closeTime;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final bool isViewKakaoChat;
  @override
  @JsonKey()
  final String kakaoChatUrl;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final double distance;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double lng;
  final List<StoreImagesDto> _storeImages;
  @override
  @JsonKey()
  List<StoreImagesDto> get storeImages {
    if (_storeImages is EqualUnmodifiableListView) return _storeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeImages);
  }

  final List<StoreBenefitsDto> _storeBenefits;
  @override
  @JsonKey()
  List<StoreBenefitsDto> get storeBenefits {
    if (_storeBenefits is EqualUnmodifiableListView) return _storeBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeBenefits);
  }

  final List<StoreTagsDto> _storeTags;
  @override
  @JsonKey()
  List<StoreTagsDto> get storeTags {
    if (_storeTags is EqualUnmodifiableListView) return _storeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeTags);
  }

  final List<GameMTTDto> _gameMttItems;
  @override
  @JsonKey()
  List<GameMTTDto> get gameMttItems {
    if (_gameMttItems is EqualUnmodifiableListView) return _gameMttItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameMttItems);
  }

  @override
  String toString() {
    return 'StoreDto(id: $id, type: $type, name: $name, address: $address, addressDetail: $addressDetail, openTime: $openTime, closeTime: $closeTime, phone: $phone, isViewKakaoChat: $isViewKakaoChat, kakaoChatUrl: $kakaoChatUrl, updatedAt: $updatedAt, distance: $distance, lat: $lat, lng: $lng, storeImages: $storeImages, storeBenefits: $storeBenefits, storeTags: $storeTags, gameMttItems: $gameMttItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressDetail, addressDetail) ||
                other.addressDetail == addressDetail) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isViewKakaoChat, isViewKakaoChat) ||
                other.isViewKakaoChat == isViewKakaoChat) &&
            (identical(other.kakaoChatUrl, kakaoChatUrl) ||
                other.kakaoChatUrl == kakaoChatUrl) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality()
                .equals(other._storeImages, _storeImages) &&
            const DeepCollectionEquality()
                .equals(other._storeBenefits, _storeBenefits) &&
            const DeepCollectionEquality()
                .equals(other._storeTags, _storeTags) &&
            const DeepCollectionEquality()
                .equals(other._gameMttItems, _gameMttItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      name,
      address,
      addressDetail,
      openTime,
      closeTime,
      phone,
      isViewKakaoChat,
      kakaoChatUrl,
      updatedAt,
      distance,
      lat,
      lng,
      const DeepCollectionEquality().hash(_storeImages),
      const DeepCollectionEquality().hash(_storeBenefits),
      const DeepCollectionEquality().hash(_storeTags),
      const DeepCollectionEquality().hash(_gameMttItems));

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDtoImplCopyWith<_$StoreDtoImpl> get copyWith =>
      __$$StoreDtoImplCopyWithImpl<_$StoreDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreDto implements StoreDto {
  const factory _StoreDto(
      {required final String id,
      final String type,
      final String name,
      final String address,
      final String addressDetail,
      final String openTime,
      final String closeTime,
      final String phone,
      final bool isViewKakaoChat,
      final String kakaoChatUrl,
      final DateTime? updatedAt,
      final double distance,
      final double lat,
      final double lng,
      final List<StoreImagesDto> storeImages,
      final List<StoreBenefitsDto> storeBenefits,
      final List<StoreTagsDto> storeTags,
      final List<GameMTTDto> gameMttItems}) = _$StoreDtoImpl;

  factory _StoreDto.fromJson(Map<String, dynamic> json) =
      _$StoreDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get name;
  @override
  String get address;
  @override
  String get addressDetail;
  @override
  String get openTime;
  @override
  String get closeTime;
  @override
  String get phone;
  @override
  bool get isViewKakaoChat;
  @override
  String get kakaoChatUrl;
  @override
  DateTime? get updatedAt;
  @override
  double get distance;
  @override
  double get lat;
  @override
  double get lng;
  @override
  List<StoreImagesDto> get storeImages;
  @override
  List<StoreBenefitsDto> get storeBenefits;
  @override
  List<StoreTagsDto> get storeTags;
  @override
  List<GameMTTDto> get gameMttItems;

  /// Create a copy of StoreDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDtoImplCopyWith<_$StoreDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
