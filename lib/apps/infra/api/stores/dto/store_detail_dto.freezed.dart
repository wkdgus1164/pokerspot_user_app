// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreDetailDataDto _$StoreDetailDataDtoFromJson(Map<String, dynamic> json) {
  return _StoreDetailDataDto.fromJson(json);
}

/// @nodoc
mixin _$StoreDetailDataDto {
  StoreDetailDto get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDetailDataDtoCopyWith<StoreDetailDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailDataDtoCopyWith<$Res> {
  factory $StoreDetailDataDtoCopyWith(
          StoreDetailDataDto value, $Res Function(StoreDetailDataDto) then) =
      _$StoreDetailDataDtoCopyWithImpl<$Res, StoreDetailDataDto>;
  @useResult
  $Res call({StoreDetailDto data, String message});

  $StoreDetailDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$StoreDetailDataDtoCopyWithImpl<$Res, $Val extends StoreDetailDataDto>
    implements $StoreDetailDataDtoCopyWith<$Res> {
  _$StoreDetailDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoreDetailDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreDetailDtoCopyWith<$Res> get data {
    return $StoreDetailDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreDetailDataDtoImplCopyWith<$Res>
    implements $StoreDetailDataDtoCopyWith<$Res> {
  factory _$$StoreDetailDataDtoImplCopyWith(_$StoreDetailDataDtoImpl value,
          $Res Function(_$StoreDetailDataDtoImpl) then) =
      __$$StoreDetailDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoreDetailDto data, String message});

  @override
  $StoreDetailDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$StoreDetailDataDtoImplCopyWithImpl<$Res>
    extends _$StoreDetailDataDtoCopyWithImpl<$Res, _$StoreDetailDataDtoImpl>
    implements _$$StoreDetailDataDtoImplCopyWith<$Res> {
  __$$StoreDetailDataDtoImplCopyWithImpl(_$StoreDetailDataDtoImpl _value,
      $Res Function(_$StoreDetailDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$StoreDetailDataDtoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoreDetailDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDetailDataDtoImpl implements _StoreDetailDataDto {
  _$StoreDetailDataDtoImpl({required this.data, required this.message});

  factory _$StoreDetailDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDetailDataDtoImplFromJson(json);

  @override
  final StoreDetailDto data;
  @override
  final String message;

  @override
  String toString() {
    return 'StoreDetailDataDto(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailDataDtoImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailDataDtoImplCopyWith<_$StoreDetailDataDtoImpl> get copyWith =>
      __$$StoreDetailDataDtoImplCopyWithImpl<_$StoreDetailDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDetailDataDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreDetailDataDto implements StoreDetailDataDto {
  factory _StoreDetailDataDto(
      {required final StoreDetailDto data,
      required final String message}) = _$StoreDetailDataDtoImpl;

  factory _StoreDetailDataDto.fromJson(Map<String, dynamic> json) =
      _$StoreDetailDataDtoImpl.fromJson;

  @override
  StoreDetailDto get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$StoreDetailDataDtoImplCopyWith<_$StoreDetailDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDetailDto _$StoreDetailDtoFromJson(Map<String, dynamic> json) {
  return _StoreDetailDto.fromJson(json);
}

/// @nodoc
mixin _$StoreDetailDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  List<StoreDetailStoreImagesDto> get storeImages =>
      throw _privateConstructorUsedError;
  List<StoreDetailGameMttItemsDto> get gameMttItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDetailDtoCopyWith<StoreDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailDtoCopyWith<$Res> {
  factory $StoreDetailDtoCopyWith(
          StoreDetailDto value, $Res Function(StoreDetailDto) then) =
      _$StoreDetailDtoCopyWithImpl<$Res, StoreDetailDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String address,
      String addressDetail,
      String openTime,
      String closeTime,
      double lat,
      double lng,
      List<StoreDetailStoreImagesDto> storeImages,
      List<StoreDetailGameMttItemsDto> gameMttItems});
}

/// @nodoc
class _$StoreDetailDtoCopyWithImpl<$Res, $Val extends StoreDetailDto>
    implements $StoreDetailDtoCopyWith<$Res> {
  _$StoreDetailDtoCopyWithImpl(this._value, this._then);

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
    Object? addressDetail = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? lat = null,
    Object? lng = null,
    Object? storeImages = null,
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
              as List<StoreDetailStoreImagesDto>,
      gameMttItems: null == gameMttItems
          ? _value.gameMttItems
          : gameMttItems // ignore: cast_nullable_to_non_nullable
              as List<StoreDetailGameMttItemsDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDetailDtoImplCopyWith<$Res>
    implements $StoreDetailDtoCopyWith<$Res> {
  factory _$$StoreDetailDtoImplCopyWith(_$StoreDetailDtoImpl value,
          $Res Function(_$StoreDetailDtoImpl) then) =
      __$$StoreDetailDtoImplCopyWithImpl<$Res>;
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
      double lat,
      double lng,
      List<StoreDetailStoreImagesDto> storeImages,
      List<StoreDetailGameMttItemsDto> gameMttItems});
}

/// @nodoc
class __$$StoreDetailDtoImplCopyWithImpl<$Res>
    extends _$StoreDetailDtoCopyWithImpl<$Res, _$StoreDetailDtoImpl>
    implements _$$StoreDetailDtoImplCopyWith<$Res> {
  __$$StoreDetailDtoImplCopyWithImpl(
      _$StoreDetailDtoImpl _value, $Res Function(_$StoreDetailDtoImpl) _then)
      : super(_value, _then);

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
    Object? lat = null,
    Object? lng = null,
    Object? storeImages = null,
    Object? gameMttItems = null,
  }) {
    return _then(_$StoreDetailDtoImpl(
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
              as List<StoreDetailStoreImagesDto>,
      gameMttItems: null == gameMttItems
          ? _value._gameMttItems
          : gameMttItems // ignore: cast_nullable_to_non_nullable
              as List<StoreDetailGameMttItemsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDetailDtoImpl implements _StoreDetailDto {
  _$StoreDetailDtoImpl(
      {required this.id,
      required this.type,
      required this.name,
      required this.address,
      required this.addressDetail,
      required this.openTime,
      required this.closeTime,
      required this.lat,
      required this.lng,
      required final List<StoreDetailStoreImagesDto> storeImages,
      required final List<StoreDetailGameMttItemsDto> gameMttItems})
      : _storeImages = storeImages,
        _gameMttItems = gameMttItems;

  factory _$StoreDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDetailDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String address;
  @override
  final String addressDetail;
  @override
  final String openTime;
  @override
  final String closeTime;
  @override
  final double lat;
  @override
  final double lng;
  final List<StoreDetailStoreImagesDto> _storeImages;
  @override
  List<StoreDetailStoreImagesDto> get storeImages {
    if (_storeImages is EqualUnmodifiableListView) return _storeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeImages);
  }

  final List<StoreDetailGameMttItemsDto> _gameMttItems;
  @override
  List<StoreDetailGameMttItemsDto> get gameMttItems {
    if (_gameMttItems is EqualUnmodifiableListView) return _gameMttItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameMttItems);
  }

  @override
  String toString() {
    return 'StoreDetailDto(id: $id, type: $type, name: $name, address: $address, addressDetail: $addressDetail, openTime: $openTime, closeTime: $closeTime, lat: $lat, lng: $lng, storeImages: $storeImages, gameMttItems: $gameMttItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailDtoImpl &&
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
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
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
      lat,
      lng,
      const DeepCollectionEquality().hash(_storeImages),
      const DeepCollectionEquality().hash(_gameMttItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailDtoImplCopyWith<_$StoreDetailDtoImpl> get copyWith =>
      __$$StoreDetailDtoImplCopyWithImpl<_$StoreDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreDetailDto implements StoreDetailDto {
  factory _StoreDetailDto(
          {required final String id,
          required final String type,
          required final String name,
          required final String address,
          required final String addressDetail,
          required final String openTime,
          required final String closeTime,
          required final double lat,
          required final double lng,
          required final List<StoreDetailStoreImagesDto> storeImages,
          required final List<StoreDetailGameMttItemsDto> gameMttItems}) =
      _$StoreDetailDtoImpl;

  factory _StoreDetailDto.fromJson(Map<String, dynamic> json) =
      _$StoreDetailDtoImpl.fromJson;

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
  double get lat;
  @override
  double get lng;
  @override
  List<StoreDetailStoreImagesDto> get storeImages;
  @override
  List<StoreDetailGameMttItemsDto> get gameMttItems;
  @override
  @JsonKey(ignore: true)
  _$$StoreDetailDtoImplCopyWith<_$StoreDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreDetailStoreImagesDto _$StoreDetailStoreImagesDtoFromJson(
    Map<String, dynamic> json) {
  return _StoreDetailStoreImagesDto.fromJson(json);
}

/// @nodoc
mixin _$StoreDetailStoreImagesDto {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDetailStoreImagesDtoCopyWith<StoreDetailStoreImagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailStoreImagesDtoCopyWith<$Res> {
  factory $StoreDetailStoreImagesDtoCopyWith(StoreDetailStoreImagesDto value,
          $Res Function(StoreDetailStoreImagesDto) then) =
      _$StoreDetailStoreImagesDtoCopyWithImpl<$Res, StoreDetailStoreImagesDto>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$StoreDetailStoreImagesDtoCopyWithImpl<$Res,
        $Val extends StoreDetailStoreImagesDto>
    implements $StoreDetailStoreImagesDtoCopyWith<$Res> {
  _$StoreDetailStoreImagesDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$StoreDetailStoreImagesDtoImplCopyWith<$Res>
    implements $StoreDetailStoreImagesDtoCopyWith<$Res> {
  factory _$$StoreDetailStoreImagesDtoImplCopyWith(
          _$StoreDetailStoreImagesDtoImpl value,
          $Res Function(_$StoreDetailStoreImagesDtoImpl) then) =
      __$$StoreDetailStoreImagesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$StoreDetailStoreImagesDtoImplCopyWithImpl<$Res>
    extends _$StoreDetailStoreImagesDtoCopyWithImpl<$Res,
        _$StoreDetailStoreImagesDtoImpl>
    implements _$$StoreDetailStoreImagesDtoImplCopyWith<$Res> {
  __$$StoreDetailStoreImagesDtoImplCopyWithImpl(
      _$StoreDetailStoreImagesDtoImpl _value,
      $Res Function(_$StoreDetailStoreImagesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$StoreDetailStoreImagesDtoImpl(
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
class _$StoreDetailStoreImagesDtoImpl implements _StoreDetailStoreImagesDto {
  _$StoreDetailStoreImagesDtoImpl({required this.id, required this.url});

  factory _$StoreDetailStoreImagesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreDetailStoreImagesDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'StoreDetailStoreImagesDto(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailStoreImagesDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailStoreImagesDtoImplCopyWith<_$StoreDetailStoreImagesDtoImpl>
      get copyWith => __$$StoreDetailStoreImagesDtoImplCopyWithImpl<
          _$StoreDetailStoreImagesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDetailStoreImagesDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreDetailStoreImagesDto implements StoreDetailStoreImagesDto {
  factory _StoreDetailStoreImagesDto(
      {required final String id,
      required final String url}) = _$StoreDetailStoreImagesDtoImpl;

  factory _StoreDetailStoreImagesDto.fromJson(Map<String, dynamic> json) =
      _$StoreDetailStoreImagesDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$StoreDetailStoreImagesDtoImplCopyWith<_$StoreDetailStoreImagesDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StoreDetailGameMttItemsDto _$StoreDetailGameMttItemsDtoFromJson(
    Map<String, dynamic> json) {
  return _StoreDetailGameMttItemsDto.fromJson(json);
}

/// @nodoc
mixin _$StoreDetailGameMttItemsDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get entryPrice => throw _privateConstructorUsedError;
  int? get entryMax => throw _privateConstructorUsedError;
  int? get reEntryMax => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get prize => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  bool get isDaily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDetailGameMttItemsDtoCopyWith<StoreDetailGameMttItemsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailGameMttItemsDtoCopyWith<$Res> {
  factory $StoreDetailGameMttItemsDtoCopyWith(StoreDetailGameMttItemsDto value,
          $Res Function(StoreDetailGameMttItemsDto) then) =
      _$StoreDetailGameMttItemsDtoCopyWithImpl<$Res,
          StoreDetailGameMttItemsDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      int entryPrice,
      int? entryMax,
      int? reEntryMax,
      int? duration,
      int? prize,
      String eventType,
      bool isDaily});
}

/// @nodoc
class _$StoreDetailGameMttItemsDtoCopyWithImpl<$Res,
        $Val extends StoreDetailGameMttItemsDto>
    implements $StoreDetailGameMttItemsDtoCopyWith<$Res> {
  _$StoreDetailGameMttItemsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? entryPrice = null,
    Object? entryMax = freezed,
    Object? reEntryMax = freezed,
    Object? duration = freezed,
    Object? prize = freezed,
    Object? eventType = null,
    Object? isDaily = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDetailGameMttItemsDtoImplCopyWith<$Res>
    implements $StoreDetailGameMttItemsDtoCopyWith<$Res> {
  factory _$$StoreDetailGameMttItemsDtoImplCopyWith(
          _$StoreDetailGameMttItemsDtoImpl value,
          $Res Function(_$StoreDetailGameMttItemsDtoImpl) then) =
      __$$StoreDetailGameMttItemsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      int entryPrice,
      int? entryMax,
      int? reEntryMax,
      int? duration,
      int? prize,
      String eventType,
      bool isDaily});
}

/// @nodoc
class __$$StoreDetailGameMttItemsDtoImplCopyWithImpl<$Res>
    extends _$StoreDetailGameMttItemsDtoCopyWithImpl<$Res,
        _$StoreDetailGameMttItemsDtoImpl>
    implements _$$StoreDetailGameMttItemsDtoImplCopyWith<$Res> {
  __$$StoreDetailGameMttItemsDtoImplCopyWithImpl(
      _$StoreDetailGameMttItemsDtoImpl _value,
      $Res Function(_$StoreDetailGameMttItemsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? entryPrice = null,
    Object? entryMax = freezed,
    Object? reEntryMax = freezed,
    Object? duration = freezed,
    Object? prize = freezed,
    Object? eventType = null,
    Object? isDaily = null,
  }) {
    return _then(_$StoreDetailGameMttItemsDtoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreDetailGameMttItemsDtoImpl implements _StoreDetailGameMttItemsDto {
  _$StoreDetailGameMttItemsDtoImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.entryPrice,
      required this.entryMax,
      required this.reEntryMax,
      required this.duration,
      required this.prize,
      required this.eventType,
      required this.isDaily});

  factory _$StoreDetailGameMttItemsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StoreDetailGameMttItemsDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
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
  String toString() {
    return 'StoreDetailGameMttItemsDto(id: $id, name: $name, type: $type, entryPrice: $entryPrice, entryMax: $entryMax, reEntryMax: $reEntryMax, duration: $duration, prize: $prize, eventType: $eventType, isDaily: $isDaily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailGameMttItemsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
            (identical(other.isDaily, isDaily) || other.isDaily == isDaily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, entryPrice,
      entryMax, reEntryMax, duration, prize, eventType, isDaily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailGameMttItemsDtoImplCopyWith<_$StoreDetailGameMttItemsDtoImpl>
      get copyWith => __$$StoreDetailGameMttItemsDtoImplCopyWithImpl<
          _$StoreDetailGameMttItemsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreDetailGameMttItemsDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreDetailGameMttItemsDto
    implements StoreDetailGameMttItemsDto {
  factory _StoreDetailGameMttItemsDto(
      {required final String id,
      required final String name,
      required final String type,
      required final int entryPrice,
      required final int? entryMax,
      required final int? reEntryMax,
      required final int? duration,
      required final int? prize,
      required final String eventType,
      required final bool isDaily}) = _$StoreDetailGameMttItemsDtoImpl;

  factory _StoreDetailGameMttItemsDto.fromJson(Map<String, dynamic> json) =
      _$StoreDetailGameMttItemsDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
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
  @JsonKey(ignore: true)
  _$$StoreDetailGameMttItemsDtoImplCopyWith<_$StoreDetailGameMttItemsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
