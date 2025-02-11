import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';

part 'store_dto.freezed.dart';
part 'store_dto.g.dart';

@freezed
class StoreImagesDto with _$StoreImagesDto {
  factory StoreImagesDto({
    required String id,
    required String url,
  }) = _StoreImageDto;

  factory StoreImagesDto.fromJson(Map<String, dynamic> json) =>
      _$StoreImagesDtoFromJson(json);
}

@freezed
class GameMTTDto with _$GameMTTDto {
  factory GameMTTDto({
    required String id,
    required GameType type,
    required EntryType entryType,
    required int? entryPrice,
    required int? regEndBlindLevel,
    required int? entryMax,
    required int? reEntryMax,
    required int? duration,
    required PrizeType? prizeType,
    required int? prize,
    required int? gtdMinReward,
    required EventType? eventType,
    required bool? isDaily,
    required String? gameSchedule,
    required String? name,
  }) = _GameMTTDto;

  factory GameMTTDto.fromJson(Map<String, dynamic> json) =>
      _$GameMTTDtoFromJson(json);
}

@freezed
class StoreBenefitsDto with _$StoreBenefitsDto {
  factory StoreBenefitsDto({
    required String type,
    required String description,
  }) = _StoreBenefitsDto;

  factory StoreBenefitsDto.fromJson(Map<String, dynamic> json) =>
      _$StoreBenefitsDtoFromJson(json);
}

@freezed
class StoreTagsDto with _$StoreTagsDto {
  factory StoreTagsDto({required String name}) = _StoreTagsDto;

  factory StoreTagsDto.fromJson(Map<String, dynamic> json) =>
      _$StoreTagsDtoFromJson(json);
}

@freezed
class StoreDto with _$StoreDto {
  factory StoreDto({
    required String id,
    String? type,
    String? name,
    String? address,
    String? addressDetail,
    String? openTime,
    String? closeTime,
    String? phone,
    @Default(false) bool isViewKakaoChat,
    String? kakaoChatUrl,
    DateTime? updatedAt,
    @Default(0.0) double distance,
    @Default(0.0) double lat,
    @Default(0.0) double lng,
    @Default([]) List<StoreImagesDto> storeImages,
    @Default([]) List<StoreBenefitsDto> storeBenefits,
    @Default([]) List<StoreTagsDto> storeTags,
    @Default([]) List<GameMTTDto> gameMttItems,
  }) = _StoreDto;

  factory StoreDto.fromJson(Map<String, dynamic> json) =>
      _$StoreDtoFromJson(json);
}
