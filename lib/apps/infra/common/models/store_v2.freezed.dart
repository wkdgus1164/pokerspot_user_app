// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreV2Model {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get addressDetail => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get isViewKakaoChat => throw _privateConstructorUsedError;
  String? get kakaoChatUrl => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  List<StoreImagesModel> get storeImages => throw _privateConstructorUsedError;
  List<StoreBenefitV2Model> get storeBenefits =>
      throw _privateConstructorUsedError;
  List<StoreTagV2Model> get storeTags => throw _privateConstructorUsedError;
  List<StoreGameMttV2Model> get gameMTTItems =>
      throw _privateConstructorUsedError;

  /// Create a copy of StoreV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreV2ModelCopyWith<StoreV2Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreV2ModelCopyWith<$Res> {
  factory $StoreV2ModelCopyWith(
          StoreV2Model value, $Res Function(StoreV2Model) then) =
      _$StoreV2ModelCopyWithImpl<$Res, StoreV2Model>;
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
      String? kakaoChatUrl,
      DateTime updatedAt,
      double distance,
      double lat,
      double lng,
      List<StoreImagesModel> storeImages,
      List<StoreBenefitV2Model> storeBenefits,
      List<StoreTagV2Model> storeTags,
      List<StoreGameMttV2Model> gameMTTItems});
}

/// @nodoc
class _$StoreV2ModelCopyWithImpl<$Res, $Val extends StoreV2Model>
    implements $StoreV2ModelCopyWith<$Res> {
  _$StoreV2ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreV2Model
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
    Object? kakaoChatUrl = freezed,
    Object? updatedAt = null,
    Object? distance = null,
    Object? lat = null,
    Object? lng = null,
    Object? storeImages = null,
    Object? storeBenefits = null,
    Object? storeTags = null,
    Object? gameMTTItems = null,
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
      kakaoChatUrl: freezed == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as List<StoreImagesModel>,
      storeBenefits: null == storeBenefits
          ? _value.storeBenefits
          : storeBenefits // ignore: cast_nullable_to_non_nullable
              as List<StoreBenefitV2Model>,
      storeTags: null == storeTags
          ? _value.storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagV2Model>,
      gameMTTItems: null == gameMTTItems
          ? _value.gameMTTItems
          : gameMTTItems // ignore: cast_nullable_to_non_nullable
              as List<StoreGameMttV2Model>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreV2ModelImplCopyWith<$Res>
    implements $StoreV2ModelCopyWith<$Res> {
  factory _$$StoreV2ModelImplCopyWith(
          _$StoreV2ModelImpl value, $Res Function(_$StoreV2ModelImpl) then) =
      __$$StoreV2ModelImplCopyWithImpl<$Res>;
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
      String? kakaoChatUrl,
      DateTime updatedAt,
      double distance,
      double lat,
      double lng,
      List<StoreImagesModel> storeImages,
      List<StoreBenefitV2Model> storeBenefits,
      List<StoreTagV2Model> storeTags,
      List<StoreGameMttV2Model> gameMTTItems});
}

/// @nodoc
class __$$StoreV2ModelImplCopyWithImpl<$Res>
    extends _$StoreV2ModelCopyWithImpl<$Res, _$StoreV2ModelImpl>
    implements _$$StoreV2ModelImplCopyWith<$Res> {
  __$$StoreV2ModelImplCopyWithImpl(
      _$StoreV2ModelImpl _value, $Res Function(_$StoreV2ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreV2Model
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
    Object? kakaoChatUrl = freezed,
    Object? updatedAt = null,
    Object? distance = null,
    Object? lat = null,
    Object? lng = null,
    Object? storeImages = null,
    Object? storeBenefits = null,
    Object? storeTags = null,
    Object? gameMTTItems = null,
  }) {
    return _then(_$StoreV2ModelImpl(
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
      kakaoChatUrl: freezed == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as List<StoreImagesModel>,
      storeBenefits: null == storeBenefits
          ? _value._storeBenefits
          : storeBenefits // ignore: cast_nullable_to_non_nullable
              as List<StoreBenefitV2Model>,
      storeTags: null == storeTags
          ? _value._storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagV2Model>,
      gameMTTItems: null == gameMTTItems
          ? _value._gameMTTItems
          : gameMTTItems // ignore: cast_nullable_to_non_nullable
              as List<StoreGameMttV2Model>,
    ));
  }
}

