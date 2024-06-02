// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notices_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticesDtoImpl _$$NoticesDtoImplFromJson(Map<String, dynamic> json) =>
    _$NoticesDtoImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => NoticeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NoticesDtoImplToJson(_$NoticesDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'items': instance.items,
    };
