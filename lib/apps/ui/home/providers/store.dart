import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<List<StoreModel>> build() async {
    return _fetch();
  }

  Future<List<StoreModel>> _fetch() async {
    final locationModel = ref.read(locationServiceProvider);
    if (locationModel.asData?.value.latitude == null ||
        locationModel.asData?.value.longitude == null) {
      throw Exception('Location is not available');
    }

    final latitude = locationModel.asData!.value.latitude;
    final longitude = locationModel.asData!.value.longitude;
    final operationStatus =
        ref.read(filterByOperationStatusProvider).operationStatus;

    final minOpenTime = ref.read(filterByOpenTimeProvider).minTime;
    final maxOpenTime = ref.read(filterByOpenTimeProvider).maxTime;

    String getStringTime(int time) => time < 10 ? '0$time:00' : '$time:00';

    final gameType = ref.read(filterByGameTypeProvider).gameType;
    final minEntryPrice = ref.read(filterByEntryPriceProvider).minTicket;
    final maxEntryPrice = ref.read(filterByEntryPriceProvider).maxTicket;

    final res = await ref.read(storesApiProvider).fetchStores(
          StoresQuery(
            lat: latitude,
            lng: longitude,
            perPage: 50,
            operationStatus: operationStatus,
            minOpenTime: getStringTime(minOpenTime),
            maxOpenTime: getStringTime(maxOpenTime),
            gameType: gameType,
            minEntryPrice: minEntryPrice,
            maxEntryPrice: maxEntryPrice,
          ),
        );

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
