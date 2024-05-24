// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultListDtoImpl _$$SearchResultListDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultListDtoImpl(
      search_term: json['search_term'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => SearchResultDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultListDtoImplToJson(
        _$SearchResultListDtoImpl instance) =>
    <String, dynamic>{
      'search_term': instance.search_term,
      'results': instance.results,
    };

_$SearchResultDtoImpl _$$SearchResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultDtoImpl(
      position: (json['position'] as num).toInt(),
      url: json['url'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$SearchResultDtoImplToJson(
        _$SearchResultDtoImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
    };
