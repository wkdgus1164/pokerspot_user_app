// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_dto_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreV2Dto _$StoreV2DtoFromJson(Map<String, dynamic> json) {
  return _StoreV2Dto.fromJson(json);
}

/// @nodoc
mixin _$StoreV2Dto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get addressDetail => throw _privateConstructorUsedError;
  String? get openTime => throw _privateConstructorUsedError;
  String? get closeTime => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool get isViewKakaoChat => throw _privateConstructorUsedError;
  String? get kakaoChatUrl => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  List<StoreImagesDto>? get storeImages => throw _privateConstructorUsedError;
  List<StoreBenefitsDto>? get storeBenefits =>
      throw _privateConstructorUsedError;
  List<StoreTagDto>? get storeTags => throw _privateConstructorUsedError;
  List<GameMttItemsV2Dto>? get gameMttItems =>
      throw _privateConstructorUsedError;

  /// Serializes this StoreV2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreV2DtoCopyWith<StoreV2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreV2DtoCopyWith<$Res> {
  factory $StoreV2DtoCopyWith(
          StoreV2Dto value, $Res Function(StoreV2Dto) then) =
      _$StoreV2DtoCopyWithImpl<$Res, StoreV2Dto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String? name,
      String? address,
      String? addressDetail,
      String? openTime,
      String? closeTime,
      String? phone,
      bool isViewKakaoChat,
      String? kakaoChatUrl,
      DateTime? updatedAt,
      double? distance,
      double? lat,
      double? lng,
      List<StoreImagesDto>? storeImages,
      List<StoreBenefitsDto>? storeBenefits,
      List<StoreTagDto>? storeTags,
      List<GameMttItemsV2Dto>? gameMttItems});
}

/// @nodoc
class _$StoreV2DtoCopyWithImpl<$Res, $Val extends StoreV2Dto>
    implements $StoreV2DtoCopyWith<$Res> {
  _$StoreV2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? addressDetail = freezed,
    Object? openTime = freezed,
    Object? closeTime = freezed,
    Object? phone = freezed,
    Object? isViewKakaoChat = null,
    Object? kakaoChatUrl = freezed,
    Object? updatedAt = freezed,
    Object? distance = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? storeImages = freezed,
    Object? storeBenefits = freezed,
    Object? storeTags = freezed,
    Object? gameMttItems = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isViewKakaoChat: null == isViewKakaoChat
          ? _value.isViewKakaoChat
          : isViewKakaoChat // ignore: cast_nullable_to_non_nullable
              as bool,
      kakaoChatUrl: freezed == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      storeImages: freezed == storeImages
          ? _value.storeImages
          : storeImages // ignore: cast_nullable_to_non_nullable
              as List<StoreImagesDto>?,
      storeBenefits: freezed == storeBenefits
          ? _value.storeBenefits
          : storeBenefits // ignore: cast_nullable_to_non_nullable
              as List<StoreBenefitsDto>?,
      storeTags: freezed == storeTags
          ? _value.storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagDto>?,
      gameMttItems: freezed == gameMttItems
          ? _value.gameMttItems
          : gameMttItems // ignore: cast_nullable_to_non_nullable
              as List<GameMttItemsV2Dto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreV2DtoImplCopyWith<$Res>
    implements $StoreV2DtoCopyWith<$Res> {
  factory _$$StoreV2DtoImplCopyWith(
          _$StoreV2DtoImpl value, $Res Function(_$StoreV2DtoImpl) then) =
      __$$StoreV2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String? name,
      String? address,
      String? addressDetail,
      String? openTime,
      String? closeTime,
      String? phone,
      bool isViewKakaoChat,
      String? kakaoChatUrl,
      DateTime? updatedAt,
      double? distance,
      double? lat,
      double? lng,
      List<StoreImagesDto>? storeImages,
      List<StoreBenefitsDto>? storeBenefits,
      List<StoreTagDto>? storeTags,
      List<GameMttItemsV2Dto>? gameMttItems});
}

