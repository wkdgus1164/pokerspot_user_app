import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_detail_dto.freezed.dart';
part 'store_detail_dto.g.dart';

@freezed
class StoreDetailDataDto with _$StoreDetailDataDto {
  factory StoreDetailDataDto({
    required StoreDetailDto data,
    required String message,
  }) = _StoreDetailDataDto;

  factory StoreDetailDataDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailDataDtoFromJson(json);
}

@freezed
class StoreDetailDto with _$StoreDetailDto {
  factory StoreDetailDto({
    required String id,
    required String type,
    required String? name,
    required String? address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required String? phone,
    required double? distance,
    required double? lat,
    required double? lng,
    required List<StoreDetailStoreImagesDto>? storeImages,
    required List<StoreDetailGameMttItemsDto>? gameMttItems,
  }) = _StoreDetailDto;

  factory StoreDetailDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailDtoFromJson(json);
}

@freezed
class StoreDetailStoreImagesDto with _$StoreDetailStoreImagesDto {
  factory StoreDetailStoreImagesDto({
    required String id,
    required String url,
  }) = _StoreDetailStoreImagesDto;

  factory StoreDetailStoreImagesDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailStoreImagesDtoFromJson(json);
}

@freezed
class StoreDetailGameMttItemsDto with _$StoreDetailGameMttItemsDto {
  factory StoreDetailGameMttItemsDto({
    required String id,
    required String name,
    required String? type,
    required int? entryPrice,
    required int? entryMax,
    required int? reEntryMax,
    required int? duration,
    required int? prize,
    required String? eventType,
    required bool isDaily,
  }) = _StoreDetailGameMttItemsDto;

  factory StoreDetailGameMttItemsDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailGameMttItemsDtoFromJson(json);
}
