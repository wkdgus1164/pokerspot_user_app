// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoresDto _$$_StoresDtoFromJson(Map<String, dynamic> json) => _$_StoresDto(
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      totalPage: json['totalPage'] as int,
      totalCount: json['totalCount'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoresDtoToJson(_$_StoresDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'items': instance.items,
    };
