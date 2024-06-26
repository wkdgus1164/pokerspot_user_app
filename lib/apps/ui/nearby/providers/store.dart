import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_game_type.dart';
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
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.lowest,
      timeLimit: const Duration(seconds: 10),
      forceAndroidLocationManager: true,
    );

    ref
        .read(geoLocationServiceProvider.notifier)
        .setLatitude(position.latitude);

    ref
        .read(geoLocationServiceProvider.notifier)
        .setLongitude(position.longitude);

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
              page: nextPage,
              perPage: PAGE_SIZE,
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
