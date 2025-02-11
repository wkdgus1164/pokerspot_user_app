import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';

part 'store_dto.freezed.dart';
part 'store_dto.g.dart';

/// 기본 DTO 인터페이스 정의
abstract class BaseDto {
  Map<String, dynamic> toJson();
}

@freezed
class StoreImagesDto with _$StoreImagesDto implements BaseDto {
  const factory StoreImagesDto({
    required String id,
    required String url,
  }) = _StoreImageDto;

  factory StoreImagesDto.fromJson(Map<String, dynamic> json) =>
      _$StoreImagesDtoFromJson(json);
}

@freezed
class GameMTTDto with _$GameMTTDto implements BaseDto {
  const factory GameMTTDto({
    required String id,
    required GameType type,
    required EntryType entryType,
    int? entryPrice,
    int? regEndBlindLevel,
    int? entryMax,
    int? reEntryMax,
    int? duration,
    PrizeType? prizeType,
    int? prize,
    int? gtdMinReward,
    EventType? eventType,
    bool? isDaily,
    String? gameSchedule,
    String? name,
  }) = _GameMTTDto;

  factory GameMTTDto.fromJson(Map<String, dynamic> json) =>
      _$GameMTTDtoFromJson(json);
}

@freezed
class StoreBenefitsDto with _$StoreBenefitsDto implements BaseDto {
  const factory StoreBenefitsDto({
    required String type,
    required String description,
  }) = _StoreBenefitsDto;

  factory StoreBenefitsDto.fromJson(Map<String, dynamic> json) =>
      _$StoreBenefitsDtoFromJson(json);
}

@freezed
class StoreTagsDto with _$StoreTagsDto implements BaseDto {
  const factory StoreTagsDto({
    required String name,
  }) = _StoreTagsDto;

  factory StoreTagsDto.fromJson(Map<String, dynamic> json) =>
      _$StoreTagsDtoFromJson(json);
}

@freezed
class StoreDto with _$StoreDto implements BaseDto {
  const factory StoreDto({
    required String id,
    @Default('') String type,
    @Default('') String name,
    @Default('') String address,
    @Default('') String addressDetail,
    @Default('') String openTime,
    @Default('마감 시') String closeTime,
    @Default('') String phone,
    @Default(false) bool isViewKakaoChat,
    @Default('') String kakaoChatUrl,
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
