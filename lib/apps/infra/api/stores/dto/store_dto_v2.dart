import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';

part 'store_dto_v2.freezed.dart';
part 'store_dto_v2.g.dart';

@freezed
class StoreV2Dto with _$StoreV2Dto {
  factory StoreV2Dto({
    required String id,
    required String type,
    required String? name,
    required String? address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required String? phone,
    required bool isViewKakaoChat,
    required String? kakaoChatUrl,
    required DateTime? updatedAt,
    required double? distance,
    required double? lat,
    required double? lng,
    required List<StoreImagesDto>? storeImages,
    required List<StoreBenefitsDto>? storeBenefits,
    required List<StoreTagDto>? storeTags,
    required List<GameMttItemsV2Dto>? gameMttItems,
  }) = _StoreV2Dto;

  factory StoreV2Dto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoreV2DtoFromJson(json);
}

@freezed
class GameMttItemsV2Dto with _$GameMttItemsV2Dto {
  factory GameMttItemsV2Dto({
    required String id,
    required String name,
    required GameType type,
    required EntryType entryType,
    required int entryPrice,
    required int entryMax,
    required int? reEntryMax,
    required int duration,
    required PrizeType prizeType,
    required int prize,
    required int gtdMinReward,
    required EventType eventType,
    required bool isDaily,
    required String? gameSchedule,
    required int regEndBlindLevel,
  }) = _GameMttItemsV2Dto;

  factory GameMttItemsV2Dto.fromJson(Map<String, dynamic> json) =>
      _$GameMttItemsV2DtoFromJson(json);
}

@freezed
class StoreBenefitsDto with _$StoreBenefitsDto {
  factory StoreBenefitsDto({
    required StoreBenefitType type,
    required String description,
  }) = _StoreBenefitsDto;

  factory StoreBenefitsDto.fromJson(Map<String, dynamic> json) =>
      _$StoreBenefitsDtoFromJson(json);
}

@freezed
class StoreTagDto with _$StoreTagDto {
  factory StoreTagDto({
    required String name,
  }) = _StoreTagDto;

  factory StoreTagDto.fromJson(Map<String, dynamic> json) =>
      _$StoreTagDtoFromJson(json);
}
