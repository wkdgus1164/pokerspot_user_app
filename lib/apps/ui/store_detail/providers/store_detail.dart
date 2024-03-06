import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_detail_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/models/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_detail.g.dart';

@riverpod
class StoreDetailData extends _$StoreDetailData {
  @override
  Future<StoreDetailModel> build(String storeId, double lat, double lng) async {
    final res = await ref.read(storesApiProvider).fetchStoreDetail(
          storeId,
          lat,
          lng,
        );

    final data = res.data;

    return data.toModel();

    // return StoreDetailModel(
    //   id: "",
    //   type: "",
    //   name: "",
    //   address: "",
    //   addressDetail: "",
    //   openTime: "",
    //   closeTime: "",
    //   lat: 0,
    //   lng: 0,
    //   storeImages: [],
    //   gameMttItems: [],
    // );
  }
}

extension _StoreDetailodelMapperExtension on StoreDetailDto {
  StoreDetailModel toModel() {
    return StoreDetailModel(
      id: id,
      type: type,
      name: name,
      address: address,
      addressDetail: addressDetail,
      openTime: openTime,
      closeTime: closeTime,
      lat: lat,
      lng: lng,
      storeImages: storeImages?.toModels(),
      gameMttItems: gameMttItems?.toModels(),
    );
  }
}

extension _StoreDetailImagesModelMapperExtension
    on List<StoreDetailStoreImagesDto> {
  List<StoreDetailStoreImagesModel> toModels() {
    return map((it) => it.toModel()).toList();
  }
}

extension _StoreDetailImageModelMapperExtension on StoreDetailStoreImagesDto {
  StoreDetailStoreImagesModel toModel() {
    return StoreDetailStoreImagesModel(
      id: id,
      url: url,
    );
  }
}

extension _StoreDetailMttItemsModelMapperExtension
    on List<StoreDetailGameMttItemsDto> {
  List<StoreDetailMttItemsModel> toModels() {
    return map((it) => it.toModel()).toList();
  }
}

extension _StoreDetailMttItemModelMapperExtension
    on StoreDetailGameMttItemsDto {
  StoreDetailMttItemsModel toModel() {
    return StoreDetailMttItemsModel(
      id: id,
      name: name,
      type: type,
      entryPrice: entryPrice,
      entryMax: entryMax,
      reEntryMax: reEntryMax,
      duration: duration,
      prize: prize,
      eventType: eventType,
      isDaily: isDaily,
    );
  }
}
