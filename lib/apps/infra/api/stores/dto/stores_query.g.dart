// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoresQueryImpl _$$StoresQueryImplFromJson(Map<String, dynamic> json) =>
    _$StoresQueryImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      perPage: (json['perPage'] as num?)?.toDouble(),
      operationStatus: json['operationStatus'] as String?,
      minOpenTime: json['minOpenTime'] as String?,
      maxOpenTime: json['maxOpenTime'] as String?,
      gameType: json['gameType'] as String?,
      minEntryPrice: (json['minEntryPrice'] as num?)?.toInt(),
      maxEntryPrice: (json['maxEntryPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoresQueryImplToJson(_$StoresQueryImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'perPage': instance.perPage,
      'operationStatus': instance.operationStatus,
      'minOpenTime': instance.minOpenTime,
      'maxOpenTime': instance.maxOpenTime,
      'gameType': instance.gameType,
      'minEntryPrice': instance.minEntryPrice,
      'maxEntryPrice': instance.maxEntryPrice,
    };

_$StoreQueryImpl _$$StoreQueryImplFromJson(Map<String, dynamic> json) =>
    _$StoreQueryImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$StoreQueryImplToJson(_$StoreQueryImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'id': instance.id,
    };
