import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class StoreModel with _$StoreModel {
  factory StoreModel({
    required int id,
    required String type,
    required String name,
    required String? phone,
    required String address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required String distance,
    required String lat,
    required String lng,
    required List<StoreImagesModel>? storeImages,
    required List<String>? gameMTTItems,
  }) = _StoreModel;
}

@freezed
class StoreImagesModel with _$StoreImagesModel {
  factory StoreImagesModel({
    required String id,
    required String url,
  }) = _StoreImagesModel;
}

@freezed
class StoreGameItemsModel with _$StoreGameItemsModel {
  factory StoreGameItemsModel({
    required String id,
    required String name,
    required String type,
    required int? entryPrice,
    required int? entryMax,
    required int? reEntryMax,
    required int? duration,
    required int? prize,
    required int? gtdMinReward,
    required String eventType,
    required bool isDaily,
  }) = _StoreGameItemsModel;
}
