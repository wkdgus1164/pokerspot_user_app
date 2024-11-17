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
  String get kakaoChatUrl => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  List<StoreImagesModel> get storeImages => throw _privateConstructorUsedError;
  List<StoreBenefitsModel> get storeBenefits =>
      throw _privateConstructorUsedError;
  List<StoreTagModel> get storeTags => throw _privateConstructorUsedError;
  List<StoreGamesModel> get gameMTTItems => throw _privateConstructorUsedError;

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
      String kakaoChatUrl,
      DateTime updatedAt,
      double distance,
      double lat,
      double lng,
      List<StoreImagesModel> storeImages,
      List<StoreBenefitsModel> storeBenefits,
      List<StoreTagModel> storeTags,
      List<StoreGamesModel> gameMTTItems});
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
    Object? kakaoChatUrl = null,
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
      kakaoChatUrl: null == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<StoreBenefitsModel>,
      storeTags: null == storeTags
          ? _value.storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagModel>,
      gameMTTItems: null == gameMTTItems
          ? _value.gameMTTItems
          : gameMTTItems // ignore: cast_nullable_to_non_nullable
              as List<StoreGamesModel>,
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
      String kakaoChatUrl,
      DateTime updatedAt,
      double distance,
      double lat,
      double lng,
      List<StoreImagesModel> storeImages,
      List<StoreBenefitsModel> storeBenefits,
      List<StoreTagModel> storeTags,
      List<StoreGamesModel> gameMTTItems});
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
    Object? kakaoChatUrl = null,
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
      kakaoChatUrl: null == kakaoChatUrl
          ? _value.kakaoChatUrl
          : kakaoChatUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<StoreBenefitsModel>,
      storeTags: null == storeTags
          ? _value._storeTags
          : storeTags // ignore: cast_nullable_to_non_nullable
              as List<StoreTagModel>,
      gameMTTItems: null == gameMTTItems
          ? _value._gameMTTItems
          : gameMTTItems // ignore: cast_nullable_to_non_nullable
              as List<StoreGamesModel>,
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
      required this.kakaoChatUrl,
      required this.updatedAt,
      required this.distance,
      required this.lat,
      required this.lng,
      required final List<StoreImagesModel> storeImages,
      required final List<StoreBenefitsModel> storeBenefits,
      required final List<StoreTagModel> storeTags,
      required final List<StoreGamesModel> gameMTTItems})
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
  final String kakaoChatUrl;
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

  final List<StoreBenefitsModel> _storeBenefits;
  @override
  List<StoreBenefitsModel> get storeBenefits {
    if (_storeBenefits is EqualUnmodifiableListView) return _storeBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeBenefits);
  }

  final List<StoreTagModel> _storeTags;
  @override
  List<StoreTagModel> get storeTags {
    if (_storeTags is EqualUnmodifiableListView) return _storeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeTags);
  }

  final List<StoreGamesModel> _gameMTTItems;
  @override
  List<StoreGamesModel> get gameMTTItems {
    if (_gameMTTItems is EqualUnmodifiableListView) return _gameMTTItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameMTTItems);
  }

  @override
  String toString() {
    return 'StoreV2Model(id: $id, type: $type, name: $name, address: $address, addressDetail: $addressDetail, openTime: $openTime, closeTime: $closeTime, phone: $phone, kakaoChatUrl: $kakaoChatUrl, updatedAt: $updatedAt, distance: $distance, lat: $lat, lng: $lng, storeImages: $storeImages, storeBenefits: $storeBenefits, storeTags: $storeTags, gameMTTItems: $gameMTTItems)';
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
      required final String kakaoChatUrl,
      required final DateTime updatedAt,
      required final double distance,
      required final double lat,
      required final double lng,
      required final List<StoreImagesModel> storeImages,
      required final List<StoreBenefitsModel> storeBenefits,
      required final List<StoreTagModel> storeTags,
      required final List<StoreGamesModel> gameMTTItems}) = _$StoreV2ModelImpl;

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
  String get kakaoChatUrl;
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
  List<StoreBenefitsModel> get storeBenefits;
  @override
  List<StoreTagModel> get storeTags;
  @override
  List<StoreGamesModel> get gameMTTItems;

  /// Create a copy of StoreV2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreV2ModelImplCopyWith<_$StoreV2ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreBenefitsModel {
  StoreBenefitType? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of StoreBenefitsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreBenefitsModelCopyWith<StoreBenefitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBenefitsModelCopyWith<$Res> {
  factory $StoreBenefitsModelCopyWith(
          StoreBenefitsModel value, $Res Function(StoreBenefitsModel) then) =
      _$StoreBenefitsModelCopyWithImpl<$Res, StoreBenefitsModel>;
  @useResult
  $Res call({StoreBenefitType? type, String? description});
}

