import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

typedef StoreModel = StoreDto;

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
      name: data.name ?? '',
      phone: data.phone ?? '',
      address: data.address ?? '',
      addressDetail: data.addressDetail ?? '',
      openTime: data.openTime ?? '',
      closeTime: data.closeTime ?? '',
      isViewKakaoChat: data.isViewKakaoChat,
      storeBenefits: data.storeBenefits
          ?.map((e) => StoreBenefitsDto(
                type: e.type,
                description: e.description,
              ))
          .toList(),
      storeTags: data.storeTags
          ?.map((e) => StoreTagsDto(
                name: e.name,
              ))
          .toList(),
      gameMttItems: data.gameMttItems
          ?.map((e) => GameMTTDto(
                id: e.id,
                type: e.type,
                entryType: e.entryType,
                entryPrice: e.entryPrice,
                regEndBlindLevel: e.regEndBlindLevel,
                entryMax: e.entryMax,
                reEntryMax: e.reEntryMax,
                duration: e.duration,
                prizeType: e.prizeType,
                prize: e.prize,
                gtdMinReward: e.gtdMinReward,
                eventType: e.eventType,
                isDaily: e.isDaily,
                gameSchedule: e.gameSchedule,
                name: e.name,
              ))
          .toList(),
      kakaoChatUrl: data.kakaoChatUrl,
      updatedAt: data.updatedAt,
      distance: data.distance,
      lat: data.lat,
      lng: data.lng,
      storeImages: data.storeImages
          ?.map((e) => StoreImagesDto(
                id: e.id,
                url: e.url,
              ))
          .toList(),
    );
  }
}
