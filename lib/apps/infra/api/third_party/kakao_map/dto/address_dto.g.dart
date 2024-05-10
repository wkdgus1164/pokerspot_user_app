// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      meta: json['meta'] == null
          ? null
          : AddressMetaDto.fromJson(json['meta'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : AddressDocumentsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'documents': instance.documents,
    };

_$AddressMetaDtoImpl _$$AddressMetaDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressMetaDtoImpl(
      total_count: (json['total_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddressMetaDtoImplToJson(
        _$AddressMetaDtoImpl instance) =>
    <String, dynamic>{
      'total_count': instance.total_count,
    };

_$AddressDocumentsDtoImpl _$$AddressDocumentsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDocumentsDtoImpl(
      road_address: json['road_address'] == null
          ? null
          : AddressDocumentsRoadAddressDto.fromJson(
              json['road_address'] as Map<String, dynamic>),
      address: AddressDocumentsAddressDto.fromJson(
          json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressDocumentsDtoImplToJson(
        _$AddressDocumentsDtoImpl instance) =>
    <String, dynamic>{
      'road_address': instance.road_address,
      'address': instance.address,
    };

_$AddressDocumentsRoadAddressDtoImpl
    _$$AddressDocumentsRoadAddressDtoImplFromJson(Map<String, dynamic> json) =>
        _$AddressDocumentsRoadAddressDtoImpl(
          address_name: json['address_name'] as String?,
          region_1depth_name: json['region_1depth_name'] as String?,
          region_2depth_name: json['region_2depth_name'] as String?,
          region_3depth_name: json['region_3depth_name'] as String?,
          road_name: json['road_name'] as String?,
          underground_yn: json['underground_yn'] as String?,
          main_building_no: json['main_building_no'] as String?,
          sub_building_no: json['sub_building_no'] as String?,
          building_name: json['building_name'] as String?,
          zone_no: json['zone_no'] as String?,
        );

Map<String, dynamic> _$$AddressDocumentsRoadAddressDtoImplToJson(
        _$AddressDocumentsRoadAddressDtoImpl instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'region_1depth_name': instance.region_1depth_name,
      'region_2depth_name': instance.region_2depth_name,
      'region_3depth_name': instance.region_3depth_name,
      'road_name': instance.road_name,
      'underground_yn': instance.underground_yn,
      'main_building_no': instance.main_building_no,
      'sub_building_no': instance.sub_building_no,
      'building_name': instance.building_name,
      'zone_no': instance.zone_no,
    };

_$AddressDocumentsAddressDtoImpl _$$AddressDocumentsAddressDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDocumentsAddressDtoImpl(
      address_name: json['address_name'] as String,
      region_1depth_name: json['region_1depth_name'] as String?,
      region_2depth_name: json['region_2depth_name'] as String?,
      region_3depth_name: json['region_3depth_name'] as String?,
      mountain_yn: json['mountain_yn'] as String?,
      main_address_no: json['main_address_no'] as String?,
      sub_address_no: json['sub_address_no'] as String?,
      zip_code: json['zip_code'] as String?,
    );

Map<String, dynamic> _$$AddressDocumentsAddressDtoImplToJson(
        _$AddressDocumentsAddressDtoImpl instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'region_1depth_name': instance.region_1depth_name,
      'region_2depth_name': instance.region_2depth_name,
      'region_3depth_name': instance.region_3depth_name,
      'mountain_yn': instance.mountain_yn,
      'main_address_no': instance.main_address_no,
      'sub_address_no': instance.sub_address_no,
      'zip_code': instance.zip_code,
    };
