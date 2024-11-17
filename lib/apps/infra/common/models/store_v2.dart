import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';

part 'store_v2.freezed.dart';

@freezed
class StoreV2Model with _$StoreV2Model {
  factory StoreV2Model({
    required String id,
    required String type,
    required String? name,
    required String? address,
    required String? addressDetail,
    required String? openTime,
    required String? closeTime,
    required String? phone,
    required String? kakaoChatUrl,
    required DateTime? updatedAt,
    required double? distance,
    required double? lat,
    required double? lng,
    required List<StoreImagesModel>? storeImages,
    required List<StoreBenefitsModel>? storeBenefits,
    required List<StoreTagModel>? storeTags,
    required List<StoreGamesModel>? gameMTTItems,
  }) = _StoreV2Model;
}

@freezed
class StoreBenefitsModel with _$StoreBenefitsModel {
  factory StoreBenefitsModel({
    required StoreBenefitType? type,
    required String? description,
  }) = _StoreBenefitsModel;
}

@freezed
class StoreTagModel with _$StoreTagModel {
  factory StoreTagModel({
    required String? name,
  }) = _StoreTagsModel;
}
