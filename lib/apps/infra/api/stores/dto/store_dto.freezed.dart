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

StoreImageDto _$StoreImageDtoFromJson(Map<String, dynamic> json) {
  return _StoreImageDto.fromJson(json);
}

/// @nodoc
mixin _$StoreImageDto {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreImageDtoCopyWith<StoreImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreImageDtoCopyWith<$Res> {
  factory $StoreImageDtoCopyWith(
          StoreImageDto value, $Res Function(StoreImageDto) then) =
      _$StoreImageDtoCopyWithImpl<$Res, StoreImageDto>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$StoreImageDtoCopyWithImpl<$Res, $Val extends StoreImageDto>
    implements $StoreImageDtoCopyWith<$Res> {
  _$StoreImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    implements $StoreImageDtoCopyWith<$Res> {
  factory _$$StoreImageDtoImplCopyWith(
          _$StoreImageDtoImpl value, $Res Function(_$StoreImageDtoImpl) then) =
      __$$StoreImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$StoreImageDtoImplCopyWithImpl<$Res>
    extends _$StoreImageDtoCopyWithImpl<$Res, _$StoreImageDtoImpl>
    implements _$$StoreImageDtoImplCopyWith<$Res> {
  __$$StoreImageDtoImplCopyWithImpl(
      _$StoreImageDtoImpl _value, $Res Function(_$StoreImageDtoImpl) _then)
      : super(_value, _then);

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
  _$StoreImageDtoImpl({required this.id, required this.url});

  factory _$StoreImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImageDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'StoreImageDto(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
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

abstract class _StoreImageDto implements StoreImageDto {
  factory _StoreImageDto(
      {required final String id,
      required final String url}) = _$StoreImageDtoImpl;

  factory _StoreImageDto.fromJson(Map<String, dynamic> json) =
      _$StoreImageDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$StoreImageDtoImplCopyWith<_$StoreImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameMTTDto _$GameMTTDtoFromJson(Map<String, dynamic> json) {
  return _GameMTTDto.fromJson(json);
}

/// @nodoc
mixin _$GameMTTDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get entryPrice => throw _privateConstructorUsedError;
  int? get entryMax => throw _privateConstructorUsedError;
  int? get reEntryMax => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get prize => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  bool get isDaily => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      String type,
      int entryPrice,
      int? entryMax,
      int? reEntryMax,
      int? duration,
      int? prize,
      String eventType,
      bool isDaily,
      String name});
}

/// @nodoc
class _$GameMTTDtoCopyWithImpl<$Res, $Val extends GameMTTDto>
    implements $GameMTTDtoCopyWith<$Res> {
  _$GameMTTDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? entryPrice = null,
    Object? entryMax = freezed,
    Object? reEntryMax = freezed,
    Object? duration = freezed,
    Object? prize = freezed,
    Object? eventType = null,
    Object? isDaily = null,
    Object? name = null,
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
      entryPrice: null == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as int,
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
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int?,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      isDaily: null == isDaily
          ? _value.isDaily
          : isDaily // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      String type,
      int entryPrice,
      int? entryMax,
      int? reEntryMax,
      int? duration,
      int? prize,
      String eventType,
      bool isDaily,
      String name});
}

/// @nodoc
class __$$GameMTTDtoImplCopyWithImpl<$Res>
    extends _$GameMTTDtoCopyWithImpl<$Res, _$GameMTTDtoImpl>
    implements _$$GameMTTDtoImplCopyWith<$Res> {
  __$$GameMTTDtoImplCopyWithImpl(
      _$GameMTTDtoImpl _value, $Res Function(_$GameMTTDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? entryPrice = null,
    Object? entryMax = freezed,
    Object? reEntryMax = freezed,
    Object? duration = freezed,
    Object? prize = freezed,
    Object? eventType = null,
    Object? isDaily = null,
    Object? name = null,
  }) {
    return _then(_$GameMTTDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      entryPrice: null == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as int,
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
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int?,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      isDaily: null == isDaily
          ? _value.isDaily
          : isDaily // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameMTTDtoImpl implements _GameMTTDto {
  _$GameMTTDtoImpl(
      {required this.id,
      required this.type,
      required this.entryPrice,
      required this.entryMax,
      required this.reEntryMax,
      required this.duration,
      required this.prize,
      required this.eventType,
      required this.isDaily,
      required this.name});

  factory _$GameMTTDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameMTTDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final int entryPrice;
  @override
  final int? entryMax;
  @override
  final int? reEntryMax;
  @override
  final int? duration;
  @override
  final int? prize;
  @override
  final String eventType;
  @override
  final bool isDaily;
  @override
  final String name;

  @override
  String toString() {
    return 'GameMTTDto(id: $id, type: $type, entryPrice: $entryPrice, entryMax: $entryMax, reEntryMax: $reEntryMax, duration: $duration, prize: $prize, eventType: $eventType, isDaily: $isDaily, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMTTDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.entryPrice, entryPrice) ||
                other.entryPrice == entryPrice) &&
            (identical(other.entryMax, entryMax) ||
                other.entryMax == entryMax) &&
            (identical(other.reEntryMax, reEntryMax) ||
                other.reEntryMax == reEntryMax) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.prize, prize) || other.prize == prize) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.isDaily, isDaily) || other.isDaily == isDaily) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, entryPrice, entryMax,
      reEntryMax, duration, prize, eventType, isDaily, name);

  @JsonKey(ignore: true)
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
  factory _GameMTTDto(
      {required final String id,
      required final String type,
      required final int entryPrice,
      required final int? entryMax,
      required final int? reEntryMax,
      required final int? duration,
      required final int? prize,
      required final String eventType,
      required final bool isDaily,
      required final String name}) = _$GameMTTDtoImpl;

  factory _GameMTTDto.fromJson(Map<String, dynamic> json) =
      _$GameMTTDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  int get entryPrice;
  @override
  int? get entryMax;
  @override
  int? get reEntryMax;
  @override
  int? get duration;
  @override
  int? get prize;
  @override
  String get eventType;
  @override
  bool get isDaily;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GameMTTDtoImplCopyWith<_$GameMTTDtoImpl> get copyWith =>
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
  String? get addressDetail => throw _privateConstructorUsedError;
  String? get openTime => throw _privateConstructorUsedError;
  String? get closeTime => throw _privateConstructorUsedError;
  double? get distance =>
      throw _privateConstructorUsedError; // required double lat,
