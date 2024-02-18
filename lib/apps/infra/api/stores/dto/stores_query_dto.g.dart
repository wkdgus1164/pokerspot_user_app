// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_query_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoresQuery _$$_StoresQueryFromJson(Map<String, dynamic> json) =>
    _$_StoresQuery(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      operationStatus: json['operationStatus'] as String?,
      minOpenTime: json['minOpenTime'] as String?,
      maxOpenTime: json['maxOpenTime'] as String?,
      gameType: json['gameType'] as String?,
      minEntryPrice: json['minEntryPrice'] as int?,
      maxEntryPrice: json['maxEntryPrice'] as int?,
      page: json['page'] as int?,
      perPage: json['perPage'] as int?,
    );

Map<String, dynamic> _$$_StoresQueryToJson(_$_StoresQuery instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'operationStatus': instance.operationStatus,
      'minOpenTime': instance.minOpenTime,
      'maxOpenTime': instance.maxOpenTime,
      'gameType': instance.gameType,
      'minEntryPrice': instance.minEntryPrice,
      'maxEntryPrice': instance.maxEntryPrice,
      'page': instance.page,
      'perPage': instance.perPage,
    };