/// @nodoc

class _$StoreV2ModelImpl implements _StoreV2Model {
  _$StoreV2ModelImpl(
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
      required final List<StoreImagesModel> storeImages,
      required final List<StoreBenefitV2Model> storeBenefits,
      required final List<StoreTagV2Model> storeTags,
      required final List<StoreGameMttV2Model> gameMTTItems})
      : _storeImages = storeImages,
        _storeBenefits = storeBenefits,
        _storeTags = storeTags,
        _gameMTTItems = gameMTTItems;

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
  final String phone;
  @override
  final bool isViewKakaoChat;
  @override
  final String? kakaoChatUrl;
  @override
  final DateTime updatedAt;
  @override
  final double distance;
  @override
  final double lat;
  @override
  final double lng;
  final List<StoreImagesModel> _storeImages;
  @override
  List<StoreImagesModel> get storeImages {
    if (_storeImages is EqualUnmodifiableListView) return _storeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeImages);
  }

  final List<StoreBenefitV2Model> _storeBenefits;
  @override
  List<StoreBenefitV2Model> get storeBenefits {
    if (_storeBenefits is EqualUnmodifiableListView) return _storeBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeBenefits);
  }

  final List<StoreTagV2Model> _storeTags;
  @override
  List<StoreTagV2Model> get storeTags {
    if (_storeTags is EqualUnmodifiableListView) return _storeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeTags);
  }

  final List<StoreGameMttV2Model> _gameMTTItems;
  @override
  List<StoreGameMttV2Model> get gameMTTItems {
    if (_gameMTTItems is EqualUnmodifiableListView) return _gameMTTItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameMTTItems);
  }

  @override
  String toString() {
    return 'StoreV2Model(id: $id, type: $type, name: $name, address: $address, addressDetail: $addressDetail, openTime: $openTime, closeTime: $closeTime, phone: $phone, isViewKakaoChat: $isViewKakaoChat, kakaoChatUrl: $kakaoChatUrl, updatedAt: $updatedAt, distance: $distance, lat: $lat, lng: $lng, storeImages: $storeImages, storeBenefits: $storeBenefits, storeTags: $storeTags, gameMTTItems: $gameMTTItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreV2ModelImpl &&
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
                .equals(other._gameMTTItems, _gameMTTItems));
  }

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
      const DeepCollectionEquality().hash(_gameMTTItems));

  /// Create a copy of StoreV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreV2ModelImplCopyWith<_$StoreV2ModelImpl> get copyWith =>
      __$$StoreV2ModelImplCopyWithImpl<_$StoreV2ModelImpl>(this, _$identity);
}

abstract class _StoreV2Model implements StoreV2Model {
  factory _StoreV2Model(
          {required final String id,
          required final String type,
          required final String name,
          required final String address,
          required final String addressDetail,
          required final String openTime,
          required final String closeTime,
          required final String phone,
          required final bool isViewKakaoChat,
          required final String? kakaoChatUrl,
          required final DateTime updatedAt,
          required final double distance,
          required final double lat,
          required final double lng,
          required final List<StoreImagesModel> storeImages,
          required final List<StoreBenefitV2Model> storeBenefits,
          required final List<StoreTagV2Model> storeTags,
          required final List<StoreGameMttV2Model> gameMTTItems}) =
      _$StoreV2ModelImpl;

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
  String? get kakaoChatUrl;
  @override
  DateTime get updatedAt;
  @override
  double get distance;
  @override
  double get lat;
  @override
  double get lng;
  @override
  List<StoreImagesModel> get storeImages;
  @override
  List<StoreBenefitV2Model> get storeBenefits;
  @override
  List<StoreTagV2Model> get storeTags;
  @override
  List<StoreGameMttV2Model> get gameMTTItems;

