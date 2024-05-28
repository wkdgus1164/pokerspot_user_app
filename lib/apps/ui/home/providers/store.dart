import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

const double PAGE_SIZE = 10;

typedef Models = WithOffsetPagination<List<StoreModel>?>;

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<Models> build() async {
    return _fetch();
  }

  FutureOr<Models> _fetch() async {
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
            lat: ref.read(geoLocationServiceProvider).latitude,
            lng: ref.read(geoLocationServiceProvider).longitude,
            page: 1,
            perPage: PAGE_SIZE,
            operationStatus: operationStatus,
            minOpenTime: getStringTime(minOpenTime),
            maxOpenTime: getStringTime(maxOpenTime),
            gameType: gameType,
            minEntryPrice: minEntryPrice,
            maxEntryPrice: maxEntryPrice,
          ),
        );

    return WithOffsetPagination(
      page: res.data?.page ?? 1,
      perPage: res.data?.perPage ?? 20,
      totalPage: res.data?.totalPage ?? 0,
      totalCount: res.data?.totalCount ?? 0,
      items: res.data?.items.map((it) => it.toModels()).toList() ?? [],
    );
  }

  Future fetchNextData() async {
    final old = state.requireValue;
    String getStringTime(int time) => time < 10 ? '0$time:00' : '$time:00';

    final WithOffsetPagination(
      page: page,
      perPage: perPage,
      items: items,
    ) = old;

    final nextPage = page + 1;
    state = await AsyncValue.guard(() async {
      final res = await ref.read(storesApiProvider).fetchStores(
            StoresQuery(
              gameType: ref.read(filterByGameTypeProvider).gameType,
              minEntryPrice: ref.read(filterByEntryPriceProvider).minTicket,
              maxEntryPrice: ref.read(filterByEntryPriceProvider).maxTicket,
              minOpenTime:
                  getStringTime(ref.read(filterByOpenTimeProvider).minTime),
              maxOpenTime:
                  getStringTime(ref.read(filterByOpenTimeProvider).maxTime),
              operationStatus:
                  ref.read(filterByOperationStatusProvider).operationStatus,
              lat: ref.read(geoLocationServiceProvider).latitude,
              lng: ref.read(geoLocationServiceProvider).longitude,
              page: double.parse(nextPage.toString()),
              perPage: PAGE_SIZE,
            ),
          );

      final data = res.data;

      if (data == null) return old;

      final newItems = data.items.map((e) => e.toModels()).toList();
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
      isDaily: isDaily,
    );
  }
}