/// @nodoc
class __$$StoreV2DtoImplCopyWithImpl<$Res>
    extends _$StoreV2DtoCopyWithImpl<$Res, _$StoreV2DtoImpl>
    implements _$$StoreV2DtoImplCopyWith<$Res> {
  __$$StoreV2DtoImplCopyWithImpl(
      _$StoreV2DtoImpl _value, $Res Function(_$StoreV2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? addressDetail = freezed,
    Object? openTime = freezed,
    Object? closeTime = freezed,
    Object? phone = freezed,
    Object? isViewKakaoChat = null,
    Object? kakaoChatUrl = freezed,
    Object? updatedAt = freezed,
    Object? distance = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? storeImages = freezed,
    Object? storeBenefits = freezed,
    Object? storeTags = freezed,
    Object? gameMttItems = freezed,
  }) {
    return _then(_$StoreV2DtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isViewKakaoChat: null == isViewKakaoChat
          ? _value.isViewKakaoChat
          : isViewKakaoChat // ignore: cast_nullable_to_non_nullable
              as bool,
      kakaoChatUrl: freezed == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      storeImages: freezed == storeImages
          ? _value._storeImages
          : storeImages // ignore: cast_nullable_to_non_nullable
              as List<StoreImagesDto>?,
      storeBenefits: freezed == storeBenefits
          ? _value._storeBenefits
          : storeBenefits // ignore: cast_nullable_to_non_nullable
              as List<StoreBenefitsDto>?,
      storeTags: freezed == storeTags
          ? _value._storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagDto>?,
      gameMttItems: freezed == gameMttItems
          ? _value._gameMttItems
          : gameMttItems // ignore: cast_nullable_to_non_nullable
              as List<GameMttItemsV2Dto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreV2DtoImpl implements _StoreV2Dto {
  _$StoreV2DtoImpl(
      {required this.id,
      required this.type,
      required this.name,
      required this.address,
      required this.addressDetail,
      required this.openTime,
      required this.closeTime,
      required this.phone,
      required this.isViewKakaoChat,
      required this.kakaoChatUrl,
      required this.updatedAt,
      required this.distance,
      required this.lat,
      required this.lng,
      required final List<StoreImagesDto>? storeImages,
      required final List<StoreBenefitsDto>? storeBenefits,
      required final List<StoreTagDto>? storeTags,
      required final List<GameMttItemsV2Dto>? gameMttItems})
      : _storeImages = storeImages,
        _storeBenefits = storeBenefits,
        _storeTags = storeTags,
        _gameMttItems = gameMttItems;

  factory _$StoreV2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreV2DtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? addressDetail;
  @override
  final String? openTime;
  @override
  final String? closeTime;
  @override
  final String? phone;
  @override
  final bool isViewKakaoChat;
  @override
  final String? kakaoChatUrl;
  @override
  final DateTime? updatedAt;
  @override
  final double? distance;
  @override
  final double? lat;
  @override
  final double? lng;
  final List<StoreImagesDto>? _storeImages;
  @override
  List<StoreImagesDto>? get storeImages {
    final value = _storeImages;
    if (value == null) return null;
    if (_storeImages is EqualUnmodifiableListView) return _storeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StoreBenefitsDto>? _storeBenefits;
  @override
  List<StoreBenefitsDto>? get storeBenefits {
    final value = _storeBenefits;
    if (value == null) return null;
    if (_storeBenefits is EqualUnmodifiableListView) return _storeBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StoreTagDto>? _storeTags;
  @override
  List<StoreTagDto>? get storeTags {
    final value = _storeTags;
    if (value == null) return null;
    if (_storeTags is EqualUnmodifiableListView) return _storeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameMttItemsV2Dto>? _gameMttItems;
  @override
  List<GameMttItemsV2Dto>? get gameMttItems {
    final value = _gameMttItems;
    if (value == null) return null;
    if (_gameMttItems is EqualUnmodifiableListView) return _gameMttItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StoreV2Dto(id: $id, type: $type, name: $name, address: $address, addressDetail: $addressDetail, openTime: $openTime, closeTime: $closeTime, phone: $phone, isViewKakaoChat: $isViewKakaoChat, kakaoChatUrl: $kakaoChatUrl, updatedAt: $updatedAt, distance: $distance, lat: $lat, lng: $lng, storeImages: $storeImages, storeBenefits: $storeBenefits, storeTags: $storeTags, gameMttItems: $gameMttItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreV2DtoImpl &&
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

  /// Create a copy of StoreV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreV2DtoImplCopyWith<_$StoreV2DtoImpl> get copyWith =>
      __$$StoreV2DtoImplCopyWithImpl<_$StoreV2DtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreV2DtoImplToJson(
      this,
    );
  }
}

abstract class _StoreV2Dto implements StoreV2Dto {
  factory _StoreV2Dto(
      {required final String id,
      required final String type,
      required final String? name,
      required final String? address,
      required final String? addressDetail,
      required final String? openTime,
      required final String? closeTime,
      required final String? phone,
      required final bool isViewKakaoChat,
      required final String? kakaoChatUrl,
      required final DateTime? updatedAt,
      required final double? distance,
      required final double? lat,
      required final double? lng,
      required final List<StoreImagesDto>? storeImages,
      required final List<StoreBenefitsDto>? storeBenefits,
      required final List<StoreTagDto>? storeTags,
      required final List<GameMttItemsV2Dto>? gameMttItems}) = _$StoreV2DtoImpl;

  factory _StoreV2Dto.fromJson(Map<String, dynamic> json) =
      _$StoreV2DtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get addressDetail;
  @override
  String? get openTime;
  @override
  String? get closeTime;
  @override
  String? get phone;
  @override
  bool get isViewKakaoChat;
  @override
  String? get kakaoChatUrl;
  @override
  DateTime? get updatedAt;
  @override
  double? get distance;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  List<StoreImagesDto>? get storeImages;
  @override
  List<StoreBenefitsDto>? get storeBenefits;
  @override
  List<StoreTagDto>? get storeTags;
  @override
  List<GameMttItemsV2Dto>? get gameMttItems;

  /// Create a copy of StoreV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreV2DtoImplCopyWith<_$StoreV2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameMttItemsV2Dto _$GameMttItemsV2DtoFromJson(Map<String, dynamic> json) {
  return _GameMttItemsV2Dto.fromJson(json);
}

/// @nodoc
mixin _$GameMttItemsV2Dto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  GameType get type => throw _privateConstructorUsedError;
  EntryType get entryType => throw _privateConstructorUsedError;
  int get entryPrice => throw _privateConstructorUsedError;
  int get entryMax => throw _privateConstructorUsedError;
  int? get reEntryMax => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  PrizeType get prizeType => throw _privateConstructorUsedError;
  int get prize => throw _privateConstructorUsedError;
  int get gtdMinReward => throw _privateConstructorUsedError;
  EventType get eventType => throw _privateConstructorUsedError;
  bool get isDaily => throw _privateConstructorUsedError;
  String? get gameSchedule => throw _privateConstructorUsedError;
  int get regEndBlindLevel => throw _privateConstructorUsedError;

  /// Serializes this GameMttItemsV2Dto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameMttItemsV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameMttItemsV2DtoCopyWith<GameMttItemsV2Dto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMttItemsV2DtoCopyWith<$Res> {
  factory $GameMttItemsV2DtoCopyWith(
          GameMttItemsV2Dto value, $Res Function(GameMttItemsV2Dto) then) =
      _$GameMttItemsV2DtoCopyWithImpl<$Res, GameMttItemsV2Dto>;
  @useResult
  $Res call(
      {String id,
      String name,
      GameType type,
      EntryType entryType,
      int entryPrice,
      int entryMax,
      int? reEntryMax,
      int duration,
      PrizeType prizeType,
      int prize,
      int gtdMinReward,
      EventType eventType,
      bool isDaily,
      String? gameSchedule,
      int regEndBlindLevel});
}

/// @nodoc
class _$GameMttItemsV2DtoCopyWithImpl<$Res, $Val extends GameMttItemsV2Dto>
    implements $GameMttItemsV2DtoCopyWith<$Res> {
  _$GameMttItemsV2DtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameMttItemsV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? entryType = null,
    Object? entryPrice = null,
    Object? entryMax = null,
    Object? reEntryMax = freezed,
    Object? duration = null,
    Object? prizeType = null,
    Object? prize = null,
    Object? gtdMinReward = null,
    Object? eventType = null,
    Object? isDaily = null,
    Object? gameSchedule = freezed,
    Object? regEndBlindLevel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameType,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as EntryType,
      entryPrice: null == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      entryMax: null == entryMax
          ? _value.entryMax
          : entryMax // ignore: cast_nullable_to_non_nullable
              as int,
      reEntryMax: freezed == reEntryMax
          ? _value.reEntryMax
          : reEntryMax // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      prizeType: null == prizeType
          ? _value.prizeType
          : prizeType // ignore: cast_nullable_to_non_nullable
              as PrizeType,
      prize: null == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int,
      gtdMinReward: null == gtdMinReward
          ? _value.gtdMinReward
          : gtdMinReward // ignore: cast_nullable_to_non_nullable
              as int,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      isDaily: null == isDaily
          ? _value.isDaily
          : isDaily // ignore: cast_nullable_to_non_nullable
              as bool,
      gameSchedule: freezed == gameSchedule
          ? _value.gameSchedule
          : gameSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      regEndBlindLevel: null == regEndBlindLevel
          ? _value.regEndBlindLevel
          : regEndBlindLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameMttItemsV2DtoImplCopyWith<$Res>
    implements $GameMttItemsV2DtoCopyWith<$Res> {
  factory _$$GameMttItemsV2DtoImplCopyWith(_$GameMttItemsV2DtoImpl value,
          $Res Function(_$GameMttItemsV2DtoImpl) then) =
      __$$GameMttItemsV2DtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      GameType type,
      EntryType entryType,
      int entryPrice,
      int entryMax,
      int? reEntryMax,
      int duration,
      PrizeType prizeType,
      int prize,
      int gtdMinReward,
      EventType eventType,
      bool isDaily,
      String? gameSchedule,
      int regEndBlindLevel});
}

/// @nodoc
class __$$GameMttItemsV2DtoImplCopyWithImpl<$Res>
    extends _$GameMttItemsV2DtoCopyWithImpl<$Res, _$GameMttItemsV2DtoImpl>
    implements _$$GameMttItemsV2DtoImplCopyWith<$Res> {
  __$$GameMttItemsV2DtoImplCopyWithImpl(_$GameMttItemsV2DtoImpl _value,
      $Res Function(_$GameMttItemsV2DtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameMttItemsV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? entryType = null,
    Object? entryPrice = null,
    Object? entryMax = null,
    Object? reEntryMax = freezed,
    Object? duration = null,
    Object? prizeType = null,
    Object? prize = null,
    Object? gtdMinReward = null,
    Object? eventType = null,
    Object? isDaily = null,
    Object? gameSchedule = freezed,
    Object? regEndBlindLevel = null,
  }) {
    return _then(_$GameMttItemsV2DtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GameType,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as EntryType,
      entryPrice: null == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      entryMax: null == entryMax
          ? _value.entryMax
          : entryMax // ignore: cast_nullable_to_non_nullable
              as int,
      reEntryMax: freezed == reEntryMax
          ? _value.reEntryMax
          : reEntryMax // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      prizeType: null == prizeType
          ? _value.prizeType
          : prizeType // ignore: cast_nullable_to_non_nullable
              as PrizeType,
      prize: null == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int,
      gtdMinReward: null == gtdMinReward
          ? _value.gtdMinReward
          : gtdMinReward // ignore: cast_nullable_to_non_nullable
              as int,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      isDaily: null == isDaily
          ? _value.isDaily
          : isDaily // ignore: cast_nullable_to_non_nullable
              as bool,
      gameSchedule: freezed == gameSchedule
          ? _value.gameSchedule
          : gameSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      regEndBlindLevel: null == regEndBlindLevel
          ? _value.regEndBlindLevel
          : regEndBlindLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameMttItemsV2DtoImpl implements _GameMttItemsV2Dto {
  _$GameMttItemsV2DtoImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.entryType,
      required this.entryPrice,
      required this.entryMax,
      required this.reEntryMax,
      required this.duration,
      required this.prizeType,
      required this.prize,
      required this.gtdMinReward,
      required this.eventType,
      required this.isDaily,
      required this.gameSchedule,
      required this.regEndBlindLevel});

  factory _$GameMttItemsV2DtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameMttItemsV2DtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final GameType type;
  @override
  final EntryType entryType;
  @override
  final int entryPrice;
  @override
  final int entryMax;
  @override
  final int? reEntryMax;
  @override
  final int duration;
  @override
  final PrizeType prizeType;
  @override
  final int prize;
  @override
  final int gtdMinReward;
  @override
  final EventType eventType;
  @override
  final bool isDaily;
  @override
  final String? gameSchedule;
  @override
  final int regEndBlindLevel;

  @override
  String toString() {
    return 'GameMttItemsV2Dto(id: $id, name: $name, type: $type, entryType: $entryType, entryPrice: $entryPrice, entryMax: $entryMax, reEntryMax: $reEntryMax, duration: $duration, prizeType: $prizeType, prize: $prize, gtdMinReward: $gtdMinReward, eventType: $eventType, isDaily: $isDaily, gameSchedule: $gameSchedule, regEndBlindLevel: $regEndBlindLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMttItemsV2DtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.entryType, entryType) ||
                other.entryType == entryType) &&
            (identical(other.entryPrice, entryPrice) ||
                other.entryPrice == entryPrice) &&
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
            (identical(other.regEndBlindLevel, regEndBlindLevel) ||
                other.regEndBlindLevel == regEndBlindLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      entryType,
      entryPrice,
      entryMax,
      reEntryMax,
      duration,
      prizeType,
      prize,
      gtdMinReward,
      eventType,
      isDaily,
      gameSchedule,
      regEndBlindLevel);

  /// Create a copy of GameMttItemsV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMttItemsV2DtoImplCopyWith<_$GameMttItemsV2DtoImpl> get copyWith =>
      __$$GameMttItemsV2DtoImplCopyWithImpl<_$GameMttItemsV2DtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameMttItemsV2DtoImplToJson(
      this,
    );
  }
}

abstract class _GameMttItemsV2Dto implements GameMttItemsV2Dto {
  factory _GameMttItemsV2Dto(
      {required final String id,
      required final String name,
      required final GameType type,
      required final EntryType entryType,
      required final int entryPrice,
      required final int entryMax,
      required final int? reEntryMax,
      required final int duration,
      required final PrizeType prizeType,
      required final int prize,
      required final int gtdMinReward,
      required final EventType eventType,
      required final bool isDaily,
      required final String? gameSchedule,
      required final int regEndBlindLevel}) = _$GameMttItemsV2DtoImpl;

  factory _GameMttItemsV2Dto.fromJson(Map<String, dynamic> json) =
      _$GameMttItemsV2DtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  GameType get type;
  @override
  EntryType get entryType;
  @override
  int get entryPrice;
  @override
  int get entryMax;
  @override
  int? get reEntryMax;
  @override
  int get duration;
  @override
  PrizeType get prizeType;
  @override
  int get prize;
  @override
  int get gtdMinReward;
  @override
  EventType get eventType;
  @override
  bool get isDaily;
  @override
  String? get gameSchedule;
  @override
  int get regEndBlindLevel;

  /// Create a copy of GameMttItemsV2Dto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameMttItemsV2DtoImplCopyWith<_$GameMttItemsV2DtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreBenefitsDto _$StoreBenefitsDtoFromJson(Map<String, dynamic> json) {
  return _StoreBenefitsDto.fromJson(json);
}

/// @nodoc
mixin _$StoreBenefitsDto {
  StoreBenefitType get type => throw _privateConstructorUsedError;
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
  $Res call({StoreBenefitType type, String description});
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
              as StoreBenefitType,
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
  $Res call({StoreBenefitType type, String description});
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
              as StoreBenefitType,
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
  _$StoreBenefitsDtoImpl({required this.type, required this.description});

  factory _$StoreBenefitsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreBenefitsDtoImplFromJson(json);

  @override
  final StoreBenefitType type;
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
  factory _StoreBenefitsDto(
      {required final StoreBenefitType type,
      required final String description}) = _$StoreBenefitsDtoImpl;

  factory _StoreBenefitsDto.fromJson(Map<String, dynamic> json) =
      _$StoreBenefitsDtoImpl.fromJson;

  @override
  StoreBenefitType get type;
  @override
  String get description;

  /// Create a copy of StoreBenefitsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreBenefitsDtoImplCopyWith<_$StoreBenefitsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreTagDto _$StoreTagDtoFromJson(Map<String, dynamic> json) {
  return _StoreTagDto.fromJson(json);
}

/// @nodoc
mixin _$StoreTagDto {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StoreTagDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreTagDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreTagDtoCopyWith<StoreTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreTagDtoCopyWith<$Res> {
  factory $StoreTagDtoCopyWith(
          StoreTagDto value, $Res Function(StoreTagDto) then) =
      _$StoreTagDtoCopyWithImpl<$Res, StoreTagDto>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StoreTagDtoCopyWithImpl<$Res, $Val extends StoreTagDto>
    implements $StoreTagDtoCopyWith<$Res> {
  _$StoreTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreTagDto
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
abstract class _$$StoreTagDtoImplCopyWith<$Res>
    implements $StoreTagDtoCopyWith<$Res> {
  factory _$$StoreTagDtoImplCopyWith(
          _$StoreTagDtoImpl value, $Res Function(_$StoreTagDtoImpl) then) =
      __$$StoreTagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StoreTagDtoImplCopyWithImpl<$Res>
    extends _$StoreTagDtoCopyWithImpl<$Res, _$StoreTagDtoImpl>
    implements _$$StoreTagDtoImplCopyWith<$Res> {
  __$$StoreTagDtoImplCopyWithImpl(
      _$StoreTagDtoImpl _value, $Res Function(_$StoreTagDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreTagDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StoreTagDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreTagDtoImpl implements _StoreTagDto {
  _$StoreTagDtoImpl({required this.name});

  factory _$StoreTagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreTagDtoImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StoreTagDto(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTagDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of StoreTagDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTagDtoImplCopyWith<_$StoreTagDtoImpl> get copyWith =>
      __$$StoreTagDtoImplCopyWithImpl<_$StoreTagDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreTagDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreTagDto implements StoreTagDto {
  factory _StoreTagDto({required final String name}) = _$StoreTagDtoImpl;

  factory _StoreTagDto.fromJson(Map<String, dynamic> json) =
      _$StoreTagDtoImpl.fromJson;

  @override
  String get name;

  /// Create a copy of StoreTagDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreTagDtoImplCopyWith<_$StoreTagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
