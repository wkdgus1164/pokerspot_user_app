import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_service.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<List<StoreDto>> build() {
    final res = ref.read(locationServiceProvider);

    return res.when(
      data: (data) {
        return _requestStoreList(
          latitude: data.latitude,
          longitude: data.longitude,
          isRunning: ref.read(filterServiceProvider).isRunning,
          minOpenTime: ref.read(filterServiceProvider).minOpenTime,
          maxOpenTime: ref.read(filterServiceProvider).maxOpenTime,
          gameType: ref.read(filterServiceProvider).gameType,
          minEntryPrice: ref.read(filterServiceProvider).minEntryPrice,
          maxEntryPrice: ref.read(filterServiceProvider).maxEntryPrice,
        ).then((value) => value.data.items);
      },
      error: (error, stackTrace) {
        Logger().e('error: $error');
        return Future.value([]);
      },
      loading: () {
        Logger().e('loading');
        return Future.value([]);
      },
    );
  }

  Future<StoresDataDto> _requestStoreList({
    required double latitude,
    required double longitude,
    String? isRunning = "ALL",
    int? minOpenTime = 0,
    int? maxOpenTime = 23,
    String? gameType = "ALL",
    int? minEntryPrice = 0,
    int? maxEntryPrice = 100,
  }) {
    Logger().d(
        'latitude: $latitude, longitude: $longitude, isRunning: $isRunning, minOpenTime: $minOpenTime, maxOpenTime: $maxOpenTime, gameType: $gameType, minEntryPrice: $minEntryPrice, maxEntryPrice: $maxEntryPrice');
    return ref.read(storesApiProvider).fetchStores(
          latitude,
          longitude,
          50,
          isRunning,
          minOpenTime! > 9 ? '$minOpenTime:00' : '0$minOpenTime:00',
          maxOpenTime! > 9 ? '$maxOpenTime:00' : '0$maxOpenTime:00',
          gameType,
          minEntryPrice,
          maxEntryPrice,
        );
  }
}
