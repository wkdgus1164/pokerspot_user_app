// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoresDtoImpl _$$StoresDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoresDtoImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoresDtoImplToJson(_$StoresDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'items': instance.items,
    };
