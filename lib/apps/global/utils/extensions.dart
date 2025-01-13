import 'package:pokerspot_user_app/apps/infra/api/address/dto/area_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/banners/dto/banner_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/dto/notice_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto_v2.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/area/models/area.dart';
import 'package:pokerspot_user_app/apps/ui/home/models/banner.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/models/notice.dart';

// extension StoresModelMapperExtension on List<StoreDto> {
//   List<StoreModel> toStoreListModel() {
//     return map((it) => it.toStoreModel()).toList();
//   }
// }

// extension StoreDto2StoreModelExtension on StoreDto {
//   StoreModel toStoreModel() {
//     return StoreModel(
//       id: id,
//       type: type,
//       name: name,
//       address: address,
//       addressDetail: addressDetail,
//       openTime: openTime,
//       closeTime: closeTime,
//       kakaoChatUrl: kakaoChatUrl,
//       phone: phone,
//       distance: distance,
//       updatedAt: updatedAt,
//       lat: lat,
//       lng: lng,
//       storeImages: storeImages?.toImageListModel(),
//       gameMTTItems: gameMttItems?.toGameMttV2Model(),
//     );
//   }
// }

extension StoreImagesListDto2ModelExtension on List<StoreImagesDto> {
  List<StoreImagesModel> toImageListModel() {
    return map((it) => it.toStoreImagesModel()).toList();
  }
}

extension StoreImagesDto2ModelExtension on StoreImagesDto {
  StoreImagesModel toStoreImagesModel() {
    return StoreImagesModel(
      id: id,
      url: url,
    );
  }
}

extension StoreBenefitsListDto2ModelExtension on List<StoreBenefitsDto> {
  List<StoreBenefitV2Model> toStoreBenefitsModel() {
    return map((it) => it.toStoreBenefitsModel()).toList();
  }
}

extension StoreBenefitsDto2ModelExtension on StoreBenefitsDto {
  StoreBenefitV2Model toStoreBenefitsModel() {
    return StoreBenefitV2Model(
      type: type,
      description: description,
    );
  }
}

extension StoreTagsListDto2ModelExtension on List<StoreTagDto> {
  List<StoreTagV2Model> toStoreTagsModel() {
    return map((it) => it.toStoreTagsModel()).toList();
  }
}

extension StoreTagsDto2ModelExtension on StoreTagDto {
  StoreTagV2Model toStoreTagsModel() {
    return StoreTagV2Model(
      name: name,
    );
  }
}

extension StoreGamesListDto2ModelExtension on List<GameMttItemsV2Dto> {
  List<StoreGameMttV2Model> toGameMttListV2Model() {
    return map((it) => it.toGameMttV2Model()).toList();
  }
}

extension StoreGameDto2ModelExtension on GameMttItemsV2Dto {
  StoreGameMttV2Model toGameMttV2Model() {
    return StoreGameMttV2Model(
      id: id,
      name: name,
      type: type,
      entryType: entryType,
      entryPrice: entryPrice,
      entryMax: entryMax,
      reEntryMax: reEntryMax,
      duration: duration,
      prizeType: prizeType,
      prize: prize,
      gtdMinReward: gtdMinReward,
      eventType: eventType,
      isDaily: isDaily,
      gameSchedule: gameSchedule,
      regEndBlindLevel: regEndBlindLevel,
    );
  }
}

extension StoreV2ModelMapperExtension on List<StoreV2Dto> {
  List<StoreV2Model> toStoreV2ListModel() {
    return map((it) => it.toStoreV2Model()).toList();
  }
}

extension StoreV2Dto2StoreV2ModelExtension on StoreV2Dto {
  StoreV2Model toStoreV2Model() {
    return StoreV2Model(
      id: id,
      type: type,
      name: name ?? "",
      address: address ?? "",
      addressDetail: addressDetail ?? "",
      openTime: openTime ?? "",
      closeTime: closeTime ?? "",
      isViewKakaoChat: isViewKakaoChat,
      kakaoChatUrl: kakaoChatUrl ?? "",
      phone: phone ?? "",
      distance: distance ?? 0,
      updatedAt: updatedAt ?? DateTime.now(),
      lat: lat ?? 0,
      lng: lng ?? 0,
      storeImages: storeImages?.toImageListModel() ?? [],
      storeBenefits: storeBenefits?.toStoreBenefitsModel() ?? [],
      storeTags: storeTags?.toStoreTagsModel() ?? [],
      gameMTTItems: gameMttItems?.toGameMttListV2Model() ?? [],
    );
  }
}

// extension StoreGamesListDto2ModelExtension on List<GameMTTDto> {
//   List<StoreGamesModel> toGameListModel() {
//     return map((it) => it.toGameModel()).toList();
//   }
// }

// extension StoreGameDto2ModelExtension on GameMTTDto {
//   StoreGamesModel toGameModel() {
//     return StoreGamesModel(
//         id: id,
//         name: name,
//         type: type,
//         entryPrice: entryPrice,
//         entryMax: entryMax,
//         reEntryMax: reEntryMax,
//         duration: duration,
//         prize: prize,
//         eventType: eventType,
//         gtdMinReward: gtdMinReward,
//         isDaily: isDaily);
//   }
// }

extension AreaListDto2ModelExtension on List<AreaDto> {
  List<AreaModel> toAreaListModel() {
    return map((e) => e.toAreaModel()).toList();
  }
}

extension AreaDto2ModelExtension on AreaDto {
  AreaModel toAreaModel() {
    return AreaModel(
      code: code,
      name: name,
    );
  }
}

extension NoticeListDto2ModelExtension on List<NoticeDto> {
  List<NoticeModel> toNoticeListModel() {
    return map((e) => e.toNoticeModel()).toList();
  }
}

extension NoticeDto2ModelExtension on NoticeDto {
  NoticeModel toNoticeModel() {
    return NoticeModel(
      id: id,
      title: title,
      description: description,
      createdAt: createdAt,
    );
  }
}

extension BannerListDto2ModelExtension on List<BannerDto> {
  List<BannerModel> toBannerListModel() {
    return map((e) => e.toBannerModel()).toList();
  }
}

extension BannerDto2ModelExtension on BannerDto {
  BannerModel toBannerModel() {
    return BannerModel(
      id: id,
      imageUrl: imageUrl,
    );
  }
}
