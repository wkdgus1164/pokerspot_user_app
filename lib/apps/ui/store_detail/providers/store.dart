import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

@riverpod
class StoreData extends _$StoreData {
  @override
  FutureOr<StoreModel> build(String id) {
    return _fetch(id: id);
  }

  Future<StoreModel> _fetch({required String id}) async {
    final res = await ref.read(storesApiProvider).fetchStoreDetail(
          id,
          StoreQuery(
            lat: ref.read(geoLocationServiceProvider).latitude,
            lng: ref.read(geoLocationServiceProvider).longitude,
          ),
        );

    final data = res.data;
    if (data == null) {
      throw Error();
    }

    return StoreModel(
      id: id,
      type: data.type,
      name: data.name,
      phone: data.phone,
      address: data.address,
      addressDetail: data.addressDetail,
      openTime: data.openTime,
      closeTime: data.closeTime,
      kakaoChatUrl: data.kakaoChatUrl,
      distance: data.distance,
      lat: data.lat,
      lng: data.lng,
      storeImages: data.storeImages?.toModels(),
      gameMTTItems: data.gameMttItems?.toModels(),
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
