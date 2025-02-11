import 'package:pokerspot_user_app/apps/infra/api/address/dto/area_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/banners/dto/banner_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/dto/notice_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/models/area.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/models/banner.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice/models/notice.dart';

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
  List<StoreImagesDto> toImageListModel() {
    return map((it) => it.toStoreImagesModel()).toList();
  }
}

extension StoreImagesDto2ModelExtension on StoreImagesDto {
  StoreImagesDto toStoreImagesModel() {
    return StoreImagesDto(
      id: id,
      url: url,
    );
  }
}

extension StoreBenefitsListDto2ModelExtension on List<StoreBenefitsDto> {
  List<StoreBenefitsDto> toStoreBenefitsModel() {
    return map((it) => it.toStoreBenefitsModel()).toList();
  }
}

extension StoreBenefitsDto2ModelExtension on StoreBenefitsDto {
  StoreBenefitsDto toStoreBenefitsModel() {
    return StoreBenefitsDto(
      type: type,
      description: description,
    );
  }
}

extension StoreTagsListDto2ModelExtension on List<StoreTagsDto> {
  List<StoreTagsDto> toStoreTagsModel() {
    return map((it) => it.toStoreTagsModel()).toList();
  }
}

extension StoreTagsDto2ModelExtension on StoreTagsDto {
  StoreTagsDto toStoreTagsModel() {
    return StoreTagsDto(
      name: name,
    );
  }
}

extension StoreGamesListDto2ModelExtension on List<GameMTTDto> {
  List<GameMTTDto> toGameMttListV2Model() {
    return map((it) => it.toGameMttV2Model()).toList();
  }
}

extension StoreGameDto2ModelExtension on GameMTTDto {
  GameMTTDto toGameMttV2Model() {
    return GameMTTDto(
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

extension StoreV2ModelMapperExtension on List<StoreDto> {
  List<StoreDto> toStoreV2ListModel() {
    return map((it) => it.toStoreV2Model()).toList();
  }
}

extension StoreDto2StoreDtoExtension on StoreDto {
  StoreDto toStoreV2Model() {
    return StoreDto(
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
      gameMttItems: gameMttItems?.toGameMttListV2Model() ?? [],
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
