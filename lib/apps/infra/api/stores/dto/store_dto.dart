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

  factory StoreImagesDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoreImagesDtoFromJson(json);
}

@freezed
class GameMTTDto with _$GameMTTDto {
  factory GameMTTDto({
    required String id,
    required GameType type,
    required int entryPrice,
    required int? entryMax,
    required int? reEntryMax,
    required int? duration,
    required int? prize,
    required int? gtdMinReward,
    required String eventType,
    required bool isDaily,
    required String name,
  }) = _GameMTTDto;

  factory GameMTTDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GameMTTDtoFromJson(json);
}

@freezed
class StoreDto with _$StoreDto {
  factory StoreDto({
    required String id,
    required String? type,
    required String? name,
    required String? address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required String? phone,
    required double distance,
    required double lat,
    required double lng,
    required List<StoreImagesDto>? storeImages,
    required List<GameMTTDto>? gameMttItems,
  }) = _StoreDto;

  factory StoreDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoreDtoFromJson(json);
}
