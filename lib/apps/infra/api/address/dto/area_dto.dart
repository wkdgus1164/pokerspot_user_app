import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_dto.freezed.dart';
part 'area_dto.g.dart';

@freezed
class AreaListDto with _$AreaListDto {
  factory AreaListDto({
    required List<AreaDto> regcodes,
  }) = _AreaListDto;

  factory AreaListDto.fromJson(Map<String, dynamic> json) =>
      _$AreaListDtoFromJson(json);
}

@freezed
class AreaDto with _$AreaDto {
  factory AreaDto({
    required String code,
    required String name,
  }) = _AreaDto;

  factory AreaDto.fromJson(Map<String, dynamic> json) =>
      _$AreaDtoFromJson(json);
}
