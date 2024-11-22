import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';

part 'store_v2.freezed.dart';

@freezed
class StoreV2Model with _$StoreV2Model {
  factory StoreV2Model({
    required String id,
    required String type,
    required String name,
    required String address,
    required String addressDetail,
    required String openTime,
    required String closeTime,
    required String phone,
    required String kakaoChatUrl,
    required DateTime updatedAt,
    required double distance,
    required double lat,
    required double lng,
    required List<StoreImagesModel> storeImages,
    required List<StoreBenefitV2Model> storeBenefits,
    required List<StoreTagV2Model> storeTags,
    required List<StoreGameMttV2Model> gameMTTItems,
  }) = _StoreV2Model;
}

@freezed
class StoreBenefitV2Model with _$StoreBenefitV2Model {
  factory StoreBenefitV2Model({
    required StoreBenefitType? type,
    required String? description,
  }) = _StoreBenefitV2Model;
}

@freezed
class StoreTagV2Model with _$StoreTagV2Model {
  factory StoreTagV2Model({
    required String? name,
  }) = _StoreTagV2Model;
}

@freezed
class StoreGameMttV2Model with _$StoreGameMttV2Model {
  factory StoreGameMttV2Model({
    required String id,
    required GameType type,
    required EntryType entryType,
    required int entryPrice,
    required int? regEndBlindLevel,
    required int? entryMax,
    required int? duration,
    required PrizeType prizeType,
    required int? prize,
    required int? gtdMinReward,
    required EventType eventType,
    required bool isDaily,
    required String? gameSchedule,
    required String name,
  }) = _StoreGameMttV2Model;
}