/// @nodoc
class _$StoreBenefitsModelCopyWithImpl<$Res, $Val extends StoreBenefitsModel>
    implements $StoreBenefitsModelCopyWith<$Res> {
  _$StoreBenefitsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreBenefitsModel
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
abstract class _$$StoreBenefitsModelImplCopyWith<$Res>
    implements $StoreBenefitsModelCopyWith<$Res> {
  factory _$$StoreBenefitsModelImplCopyWith(_$StoreBenefitsModelImpl value,
          $Res Function(_$StoreBenefitsModelImpl) then) =
      __$$StoreBenefitsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoreBenefitType? type, String? description});
}

/// @nodoc
class __$$StoreBenefitsModelImplCopyWithImpl<$Res>
    extends _$StoreBenefitsModelCopyWithImpl<$Res, _$StoreBenefitsModelImpl>
    implements _$$StoreBenefitsModelImplCopyWith<$Res> {
  __$$StoreBenefitsModelImplCopyWithImpl(_$StoreBenefitsModelImpl _value,
      $Res Function(_$StoreBenefitsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreBenefitsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_$StoreBenefitsModelImpl(
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

class _$StoreBenefitsModelImpl implements _StoreBenefitsModel {
  _$StoreBenefitsModelImpl({required this.type, required this.description});

  @override
  final StoreBenefitType? type;
  @override
  final String? description;

  @override
  String toString() {
    return 'StoreBenefitsModel(type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBenefitsModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, description);

  /// Create a copy of StoreBenefitsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBenefitsModelImplCopyWith<_$StoreBenefitsModelImpl> get copyWith =>
      __$$StoreBenefitsModelImplCopyWithImpl<_$StoreBenefitsModelImpl>(
          this, _$identity);
}

abstract class _StoreBenefitsModel implements StoreBenefitsModel {
  factory _StoreBenefitsModel(
      {required final StoreBenefitType? type,
      required final String? description}) = _$StoreBenefitsModelImpl;

  @override
  StoreBenefitType? get type;
  @override
  String? get description;

  /// Create a copy of StoreBenefitsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreBenefitsModelImplCopyWith<_$StoreBenefitsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreTagModel {
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of StoreTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreTagModelCopyWith<StoreTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreTagModelCopyWith<$Res> {
  factory $StoreTagModelCopyWith(
          StoreTagModel value, $Res Function(StoreTagModel) then) =
      _$StoreTagModelCopyWithImpl<$Res, StoreTagModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$StoreTagModelCopyWithImpl<$Res, $Val extends StoreTagModel>
    implements $StoreTagModelCopyWith<$Res> {
  _$StoreTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreTagModel
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
abstract class _$$StoreTagsModelImplCopyWith<$Res>
    implements $StoreTagModelCopyWith<$Res> {
  factory _$$StoreTagsModelImplCopyWith(_$StoreTagsModelImpl value,
          $Res Function(_$StoreTagsModelImpl) then) =
      __$$StoreTagsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$StoreTagsModelImplCopyWithImpl<$Res>
    extends _$StoreTagModelCopyWithImpl<$Res, _$StoreTagsModelImpl>
    implements _$$StoreTagsModelImplCopyWith<$Res> {
  __$$StoreTagsModelImplCopyWithImpl(
      _$StoreTagsModelImpl _value, $Res Function(_$StoreTagsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreTagModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$StoreTagsModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StoreTagsModelImpl implements _StoreTagsModel {
  _$StoreTagsModelImpl({required this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'StoreTagModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTagsModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of StoreTagModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTagsModelImplCopyWith<_$StoreTagsModelImpl> get copyWith =>
      __$$StoreTagsModelImplCopyWithImpl<_$StoreTagsModelImpl>(
          this, _$identity);
}

abstract class _StoreTagsModel implements StoreTagModel {
  factory _StoreTagsModel({required final String? name}) = _$StoreTagsModelImpl;

  @override
  String? get name;

  /// Create a copy of StoreTagModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreTagsModelImplCopyWith<_$StoreTagsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
