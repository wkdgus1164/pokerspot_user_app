import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/geolocation_data.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.g.dart';

@riverpod
class SearchResult extends _$SearchResult {
  @override
  FutureOr<List<StoreModel>> build() async {
    return _fetch();
  }

  Future<List<StoreModel>> _fetch() async {
    final res = await ref.read(storesApiProvider).fetchStoresBySearch(
          ref.read(geoLocationServiceProvider).latitude,
          ref.read(geoLocationServiceProvider).longitude,
          ref.read(searchKeywordProvider).keyword,
        );
    Logger().i('res : ${res.data}');
    return res.data?.items.toModels() ?? [];
  }
}

extension _StoresModelMapperExtension on List<StoreDto> {
  List<StoreModel> toModels() {
    return map((it) => it.toModels()).toList();
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
      isDaily: isDaily,
    );
  }
}
