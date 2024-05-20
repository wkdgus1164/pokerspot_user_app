import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';

part 'store.freezed.dart';

@freezed
class StoreModel with _$StoreModel {
  factory StoreModel({
    required String id,
    required String? type,
    required String? name,
    required String? phone,
    required String? address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required double? distance,
    required double? lat,
    required double? lng,
    required List<StoreImagesModel>? storeImages,
    required List<StoreGamesModel>? gameMTTItems,
  }) = _StoreModel;
}

@freezed
class StoreImagesModel with _$StoreImagesModel {
  factory StoreImagesModel({
    required String? id,
    required String? url,
  }) = _StoreImagesModel;
}

@freezed
class StoreGamesModel with _$StoreGamesModel {
  factory StoreGamesModel({
    required String id,
    required String? name,
    required GameType? type,
    required int? entryPrice,
    required int? entryMax,
    required int? reEntryMax,
    required int? duration,
    required int? prize,
    required int? gtdMinReward,
    required EventType? eventType,
    required bool isDaily,
  }) = _StoreGamesModel;
}
