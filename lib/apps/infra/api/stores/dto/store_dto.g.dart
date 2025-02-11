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
      type: $enumDecode(_$GameTypeEnumMap, json['type']),
      entryType: $enumDecode(_$EntryTypeEnumMap, json['entryType']),
      entryPrice: (json['entryPrice'] as num?)?.toInt(),
      regEndBlindLevel: (json['regEndBlindLevel'] as num?)?.toInt(),
      entryMax: (json['entryMax'] as num?)?.toInt(),
      reEntryMax: (json['reEntryMax'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      prizeType: $enumDecodeNullable(_$PrizeTypeEnumMap, json['prizeType']),
      prize: (json['prize'] as num?)?.toInt(),
      gtdMinReward: (json['gtdMinReward'] as num?)?.toInt(),
      eventType: $enumDecodeNullable(_$EventTypeEnumMap, json['eventType']),
      isDaily: json['isDaily'] as bool?,
      gameSchedule: json['gameSchedule'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GameMTTDtoImplToJson(_$GameMTTDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$GameTypeEnumMap[instance.type]!,
      'entryType': _$EntryTypeEnumMap[instance.entryType]!,
      'entryPrice': instance.entryPrice,
      'regEndBlindLevel': instance.regEndBlindLevel,
      'entryMax': instance.entryMax,
      'reEntryMax': instance.reEntryMax,
      'duration': instance.duration,
      'prizeType': _$PrizeTypeEnumMap[instance.prizeType],
      'prize': instance.prize,
      'gtdMinReward': instance.gtdMinReward,
      'eventType': _$EventTypeEnumMap[instance.eventType],
      'isDaily': instance.isDaily,
      'gameSchedule': instance.gameSchedule,
      'name': instance.name,
    };

const _$GameTypeEnumMap = {
  GameType.DAILY: 'DAILY',
  GameType.SEED: 'SEED',
  GameType.GTD: 'GTD',
  GameType.ALL: 'ALL',
  GameType.MTT: 'MTT',
};

const _$EntryTypeEnumMap = {
  EntryType.CASH: 'CASH',
  EntryType.TICKET: 'TICKET',
  EntryType.POINT: 'POINT',
};

const _$PrizeTypeEnumMap = {
  PrizeType.CASH: 'CASH',
  PrizeType.TICKET: 'TICKET',
  PrizeType.POINT: 'POINT',
};

const _$EventTypeEnumMap = {
  EventType.NORMAL: 'NORMAL',
  EventType.FIRST_GAME: 'FIRST_GAME',
};

_$StoreBenefitsDtoImpl _$$StoreBenefitsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreBenefitsDtoImpl(
      type: json['type'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$StoreBenefitsDtoImplToJson(
        _$StoreBenefitsDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
    };

_$StoreTagsDtoImpl _$$StoreTagsDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreTagsDtoImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$StoreTagsDtoImplToJson(_$StoreTagsDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$StoreDtoImpl _$$StoreDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      addressDetail: json['addressDetail'] as String,
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
      phone: json['phone'] as String?,
      isViewKakaoChat: json['isViewKakaoChat'] as bool,
      kakaoChatUrl: json['kakaoChatUrl'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      distance: (json['distance'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      storeImages: (json['storeImages'] as List<dynamic>)
          .map((e) => StoreImagesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      storeBenefits: (json['storeBenefits'] as List<dynamic>)
          .map((e) => StoreBenefitsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      storeTags: (json['storeTags'] as List<dynamic>)
          .map((e) => StoreTagsDto.fromJson(e as Map<String, dynamic>))
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
      'phone': instance.phone,
      'isViewKakaoChat': instance.isViewKakaoChat,
      'kakaoChatUrl': instance.kakaoChatUrl,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'distance': instance.distance,
      'lat': instance.lat,
      'lng': instance.lng,
      'storeImages': instance.storeImages,
      'storeBenefits': instance.storeBenefits,
      'storeTags': instance.storeTags,
      'gameMttItems': instance.gameMttItems,
    };