// required double lng,
  List<StoreImageDto>? get storeImages => throw _privateConstructorUsedError;
  List<GameMTTDto> get gameMttItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      String? addressDetail,
      String? openTime,
      String? closeTime,
      double? distance,
      List<StoreImageDto>? storeImages,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = freezed,
    Object? openTime = freezed,
    Object? closeTime = freezed,
    Object? distance = freezed,
    Object? storeImages = freezed,
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
      addressDetail: freezed == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      openTime: freezed == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closeTime: freezed == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      storeImages: freezed == storeImages
          ? _value.storeImages
          : storeImages // ignore: cast_nullable_to_non_nullable
              as List<StoreImageDto>?,
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
      String? addressDetail,
      String? openTime,
      String? closeTime,
      double? distance,
      List<StoreImageDto>? storeImages,
      List<GameMTTDto> gameMttItems});
}

/// @nodoc
class __$$StoreDtoImplCopyWithImpl<$Res>
    extends _$StoreDtoCopyWithImpl<$Res, _$StoreDtoImpl>
    implements _$$StoreDtoImplCopyWith<$Res> {
  __$$StoreDtoImplCopyWithImpl(
      _$StoreDtoImpl _value, $Res Function(_$StoreDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? address = null,
    Object? addressDetail = freezed,
    Object? openTime = freezed,
    Object? closeTime = freezed,
    Object? distance = freezed,
    Object? storeImages = freezed,
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
      addressDetail: freezed == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      openTime: freezed == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closeTime: freezed == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      storeImages: freezed == storeImages
          ? _value._storeImages
          : storeImages // ignore: cast_nullable_to_non_nullable
              as List<StoreImageDto>?,
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
  _$StoreDtoImpl(
      {required this.id,
      required this.type,
      required this.name,
      required this.address,
      required this.addressDetail,
      required this.openTime,
      required this.closeTime,
      required this.distance,
      required final List<StoreImageDto>? storeImages,
      required final List<GameMTTDto> gameMttItems})
      : _storeImages = storeImages,
        _gameMttItems = gameMttItems;

  factory _$StoreDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String address;
  @override
  final String? addressDetail;
  @override
  final String? openTime;
  @override
  final String? closeTime;
  @override
  final double? distance;
// required double lat,
// required double lng,
  final List<StoreImageDto>? _storeImages;
// required double lat,
// required double lng,
  @override
  List<StoreImageDto>? get storeImages {
    final value = _storeImages;
    if (value == null) return null;
    if (_storeImages is EqualUnmodifiableListView) return _storeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameMTTDto> _gameMttItems;
  @override
  List<GameMTTDto> get gameMttItems {
    if (_gameMttItems is EqualUnmodifiableListView) return _gameMttItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameMttItems);
  }

  @override
  String toString() {
    return 'StoreDto(id: $id, type: $type, name: $name, address: $address, addressDetail: $addressDetail, openTime: $openTime, closeTime: $closeTime, distance: $distance, storeImages: $storeImages, gameMttItems: $gameMttItems)';
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
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality()
                .equals(other._storeImages, _storeImages) &&
            const DeepCollectionEquality()
                .equals(other._gameMttItems, _gameMttItems));
  }

  @JsonKey(ignore: true)
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
      distance,
      const DeepCollectionEquality().hash(_storeImages),
      const DeepCollectionEquality().hash(_gameMttItems));

  @JsonKey(ignore: true)
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
  factory _StoreDto(
      {required final String id,
      required final String type,
      required final String name,
      required final String address,
      required final String? addressDetail,
      required final String? openTime,
      required final String? closeTime,
      required final double? distance,
      required final List<StoreImageDto>? storeImages,
      required final List<GameMTTDto> gameMttItems}) = _$StoreDtoImpl;

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
  String? get addressDetail;
  @override
  String? get openTime;
  @override
  String? get closeTime;
  @override
  double? get distance;
  @override // required double lat,
// required double lng,
  List<StoreImageDto>? get storeImages;
  @override
  List<GameMTTDto> get gameMttItems;
  @override
  @JsonKey(ignore: true)
  _$$StoreDtoImplCopyWith<_$StoreDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
