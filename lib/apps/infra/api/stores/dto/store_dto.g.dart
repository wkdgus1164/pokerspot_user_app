// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImageDtoImpl _$$StoreImageDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreImageDtoImpl(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$StoreImageDtoImplToJson(_$StoreImageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$GameMTTDtoImpl _$$GameMTTDtoImplFromJson(Map<String, dynamic> json) =>
    _$GameMTTDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      entryPrice: json['entryPrice'] as int,
      entryMax: json['entryMax'] as int?,
      reEntryMax: json['reEntryMax'] as int?,
      duration: json['duration'] as int?,
      prize: json['prize'] as int?,
      eventType: json['eventType'] as String,
      isDaily: json['isDaily'] as bool,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GameMTTDtoImplToJson(_$GameMTTDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'entryPrice': instance.entryPrice,
      'entryMax': instance.entryMax,
      'reEntryMax': instance.reEntryMax,
      'duration': instance.duration,
      'prize': instance.prize,
      'eventType': instance.eventType,
      'isDaily': instance.isDaily,
      'name': instance.name,
    };

_$StoreDtoImpl _$$StoreDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      addressDetail: json['addressDetail'] as String?,
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      storeImages: (json['storeImages'] as List<dynamic>?)
          ?.map((e) => StoreImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameMttItems: (json['gameMttItems'] as List<dynamic>)
          .map((e) => GameMTTDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoreDtoImplToJson(_$StoreDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'distance': instance.distance,
      'storeImages': instance.storeImages,
      'gameMttItems': instance.gameMttItems,
    };
