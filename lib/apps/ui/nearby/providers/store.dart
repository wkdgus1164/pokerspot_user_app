import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_min_reward.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

typedef Models = WithOffsetPagination<List<StoreModel>?>;

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<Models> build() async {
    return _fetch();
  }

  FutureOr<Models> _fetch() async {
    Position position = await Geolocator.getCurrentPosition();

    String getStringTime(int time) => time < 10 ? '0$time:00' : '$time:00';

    ref
        .read(geoLocationServiceProvider.notifier)
        .setLatitude(position.latitude);

    ref
        .read(geoLocationServiceProvider.notifier)
        .setLongitude(position.longitude);

    final latitude = ref.read(geoLocationServiceProvider).latitude;
    final longitude = ref.read(geoLocationServiceProvider).longitude;

    final operationStatus =
        ref.read(filterByOperationStatusProvider).operationStatus;

    final minOpenTime =
        getStringTime(ref.read(filterByOpenTimeProvider).minTime);
    final maxOpenTime =
        getStringTime(ref.read(filterByOpenTimeProvider).maxTime);

    final gameType = ref.read(filterByGameTypeProvider).gameType;
    final minReward = ref.read(filterByMinRewardDataProvider).minReward;
    final minEntryPrice = ref.read(filterByEntryPriceProvider).minTicket;
    final maxEntryPrice = ref.read(filterByEntryPriceProvider).maxTicket;

    final res = await ref.read(storesApiProvider).fetchStores(
          gameType == GameType.GTD
              ? StoresQuery(
                  lat: latitude,
                  lng: longitude,
                  page: 1,
                  perPage: PAGE_SIZE,
                  operationStatus: operationStatus,
                  minOpenTime: minOpenTime,
                  maxOpenTime: maxOpenTime,
                  gameType: gameType,
                  gtdMinReward: minReward,
                  minEntryPrice: minEntryPrice,
                  maxEntryPrice: maxEntryPrice,
                )
              : StoresQuery(
                  lat: latitude,
                  lng: longitude,
                  page: 1,
                  perPage: PAGE_SIZE,
                  operationStatus: operationStatus,
                  minOpenTime: minOpenTime,
                  maxOpenTime: maxOpenTime,
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
      items: res.data?.items.toStoreListModel(),
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

    final gameType = ref.read(filterByGameTypeProvider).gameType;
    final minReward = ref.read(filterByMinRewardDataProvider).minReward;
    final minEntryPrice = ref.read(filterByEntryPriceProvider).minTicket;
    final maxEntryPrice = ref.read(filterByEntryPriceProvider).maxTicket;
    final minOpenTime = getStringTime(
      ref.read(filterByOpenTimeProvider).minTime,
    );
    final maxOpenTime = getStringTime(
      ref.read(filterByOpenTimeProvider).maxTime,
    );
    final operationStatus =
        ref.read(filterByOperationStatusProvider).operationStatus;
    final latitude = ref.read(geoLocationServiceProvider).latitude;
    final longitude = ref.read(geoLocationServiceProvider).longitude;

    state = await AsyncValue.guard(() async {
      final res = await ref.read(storesApiProvider).fetchStores(
            gameType == GameType.GTD
                ? StoresQuery(
                    lat: latitude,
                    lng: longitude,
                    page: nextPage,
                    perPage: PAGE_SIZE,
                    operationStatus: operationStatus,
                    minOpenTime: minOpenTime,
                    maxOpenTime: maxOpenTime,
                    gameType: gameType,
                    gtdMinReward: minReward,
                    minEntryPrice: minEntryPrice,
                    maxEntryPrice: maxEntryPrice,
                  )
                : StoresQuery(
                    lat: latitude,
                    lng: longitude,
                    page: nextPage,
                    perPage: PAGE_SIZE,
                    operationStatus: operationStatus,
                    minOpenTime: minOpenTime,
                    maxOpenTime: maxOpenTime,
                    gameType: gameType,
                    minEntryPrice: minEntryPrice,
                    maxEntryPrice: maxEntryPrice,
                  ),
          );

      final data = res.data;

      if (data == null) return old;

      final newItems = data.items.toStoreListModel();

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
