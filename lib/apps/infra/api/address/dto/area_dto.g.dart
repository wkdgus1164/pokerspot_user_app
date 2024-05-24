// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaListDtoImpl _$$AreaListDtoImplFromJson(Map<String, dynamic> json) =>
    _$AreaListDtoImpl(
      regcodes: (json['regcodes'] as List<dynamic>)
          .map((e) => AreaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AreaListDtoImplToJson(_$AreaListDtoImpl instance) =>
    <String, dynamic>{
      'regcodes': instance.regcodes,
    };

_$AreaDtoImpl _$$AreaDtoImplFromJson(Map<String, dynamic> json) =>
    _$AreaDtoImpl(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AreaDtoImplToJson(_$AreaDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
