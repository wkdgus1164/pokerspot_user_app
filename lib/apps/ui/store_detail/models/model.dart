import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class StoreDetailModel with _$StoreDetailModel {
  factory StoreDetailModel({
    required String id,
    required String type,
    required String? name,
    required String? address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required double? lat,
    required double? lng,
    required List<StoreDetailStoreImagesModel>? storeImages,
    required List<StoreDetailMttItemsModel>? gameMttItems,
  }) = _StoreDetailModel;

  StoreDetailModel._();
}

@freezed
class StoreDetailStoreImagesModel with _$StoreDetailStoreImagesModel {
  factory StoreDetailStoreImagesModel({
    required String id,
    required String url,
  }) = _StoreDetailStoreImagesModel;

  StoreDetailStoreImagesModel._();
}

@freezed
class StoreDetailMttItemsModel with _$StoreDetailMttItemsModel {
  factory StoreDetailMttItemsModel({
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
  }) = _StoreDetailMttItemsModel;

  StoreDetailMttItemsModel._();
}
