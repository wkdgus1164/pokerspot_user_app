import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_dto.freezed.dart';
part 'store_dto.g.dart';

@freezed
class StoreImageDto with _$StoreImageDto {
  factory StoreImageDto({
    required String id,
    required String url,
  }) = _StoreImageDto;

  factory StoreImageDto.fromJson(Map<String, dynamic> json) =>
      _$StoreImageDtoFromJson(json);
}

@freezed
class GameMTTDto with _$GameMTTDto {
  factory GameMTTDto({
    required String id,
    required String type,
    required int entryPrice,
    required int? entryMax,
    required int? reEntryMax,
    required int? duration,
    required int? prize,
    required String eventType,
    required bool isDaily,
    required String name,
  }) = _GameMTTDto;

  factory GameMTTDto.fromJson(Map<String, dynamic> json) =>
      _$GameMTTDtoFromJson(json);
}

@freezed
class StoreDto with _$StoreDto {
  factory StoreDto({
    required String id,
    required String type,
    required String name,
    required String address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required double? distance,
    // required double lat,
    // required double lng,
    required List<StoreImageDto>? storeImages,
    required List<GameMTTDto> gameMttItems,
  }) = _StoreDto;

  factory StoreDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDtoFromJson(json);
}
