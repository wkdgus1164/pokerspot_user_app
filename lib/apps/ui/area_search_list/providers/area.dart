import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_data.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area.g.dart';

const int PAGE_SIZE = 10;

typedef Models = WithOffsetPagination<List<StoreModel>?>;

@riverpod
class AreaStoreItems extends _$AreaStoreItems {
  @override
  FutureOr<Models> build() async {
    return _fetch();
  }

  FutureOr<Models> _fetch() async {
    final res = await ref.read(storesApiProvider).fetchStoresByArea(
          ref.read(geoLocationServiceProvider).latitude,
          ref.read(geoLocationServiceProvider).longitude,
          ref.read(areaProvider).regCode,
          1,
          PAGE_SIZE,
        );

    Logger().i('res : ${res.data}');

    return WithOffsetPagination(
      page: res.data?.page ?? 1,
      perPage: res.data?.perPage ?? 20,
      totalPage: res.data?.totalPage ?? 0,
      totalCount: res.data?.totalCount ?? 0,
      items: res.data?.items.map((it) => it.toModels()).toList(),
    );
  }

  Future fetchNextData() async {
    final old = state.requireValue;

    final WithOffsetPagination(
      page: page,
      perPage: perPage,
      items: items,
    ) = old;

    final nextPage = page + 1;
    state = await AsyncValue.guard(() async {
      final res = await ref.read(storesApiProvider).fetchStoresByArea(
            ref.read(geoLocationServiceProvider).latitude,
            ref.read(geoLocationServiceProvider).longitude,
            ref.read(areaProvider).regCode,
            page,
            perPage,
          );

      final data = res.data;

      if (data == null) return old;

      final newItems = data.items.map((e) => e.toModels()).toList();

      Logger().d('New items: $newItems');

      return WithOffsetPagination(
        items: items! + newItems,
        page: nextPage,
        perPage: perPage,
        totalPage: data.totalPage,
        totalCount: data.totalCount,
      );
    });
  }
}

extension _StoreModelMapperExtension on StoreDto {
  StoreModel toModels() {
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
      lat: lat,
      lng: lng,
      storeImages: storeImages?.toModels(),
      gameMTTItems: gameMttItems?.toModels(),
    );
  }
}

extension _StoreImagesModelMapperExtension on List<StoreImagesDto> {
  List<StoreImagesModel> toModels() {
    return map((it) => it.toModels()).toList();
  }
}

extension _StoreImageModelMapperExtension on StoreImagesDto {
  StoreImagesModel toModels() {
    return StoreImagesModel(
      id: id,
      url: url,
    );
  }
}

extension _StoreGameItemsModelMapperExtension on List<GameMTTDto> {
  List<StoreGamesModel> toModels() {
    return map((it) => it.toModels()).toList();
  }
}

extension _StoreDetailItemModelMapperExtension on GameMTTDto {
  StoreGamesModel toModels() {
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
