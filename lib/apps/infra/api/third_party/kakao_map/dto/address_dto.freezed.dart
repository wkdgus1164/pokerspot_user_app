// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  AddressMetaDto? get meta => throw _privateConstructorUsedError;
  List<AddressDocumentsDto?> get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call({AddressMetaDto? meta, List<AddressDocumentsDto?> documents});

  $AddressMetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as AddressMetaDto?,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AddressDocumentsDto?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressMetaDtoCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $AddressMetaDtoCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressMetaDto? meta, List<AddressDocumentsDto?> documents});

  @override
  $AddressMetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? documents = null,
  }) {
    return _then(_$AddressDtoImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as AddressMetaDto?,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AddressDocumentsDto?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl implements _AddressDto {
  _$AddressDtoImpl(
      {required this.meta, required final List<AddressDocumentsDto?> documents})
      : _documents = documents;

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  final AddressMetaDto? meta;
  final List<AddressDocumentsDto?> _documents;
  @override
  List<AddressDocumentsDto?> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'AddressDto(meta: $meta, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto implements AddressDto {
  factory _AddressDto(
      {required final AddressMetaDto? meta,
      required final List<AddressDocumentsDto?> documents}) = _$AddressDtoImpl;

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  AddressMetaDto? get meta;
  @override
  List<AddressDocumentsDto?> get documents;
  @override
  @JsonKey(ignore: true)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressMetaDto _$AddressMetaDtoFromJson(Map<String, dynamic> json) {
  return _AddressMetaDto.fromJson(json);
}

/// @nodoc
mixin _$AddressMetaDto {
  int? get total_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressMetaDtoCopyWith<AddressMetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressMetaDtoCopyWith<$Res> {
  factory $AddressMetaDtoCopyWith(
          AddressMetaDto value, $Res Function(AddressMetaDto) then) =
      _$AddressMetaDtoCopyWithImpl<$Res, AddressMetaDto>;
  @useResult
  $Res call({int? total_count});
}

/// @nodoc
class _$AddressMetaDtoCopyWithImpl<$Res, $Val extends AddressMetaDto>
    implements $AddressMetaDtoCopyWith<$Res> {
  _$AddressMetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_count = freezed,
  }) {
    return _then(_value.copyWith(
      total_count: freezed == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressMetaDtoImplCopyWith<$Res>
    implements $AddressMetaDtoCopyWith<$Res> {
  factory _$$AddressMetaDtoImplCopyWith(_$AddressMetaDtoImpl value,
          $Res Function(_$AddressMetaDtoImpl) then) =
      __$$AddressMetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total_count});
}

/// @nodoc
class __$$AddressMetaDtoImplCopyWithImpl<$Res>
    extends _$AddressMetaDtoCopyWithImpl<$Res, _$AddressMetaDtoImpl>
    implements _$$AddressMetaDtoImplCopyWith<$Res> {
  __$$AddressMetaDtoImplCopyWithImpl(
      _$AddressMetaDtoImpl _value, $Res Function(_$AddressMetaDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_count = freezed,
  }) {
    return _then(_$AddressMetaDtoImpl(
      total_count: freezed == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressMetaDtoImpl implements _AddressMetaDto {
  _$AddressMetaDtoImpl({required this.total_count});

  factory _$AddressMetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressMetaDtoImplFromJson(json);

  @override
  final int? total_count;

  @override
  String toString() {
    return 'AddressMetaDto(total_count: $total_count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressMetaDtoImpl &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressMetaDtoImplCopyWith<_$AddressMetaDtoImpl> get copyWith =>
      __$$AddressMetaDtoImplCopyWithImpl<_$AddressMetaDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressMetaDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressMetaDto implements AddressMetaDto {
  factory _AddressMetaDto({required final int? total_count}) =
      _$AddressMetaDtoImpl;

  factory _AddressMetaDto.fromJson(Map<String, dynamic> json) =
      _$AddressMetaDtoImpl.fromJson;

  @override
  int? get total_count;
  @override
  @JsonKey(ignore: true)
  _$$AddressMetaDtoImplCopyWith<_$AddressMetaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDocumentsDto _$AddressDocumentsDtoFromJson(Map<String, dynamic> json) {
  return _AddressDocumentsDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDocumentsDto {
  AddressDocumentsRoadAddressDto? get road_address =>
      throw _privateConstructorUsedError;
  AddressDocumentsAddressDto get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDocumentsDtoCopyWith<AddressDocumentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDocumentsDtoCopyWith<$Res> {
  factory $AddressDocumentsDtoCopyWith(
          AddressDocumentsDto value, $Res Function(AddressDocumentsDto) then) =
      _$AddressDocumentsDtoCopyWithImpl<$Res, AddressDocumentsDto>;
  @useResult
  $Res call(
      {AddressDocumentsRoadAddressDto? road_address,
      AddressDocumentsAddressDto address});

  $AddressDocumentsRoadAddressDtoCopyWith<$Res>? get road_address;
  $AddressDocumentsAddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class _$AddressDocumentsDtoCopyWithImpl<$Res, $Val extends AddressDocumentsDto>
    implements $AddressDocumentsDtoCopyWith<$Res> {
  _$AddressDocumentsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? road_address = freezed,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      road_address: freezed == road_address
          ? _value.road_address
          : road_address // ignore: cast_nullable_to_non_nullable
              as AddressDocumentsRoadAddressDto?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDocumentsAddressDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDocumentsRoadAddressDtoCopyWith<$Res>? get road_address {
    if (_value.road_address == null) {
      return null;
    }

    return $AddressDocumentsRoadAddressDtoCopyWith<$Res>(_value.road_address!,
        (value) {
      return _then(_value.copyWith(road_address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDocumentsAddressDtoCopyWith<$Res> get address {
    return $AddressDocumentsAddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDocumentsDtoImplCopyWith<$Res>
    implements $AddressDocumentsDtoCopyWith<$Res> {
  factory _$$AddressDocumentsDtoImplCopyWith(_$AddressDocumentsDtoImpl value,
          $Res Function(_$AddressDocumentsDtoImpl) then) =
      __$$AddressDocumentsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressDocumentsRoadAddressDto? road_address,
      AddressDocumentsAddressDto address});

  @override
  $AddressDocumentsRoadAddressDtoCopyWith<$Res>? get road_address;
  @override
  $AddressDocumentsAddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class __$$AddressDocumentsDtoImplCopyWithImpl<$Res>
    extends _$AddressDocumentsDtoCopyWithImpl<$Res, _$AddressDocumentsDtoImpl>
    implements _$$AddressDocumentsDtoImplCopyWith<$Res> {
  __$$AddressDocumentsDtoImplCopyWithImpl(_$AddressDocumentsDtoImpl _value,
      $Res Function(_$AddressDocumentsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? road_address = freezed,
    Object? address = null,
  }) {
    return _then(_$AddressDocumentsDtoImpl(
      road_address: freezed == road_address
          ? _value.road_address
          : road_address // ignore: cast_nullable_to_non_nullable
              as AddressDocumentsRoadAddressDto?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDocumentsAddressDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDocumentsDtoImpl implements _AddressDocumentsDto {
  _$AddressDocumentsDtoImpl(
      {required this.road_address, required this.address});

  factory _$AddressDocumentsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDocumentsDtoImplFromJson(json);

  @override
  final AddressDocumentsRoadAddressDto? road_address;
  @override
  final AddressDocumentsAddressDto address;

  @override
  String toString() {
    return 'AddressDocumentsDto(road_address: $road_address, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDocumentsDtoImpl &&
            (identical(other.road_address, road_address) ||
                other.road_address == road_address) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, road_address, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDocumentsDtoImplCopyWith<_$AddressDocumentsDtoImpl> get copyWith =>
      __$$AddressDocumentsDtoImplCopyWithImpl<_$AddressDocumentsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDocumentsDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDocumentsDto implements AddressDocumentsDto {
  factory _AddressDocumentsDto(
          {required final AddressDocumentsRoadAddressDto? road_address,
          required final AddressDocumentsAddressDto address}) =
      _$AddressDocumentsDtoImpl;

  factory _AddressDocumentsDto.fromJson(Map<String, dynamic> json) =
      _$AddressDocumentsDtoImpl.fromJson;

  @override
  AddressDocumentsRoadAddressDto? get road_address;
  @override
  AddressDocumentsAddressDto get address;
  @override
  @JsonKey(ignore: true)
  _$$AddressDocumentsDtoImplCopyWith<_$AddressDocumentsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDocumentsRoadAddressDto _$AddressDocumentsRoadAddressDtoFromJson(
    Map<String, dynamic> json) {
  return _AddressDocumentsRoadAddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDocumentsRoadAddressDto {
  String? get address_name => throw _privateConstructorUsedError;
  String? get region_1depth_name => throw _privateConstructorUsedError;
  String? get region_2depth_name => throw _privateConstructorUsedError;
  String? get region_3depth_name => throw _privateConstructorUsedError;
  String? get road_name => throw _privateConstructorUsedError;
  String? get underground_yn => throw _privateConstructorUsedError;
  String? get main_building_no => throw _privateConstructorUsedError;
  String? get sub_building_no => throw _privateConstructorUsedError;
  String? get building_name => throw _privateConstructorUsedError;
  String? get zone_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDocumentsRoadAddressDtoCopyWith<AddressDocumentsRoadAddressDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDocumentsRoadAddressDtoCopyWith<$Res> {
  factory $AddressDocumentsRoadAddressDtoCopyWith(
          AddressDocumentsRoadAddressDto value,
          $Res Function(AddressDocumentsRoadAddressDto) then) =
      _$AddressDocumentsRoadAddressDtoCopyWithImpl<$Res,
          AddressDocumentsRoadAddressDto>;
  @useResult
  $Res call(
      {String? address_name,
      String? region_1depth_name,
      String? region_2depth_name,
      String? region_3depth_name,
      String? road_name,
      String? underground_yn,
      String? main_building_no,
      String? sub_building_no,
      String? building_name,
      String? zone_no});
}

/// @nodoc
class _$AddressDocumentsRoadAddressDtoCopyWithImpl<$Res,
        $Val extends AddressDocumentsRoadAddressDto>
    implements $AddressDocumentsRoadAddressDtoCopyWith<$Res> {
  _$AddressDocumentsRoadAddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = freezed,
    Object? region_1depth_name = freezed,
    Object? region_2depth_name = freezed,
    Object? region_3depth_name = freezed,
    Object? road_name = freezed,
    Object? underground_yn = freezed,
    Object? main_building_no = freezed,
    Object? sub_building_no = freezed,
    Object? building_name = freezed,
    Object? zone_no = freezed,
  }) {
    return _then(_value.copyWith(
      address_name: freezed == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_1depth_name: freezed == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_2depth_name: freezed == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_3depth_name: freezed == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      road_name: freezed == road_name
          ? _value.road_name
          : road_name // ignore: cast_nullable_to_non_nullable
              as String?,
      underground_yn: freezed == underground_yn
          ? _value.underground_yn
          : underground_yn // ignore: cast_nullable_to_non_nullable
              as String?,
      main_building_no: freezed == main_building_no
          ? _value.main_building_no
          : main_building_no // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_building_no: freezed == sub_building_no
          ? _value.sub_building_no
          : sub_building_no // ignore: cast_nullable_to_non_nullable
              as String?,
      building_name: freezed == building_name
          ? _value.building_name
          : building_name // ignore: cast_nullable_to_non_nullable
              as String?,
      zone_no: freezed == zone_no
          ? _value.zone_no
          : zone_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDocumentsRoadAddressDtoImplCopyWith<$Res>
    implements $AddressDocumentsRoadAddressDtoCopyWith<$Res> {
  factory _$$AddressDocumentsRoadAddressDtoImplCopyWith(
          _$AddressDocumentsRoadAddressDtoImpl value,
          $Res Function(_$AddressDocumentsRoadAddressDtoImpl) then) =
      __$$AddressDocumentsRoadAddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address_name,
      String? region_1depth_name,
      String? region_2depth_name,
      String? region_3depth_name,
      String? road_name,
      String? underground_yn,
      String? main_building_no,
      String? sub_building_no,
      String? building_name,
      String? zone_no});
}

/// @nodoc
class __$$AddressDocumentsRoadAddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDocumentsRoadAddressDtoCopyWithImpl<$Res,
        _$AddressDocumentsRoadAddressDtoImpl>
    implements _$$AddressDocumentsRoadAddressDtoImplCopyWith<$Res> {
  __$$AddressDocumentsRoadAddressDtoImplCopyWithImpl(
      _$AddressDocumentsRoadAddressDtoImpl _value,
      $Res Function(_$AddressDocumentsRoadAddressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = freezed,
    Object? region_1depth_name = freezed,
    Object? region_2depth_name = freezed,
    Object? region_3depth_name = freezed,
    Object? road_name = freezed,
    Object? underground_yn = freezed,
    Object? main_building_no = freezed,
    Object? sub_building_no = freezed,
    Object? building_name = freezed,
    Object? zone_no = freezed,
  }) {
    return _then(_$AddressDocumentsRoadAddressDtoImpl(
      address_name: freezed == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_1depth_name: freezed == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_2depth_name: freezed == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_3depth_name: freezed == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      road_name: freezed == road_name
          ? _value.road_name
          : road_name // ignore: cast_nullable_to_non_nullable
              as String?,
      underground_yn: freezed == underground_yn
          ? _value.underground_yn
          : underground_yn // ignore: cast_nullable_to_non_nullable
              as String?,
      main_building_no: freezed == main_building_no
          ? _value.main_building_no
          : main_building_no // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_building_no: freezed == sub_building_no
          ? _value.sub_building_no
          : sub_building_no // ignore: cast_nullable_to_non_nullable
              as String?,
      building_name: freezed == building_name
          ? _value.building_name
          : building_name // ignore: cast_nullable_to_non_nullable
              as String?,
      zone_no: freezed == zone_no
          ? _value.zone_no
          : zone_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDocumentsRoadAddressDtoImpl
    implements _AddressDocumentsRoadAddressDto {
  _$AddressDocumentsRoadAddressDtoImpl(
      {required this.address_name,
      required this.region_1depth_name,
      required this.region_2depth_name,
      required this.region_3depth_name,
      required this.road_name,
      required this.underground_yn,
      required this.main_building_no,
      required this.sub_building_no,
      required this.building_name,
      required this.zone_no});

  factory _$AddressDocumentsRoadAddressDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddressDocumentsRoadAddressDtoImplFromJson(json);

  @override
  final String? address_name;
  @override
  final String? region_1depth_name;
  @override
  final String? region_2depth_name;
  @override
  final String? region_3depth_name;
  @override
  final String? road_name;
  @override
  final String? underground_yn;
  @override
  final String? main_building_no;
  @override
  final String? sub_building_no;
  @override
  final String? building_name;
  @override
  final String? zone_no;

  @override
  String toString() {
    return 'AddressDocumentsRoadAddressDto(address_name: $address_name, region_1depth_name: $region_1depth_name, region_2depth_name: $region_2depth_name, region_3depth_name: $region_3depth_name, road_name: $road_name, underground_yn: $underground_yn, main_building_no: $main_building_no, sub_building_no: $sub_building_no, building_name: $building_name, zone_no: $zone_no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDocumentsRoadAddressDtoImpl &&
            (identical(other.address_name, address_name) ||
                other.address_name == address_name) &&
            (identical(other.region_1depth_name, region_1depth_name) ||
                other.region_1depth_name == region_1depth_name) &&
            (identical(other.region_2depth_name, region_2depth_name) ||
                other.region_2depth_name == region_2depth_name) &&
            (identical(other.region_3depth_name, region_3depth_name) ||
                other.region_3depth_name == region_3depth_name) &&
            (identical(other.road_name, road_name) ||
                other.road_name == road_name) &&
            (identical(other.underground_yn, underground_yn) ||
                other.underground_yn == underground_yn) &&
            (identical(other.main_building_no, main_building_no) ||
                other.main_building_no == main_building_no) &&
            (identical(other.sub_building_no, sub_building_no) ||
                other.sub_building_no == sub_building_no) &&
            (identical(other.building_name, building_name) ||
                other.building_name == building_name) &&
            (identical(other.zone_no, zone_no) || other.zone_no == zone_no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address_name,
      region_1depth_name,
      region_2depth_name,
      region_3depth_name,
      road_name,
      underground_yn,
      main_building_no,
      sub_building_no,
      building_name,
      zone_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDocumentsRoadAddressDtoImplCopyWith<
          _$AddressDocumentsRoadAddressDtoImpl>
      get copyWith => __$$AddressDocumentsRoadAddressDtoImplCopyWithImpl<
          _$AddressDocumentsRoadAddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDocumentsRoadAddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDocumentsRoadAddressDto
    implements AddressDocumentsRoadAddressDto {
  factory _AddressDocumentsRoadAddressDto(
      {required final String? address_name,
      required final String? region_1depth_name,
      required final String? region_2depth_name,
      required final String? region_3depth_name,
      required final String? road_name,
      required final String? underground_yn,
      required final String? main_building_no,
      required final String? sub_building_no,
      required final String? building_name,
      required final String? zone_no}) = _$AddressDocumentsRoadAddressDtoImpl;

  factory _AddressDocumentsRoadAddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDocumentsRoadAddressDtoImpl.fromJson;

  @override
  String? get address_name;
  @override
  String? get region_1depth_name;
  @override
  String? get region_2depth_name;
  @override
  String? get region_3depth_name;
  @override
  String? get road_name;
  @override
  String? get underground_yn;
  @override
  String? get main_building_no;
  @override
  String? get sub_building_no;
  @override
  String? get building_name;
  @override
  String? get zone_no;
  @override
  @JsonKey(ignore: true)
  _$$AddressDocumentsRoadAddressDtoImplCopyWith<
          _$AddressDocumentsRoadAddressDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressDocumentsAddressDto _$AddressDocumentsAddressDtoFromJson(
    Map<String, dynamic> json) {
  return _AddressDocumentsAddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDocumentsAddressDto {
  String get address_name => throw _privateConstructorUsedError;
  String? get region_1depth_name => throw _privateConstructorUsedError;
  String? get region_2depth_name => throw _privateConstructorUsedError;
  String? get region_3depth_name => throw _privateConstructorUsedError;
  String? get mountain_yn => throw _privateConstructorUsedError;
  String? get main_address_no => throw _privateConstructorUsedError;
  String? get sub_address_no => throw _privateConstructorUsedError;
  String? get zip_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDocumentsAddressDtoCopyWith<AddressDocumentsAddressDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDocumentsAddressDtoCopyWith<$Res> {
  factory $AddressDocumentsAddressDtoCopyWith(AddressDocumentsAddressDto value,
          $Res Function(AddressDocumentsAddressDto) then) =
      _$AddressDocumentsAddressDtoCopyWithImpl<$Res,
          AddressDocumentsAddressDto>;
  @useResult
  $Res call(
      {String address_name,
      String? region_1depth_name,
      String? region_2depth_name,
      String? region_3depth_name,
      String? mountain_yn,
      String? main_address_no,
      String? sub_address_no,
      String? zip_code});
}

/// @nodoc
class _$AddressDocumentsAddressDtoCopyWithImpl<$Res,
        $Val extends AddressDocumentsAddressDto>
    implements $AddressDocumentsAddressDtoCopyWith<$Res> {
  _$AddressDocumentsAddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? region_1depth_name = freezed,
    Object? region_2depth_name = freezed,
    Object? region_3depth_name = freezed,
    Object? mountain_yn = freezed,
    Object? main_address_no = freezed,
    Object? sub_address_no = freezed,
    Object? zip_code = freezed,
  }) {
    return _then(_value.copyWith(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_1depth_name: freezed == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_2depth_name: freezed == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_3depth_name: freezed == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      mountain_yn: freezed == mountain_yn
          ? _value.mountain_yn
          : mountain_yn // ignore: cast_nullable_to_non_nullable
              as String?,
      main_address_no: freezed == main_address_no
          ? _value.main_address_no
          : main_address_no // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_address_no: freezed == sub_address_no
          ? _value.sub_address_no
          : sub_address_no // ignore: cast_nullable_to_non_nullable
              as String?,
      zip_code: freezed == zip_code
          ? _value.zip_code
          : zip_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDocumentsAddressDtoImplCopyWith<$Res>
    implements $AddressDocumentsAddressDtoCopyWith<$Res> {
  factory _$$AddressDocumentsAddressDtoImplCopyWith(
          _$AddressDocumentsAddressDtoImpl value,
          $Res Function(_$AddressDocumentsAddressDtoImpl) then) =
      __$$AddressDocumentsAddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address_name,
      String? region_1depth_name,
      String? region_2depth_name,
      String? region_3depth_name,
      String? mountain_yn,
      String? main_address_no,
      String? sub_address_no,
      String? zip_code});
}

/// @nodoc
class __$$AddressDocumentsAddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDocumentsAddressDtoCopyWithImpl<$Res,
        _$AddressDocumentsAddressDtoImpl>
    implements _$$AddressDocumentsAddressDtoImplCopyWith<$Res> {
  __$$AddressDocumentsAddressDtoImplCopyWithImpl(
      _$AddressDocumentsAddressDtoImpl _value,
      $Res Function(_$AddressDocumentsAddressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_name = null,
    Object? region_1depth_name = freezed,
    Object? region_2depth_name = freezed,
    Object? region_3depth_name = freezed,
    Object? mountain_yn = freezed,
    Object? main_address_no = freezed,
    Object? sub_address_no = freezed,
    Object? zip_code = freezed,
  }) {
    return _then(_$AddressDocumentsAddressDtoImpl(
      address_name: null == address_name
          ? _value.address_name
          : address_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_1depth_name: freezed == region_1depth_name
          ? _value.region_1depth_name
          : region_1depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_2depth_name: freezed == region_2depth_name
          ? _value.region_2depth_name
          : region_2depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      region_3depth_name: freezed == region_3depth_name
          ? _value.region_3depth_name
          : region_3depth_name // ignore: cast_nullable_to_non_nullable
              as String?,
      mountain_yn: freezed == mountain_yn
          ? _value.mountain_yn
          : mountain_yn // ignore: cast_nullable_to_non_nullable
              as String?,
      main_address_no: freezed == main_address_no
          ? _value.main_address_no
          : main_address_no // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_address_no: freezed == sub_address_no
          ? _value.sub_address_no
          : sub_address_no // ignore: cast_nullable_to_non_nullable
              as String?,
      zip_code: freezed == zip_code
          ? _value.zip_code
          : zip_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDocumentsAddressDtoImpl implements _AddressDocumentsAddressDto {
  _$AddressDocumentsAddressDtoImpl(
      {required this.address_name,
      required this.region_1depth_name,
      required this.region_2depth_name,
      required this.region_3depth_name,
      required this.mountain_yn,
      required this.main_address_no,
      required this.sub_address_no,
      required this.zip_code});

  factory _$AddressDocumentsAddressDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddressDocumentsAddressDtoImplFromJson(json);

  @override
  final String address_name;
  @override
  final String? region_1depth_name;
  @override
  final String? region_2depth_name;
  @override
  final String? region_3depth_name;
  @override
  final String? mountain_yn;
  @override
  final String? main_address_no;
  @override
  final String? sub_address_no;
  @override
  final String? zip_code;

  @override
  String toString() {
    return 'AddressDocumentsAddressDto(address_name: $address_name, region_1depth_name: $region_1depth_name, region_2depth_name: $region_2depth_name, region_3depth_name: $region_3depth_name, mountain_yn: $mountain_yn, main_address_no: $main_address_no, sub_address_no: $sub_address_no, zip_code: $zip_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDocumentsAddressDtoImpl &&
            (identical(other.address_name, address_name) ||
                other.address_name == address_name) &&
            (identical(other.region_1depth_name, region_1depth_name) ||
                other.region_1depth_name == region_1depth_name) &&
            (identical(other.region_2depth_name, region_2depth_name) ||
                other.region_2depth_name == region_2depth_name) &&
            (identical(other.region_3depth_name, region_3depth_name) ||
                other.region_3depth_name == region_3depth_name) &&
            (identical(other.mountain_yn, mountain_yn) ||
                other.mountain_yn == mountain_yn) &&
            (identical(other.main_address_no, main_address_no) ||
                other.main_address_no == main_address_no) &&
            (identical(other.sub_address_no, sub_address_no) ||
                other.sub_address_no == sub_address_no) &&
            (identical(other.zip_code, zip_code) ||
                other.zip_code == zip_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address_name,
      region_1depth_name,
      region_2depth_name,
      region_3depth_name,
      mountain_yn,
      main_address_no,
      sub_address_no,
      zip_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDocumentsAddressDtoImplCopyWith<_$AddressDocumentsAddressDtoImpl>
      get copyWith => __$$AddressDocumentsAddressDtoImplCopyWithImpl<
          _$AddressDocumentsAddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDocumentsAddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDocumentsAddressDto
    implements AddressDocumentsAddressDto {
  factory _AddressDocumentsAddressDto(
      {required final String address_name,
      required final String? region_1depth_name,
      required final String? region_2depth_name,
      required final String? region_3depth_name,
      required final String? mountain_yn,
      required final String? main_address_no,
      required final String? sub_address_no,
      required final String? zip_code}) = _$AddressDocumentsAddressDtoImpl;

  factory _AddressDocumentsAddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDocumentsAddressDtoImpl.fromJson;

  @override
  String get address_name;
  @override
  String? get region_1depth_name;
  @override
  String? get region_2depth_name;
  @override
  String? get region_3depth_name;
  @override
  String? get mountain_yn;
  @override
  String? get main_address_no;
  @override
  String? get sub_address_no;
  @override
  String? get zip_code;
  @override
  @JsonKey(ignore: true)
  _$$AddressDocumentsAddressDtoImplCopyWith<_$AddressDocumentsAddressDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