  /// Create a copy of StoreV2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreV2ModelImplCopyWith<_$StoreV2ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreBenefitV2Model {
  StoreBenefitType? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of StoreBenefitV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreBenefitV2ModelCopyWith<StoreBenefitV2Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBenefitV2ModelCopyWith<$Res> {
  factory $StoreBenefitV2ModelCopyWith(
          StoreBenefitV2Model value, $Res Function(StoreBenefitV2Model) then) =
      _$StoreBenefitV2ModelCopyWithImpl<$Res, StoreBenefitV2Model>;
  @useResult
  $Res call({StoreBenefitType? type, String? description});
}

/// @nodoc
class _$StoreBenefitV2ModelCopyWithImpl<$Res, $Val extends StoreBenefitV2Model>
    implements $StoreBenefitV2ModelCopyWith<$Res> {
  _$StoreBenefitV2ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreBenefitV2Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoreBenefitType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreBenefitV2ModelImplCopyWith<$Res>
    implements $StoreBenefitV2ModelCopyWith<$Res> {
  factory _$$StoreBenefitV2ModelImplCopyWith(_$StoreBenefitV2ModelImpl value,
          $Res Function(_$StoreBenefitV2ModelImpl) then) =
      __$$StoreBenefitV2ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoreBenefitType? type, String? description});
}

