import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_dto.freezed.dart';
part 'banner_dto.g.dart';

@freezed
class BannerDto with _$BannerDto {

  factory BannerDto({
    required String id,
    required String imageUrl,
  }) = _BannerDto;

  factory BannerDto.fromJson(Map<String, dynamic> json,) => _$BannerDtoFromJson(json);
}