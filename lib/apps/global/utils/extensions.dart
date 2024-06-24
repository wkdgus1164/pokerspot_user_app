import 'package:pokerspot_user_app/apps/infra/api/address/dto/area_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/banners/dto/banner_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/dto/notice_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/area/models/area.dart';
import 'package:pokerspot_user_app/apps/ui/home/models/banner.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/models/notice.dart';

extension StoresModelMapperExtension on List<StoreDto> {
  List<StoreModel> toStoreListModel() {
    return map((it) => it.toStoreModel()).toList();
  }
}

extension StoreDto2StoreModelExtension on StoreDto {
  StoreModel toStoreModel() {
    return StoreModel(
      id: id,
      type: type,
      name: name,
      address: address,
      addressDetail: addressDetail,
      openTime: openTime,
      closeTime: closeTime,
      kakaoChatUrl: kakaoChatUrl,
      phone: phone,
      distance: distance,
      updatedAt: updatedAt,
      lat: lat,
      lng: lng,
      storeImages: storeImages?.toImageListModel(),
      gameMTTItems: gameMttItems?.toGameListModel(),
    );
  }
}

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

extension StoreGamesListDto2ModelExtension on List<GameMTTDto> {
  List<StoreGamesModel> toGameListModel() {
    return map((it) => it.toGameModel()).toList();
  }
}

extension StoreGameDto2ModelExtension on GameMTTDto {
  StoreGamesModel toGameModel() {
    return StoreGamesModel(
        id: id,
        name: name,
        type: type,
        entryPrice: entryPrice,
        entryMax: entryMax,
        reEntryMax: reEntryMax,
        duration: duration,
        prize: prize,
        eventType: eventType,
        gtdMinReward: gtdMinReward,
        isDaily: isDaily);
  }
}

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
