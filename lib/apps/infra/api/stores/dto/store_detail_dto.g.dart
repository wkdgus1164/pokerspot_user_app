// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreDetailDataDtoImpl _$$StoreDetailDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDetailDataDtoImpl(
      data: StoreDetailDto.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$StoreDetailDataDtoImplToJson(
        _$StoreDetailDataDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$StoreDetailDtoImpl _$$StoreDetailDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreDetailDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String?,
      address: json['address'] as String?,
      addressDetail: json['addressDetail'] as String?,
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
      phone: json['phone'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      storeImages: (json['storeImages'] as List<dynamic>?)
          ?.map((e) =>
              StoreDetailStoreImagesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameMttItems: (json['gameMttItems'] as List<dynamic>?)
          ?.map((e) =>
              StoreDetailGameMttItemsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoreDetailDtoImplToJson(
        _$StoreDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'phone': instance.phone,
      'distance': instance.distance,
      'lat': instance.lat,
      'lng': instance.lng,
      'storeImages': instance.storeImages,
      'gameMttItems': instance.gameMttItems,
    };

_$StoreDetailStoreImagesDtoImpl _$$StoreDetailStoreImagesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDetailStoreImagesDtoImpl(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$StoreDetailStoreImagesDtoImplToJson(
        _$StoreDetailStoreImagesDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$StoreDetailGameMttItemsDtoImpl _$$StoreDetailGameMttItemsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDetailGameMttItemsDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
      entryPrice: (json['entryPrice'] as num?)?.toInt(),
      entryMax: (json['entryMax'] as num?)?.toInt(),
      reEntryMax: (json['reEntryMax'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      prize: (json['prize'] as num?)?.toInt(),
      eventType: json['eventType'] as String?,
      isDaily: json['isDaily'] as bool,
    );

Map<String, dynamic> _$$StoreDetailGameMttItemsDtoImplToJson(
        _$StoreDetailGameMttItemsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'entryPrice': instance.entryPrice,
      'entryMax': instance.entryMax,
      'reEntryMax': instance.reEntryMax,
      'duration': instance.duration,
      'prize': instance.prize,
      'eventType': instance.eventType,
      'isDaily': instance.isDaily,
    };
