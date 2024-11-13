// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_v2_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoresV2DtoImpl _$$StoresV2DtoImplFromJson(Map<String, dynamic> json) =>
    _$StoresV2DtoImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => StoreV2Dto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoresV2DtoImplToJson(_$StoresV2DtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'items': instance.items,
    };
