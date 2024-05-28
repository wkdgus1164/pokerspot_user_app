// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoresQueryImpl _$$StoresQueryImplFromJson(Map<String, dynamic> json) =>
    _$StoresQueryImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      page: (json['page'] as num?)?.toDouble(),
      perPage: (json['perPage'] as num?)?.toDouble(),
      operationStatus: $enumDecodeNullable(
          _$OperationStatusEnumMap, json['operationStatus']),
      minOpenTime: json['minOpenTime'] as String?,
      maxOpenTime: json['maxOpenTime'] as String?,
      gameType: $enumDecodeNullable(_$GameTypeEnumMap, json['gameType']),
      minEntryPrice: (json['minEntryPrice'] as num?)?.toInt(),
      maxEntryPrice: (json['maxEntryPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoresQueryImplToJson(_$StoresQueryImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'page': instance.page,
      'perPage': instance.perPage,
      'operationStatus': _$OperationStatusEnumMap[instance.operationStatus],
      'minOpenTime': instance.minOpenTime,
      'maxOpenTime': instance.maxOpenTime,
      'gameType': _$GameTypeEnumMap[instance.gameType],
      'minEntryPrice': instance.minEntryPrice,
      'maxEntryPrice': instance.maxEntryPrice,
    };

const _$OperationStatusEnumMap = {
  OperationStatus.ALL: 'ALL',
  OperationStatus.OPEN: 'OPEN',
};

const _$GameTypeEnumMap = {
  GameType.DAILY: 'DAILY',
  GameType.SEED: 'SEED',
  GameType.GTD: 'GTD',
  GameType.ALL: 'ALL',
};

_$StoreQueryImpl _$$StoreQueryImplFromJson(Map<String, dynamic> json) =>
    _$StoreQueryImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$StoreQueryImplToJson(_$StoreQueryImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