/// @nodoc
class __$$StoreBenefitV2ModelImplCopyWithImpl<$Res>
    extends _$StoreBenefitV2ModelCopyWithImpl<$Res, _$StoreBenefitV2ModelImpl>
    implements _$$StoreBenefitV2ModelImplCopyWith<$Res> {
  __$$StoreBenefitV2ModelImplCopyWithImpl(_$StoreBenefitV2ModelImpl _value,
      $Res Function(_$StoreBenefitV2ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreBenefitV2Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_$StoreBenefitV2ModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoreBenefitType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StoreBenefitV2ModelImpl implements _StoreBenefitV2Model {
  _$StoreBenefitV2ModelImpl({required this.type, required this.description});

  @override
  final StoreBenefitType? type;
  @override
  final String? description;

  @override
  String toString() {
    return 'StoreBenefitV2Model(type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBenefitV2ModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, description);

  /// Create a copy of StoreBenefitV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBenefitV2ModelImplCopyWith<_$StoreBenefitV2ModelImpl> get copyWith =>
      __$$StoreBenefitV2ModelImplCopyWithImpl<_$StoreBenefitV2ModelImpl>(
          this, _$identity);
}

abstract class _StoreBenefitV2Model implements StoreBenefitV2Model {
  factory _StoreBenefitV2Model(
      {required final StoreBenefitType? type,
      required final String? description}) = _$StoreBenefitV2ModelImpl;

  @override
  StoreBenefitType? get type;
  @override
  String? get description;

  /// Create a copy of StoreBenefitV2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreBenefitV2ModelImplCopyWith<_$StoreBenefitV2ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreTagV2Model {
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of StoreTagV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreTagV2ModelCopyWith<StoreTagV2Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreTagV2ModelCopyWith<$Res> {
  factory $StoreTagV2ModelCopyWith(
          StoreTagV2Model value, $Res Function(StoreTagV2Model) then) =
      _$StoreTagV2ModelCopyWithImpl<$Res, StoreTagV2Model>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$StoreTagV2ModelCopyWithImpl<$Res, $Val extends StoreTagV2Model>
    implements $StoreTagV2ModelCopyWith<$Res> {
  _$StoreTagV2ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreTagV2Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreTagV2ModelImplCopyWith<$Res>
    implements $StoreTagV2ModelCopyWith<$Res> {
  factory _$$StoreTagV2ModelImplCopyWith(_$StoreTagV2ModelImpl value,
          $Res Function(_$StoreTagV2ModelImpl) then) =
      __$$StoreTagV2ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$StoreTagV2ModelImplCopyWithImpl<$Res>
    extends _$StoreTagV2ModelCopyWithImpl<$Res, _$StoreTagV2ModelImpl>
    implements _$$StoreTagV2ModelImplCopyWith<$Res> {
  __$$StoreTagV2ModelImplCopyWithImpl(
      _$StoreTagV2ModelImpl _value, $Res Function(_$StoreTagV2ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreTagV2Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$StoreTagV2ModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StoreTagV2ModelImpl implements _StoreTagV2Model {
  _$StoreTagV2ModelImpl({required this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'StoreTagV2Model(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTagV2ModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of StoreTagV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTagV2ModelImplCopyWith<_$StoreTagV2ModelImpl> get copyWith =>
      __$$StoreTagV2ModelImplCopyWithImpl<_$StoreTagV2ModelImpl>(
          this, _$identity);
}

abstract class _StoreTagV2Model implements StoreTagV2Model {
  factory _StoreTagV2Model({required final String? name}) =
      _$StoreTagV2ModelImpl;

  @override
  String? get name;

  /// Create a copy of StoreTagV2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreTagV2ModelImplCopyWith<_$StoreTagV2ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreGameMttV2Model {
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

  /// Create a copy of StoreGameMttV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreGameMttV2ModelCopyWith<StoreGameMttV2Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreGameMttV2ModelCopyWith<$Res> {
  factory $StoreGameMttV2ModelCopyWith(
          StoreGameMttV2Model value, $Res Function(StoreGameMttV2Model) then) =
      _$StoreGameMttV2ModelCopyWithImpl<$Res, StoreGameMttV2Model>;
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
class _$StoreGameMttV2ModelCopyWithImpl<$Res, $Val extends StoreGameMttV2Model>
    implements $StoreGameMttV2ModelCopyWith<$Res> {
  _$StoreGameMttV2ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreGameMttV2Model
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
abstract class _$$StoreGameMttV2ModelImplCopyWith<$Res>
    implements $StoreGameMttV2ModelCopyWith<$Res> {
  factory _$$StoreGameMttV2ModelImplCopyWith(_$StoreGameMttV2ModelImpl value,
          $Res Function(_$StoreGameMttV2ModelImpl) then) =
      __$$StoreGameMttV2ModelImplCopyWithImpl<$Res>;
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
class __$$StoreGameMttV2ModelImplCopyWithImpl<$Res>
    extends _$StoreGameMttV2ModelCopyWithImpl<$Res, _$StoreGameMttV2ModelImpl>
    implements _$$StoreGameMttV2ModelImplCopyWith<$Res> {
  __$$StoreGameMttV2ModelImplCopyWithImpl(_$StoreGameMttV2ModelImpl _value,
      $Res Function(_$StoreGameMttV2ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreGameMttV2Model
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
    return _then(_$StoreGameMttV2ModelImpl(
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

class _$StoreGameMttV2ModelImpl implements _StoreGameMttV2Model {
  _$StoreGameMttV2ModelImpl(
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
    return 'StoreGameMttV2Model(id: $id, name: $name, type: $type, entryType: $entryType, entryPrice: $entryPrice, entryMax: $entryMax, reEntryMax: $reEntryMax, duration: $duration, prizeType: $prizeType, prize: $prize, gtdMinReward: $gtdMinReward, eventType: $eventType, isDaily: $isDaily, gameSchedule: $gameSchedule, regEndBlindLevel: $regEndBlindLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreGameMttV2ModelImpl &&
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

  /// Create a copy of StoreGameMttV2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreGameMttV2ModelImplCopyWith<_$StoreGameMttV2ModelImpl> get copyWith =>
      __$$StoreGameMttV2ModelImplCopyWithImpl<_$StoreGameMttV2ModelImpl>(
          this, _$identity);
}

abstract class _StoreGameMttV2Model implements StoreGameMttV2Model {
  factory _StoreGameMttV2Model(
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
      required final int regEndBlindLevel}) = _$StoreGameMttV2ModelImpl;

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

  /// Create a copy of StoreGameMttV2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreGameMttV2ModelImplCopyWith<_$StoreGameMttV2ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
