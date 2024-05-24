// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchQueryImpl _$$SearchQueryImplFromJson(Map<String, dynamic> json) =>
    _$SearchQueryImpl(
      query: json['query'] as String,
      limit: json['limit'] as String,
      related_keywords: json['related_keywords'] as String,
    );

Map<String, dynamic> _$$SearchQueryImplToJson(_$SearchQueryImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'limit': instance.limit,
      'related_keywords': instance.related_keywords,
    };
