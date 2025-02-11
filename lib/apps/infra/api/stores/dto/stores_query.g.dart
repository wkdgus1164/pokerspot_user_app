// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoresQueryImpl _$$StoresQueryImplFromJson(Map<String, dynamic> json) =>
    _$StoresQueryImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      operationStatus: $enumDecodeNullable(
              _$OperationStatusEnumMap, json['operationStatus']) ??
          OperationStatus.ALL,
      minOpenTime: json['minOpenTime'] as String? ?? '00:00',
      maxOpenTime: json['maxOpenTime'] as String? ?? '23:30',
      gameType: $enumDecodeNullable(_$GameTypeEnumMap, json['gameType']) ??
          GameType.ALL,
      minEntryPrice: (json['minEntryPrice'] as num?)?.toInt() ?? 0,
      maxEntryPrice: (json['maxEntryPrice'] as num?)?.toInt() ?? 100,
      gtdMinReward: (json['gtdMinReward'] as num?)?.toInt(),
      searchText: json['searchText'] as String?,
      regCode: json['regCode'] as String?,
      minPrize: (json['minPrize'] as num?)?.toInt() ?? 0,
      maxPrize: (json['maxPrize'] as num?)?.toInt() ?? 100,
      isOnlyFirstGameBenefit: json['isOnlyFirstGameBenefit'] as bool? ?? false,
      isOnlyNewUserBenefit: json['isOnlyNewUserBenefit'] as bool? ?? false,
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$$StoresQueryImplToJson(_$StoresQueryImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'operationStatus': _$OperationStatusEnumMap[instance.operationStatus]!,
      'minOpenTime': instance.minOpenTime,
      'maxOpenTime': instance.maxOpenTime,
      'gameType': _$GameTypeEnumMap[instance.gameType]!,
      'minEntryPrice': instance.minEntryPrice,
      'maxEntryPrice': instance.maxEntryPrice,
      'gtdMinReward': instance.gtdMinReward,
      'searchText': instance.searchText,
      'regCode': instance.regCode,
      'minPrize': instance.minPrize,
      'maxPrize': instance.maxPrize,
      'isOnlyFirstGameBenefit': instance.isOnlyFirstGameBenefit,
      'isOnlyNewUserBenefit': instance.isOnlyNewUserBenefit,
      'page': instance.page,
      'perPage': instance.perPage,
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
  GameType.MTT: 'MTT',
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
