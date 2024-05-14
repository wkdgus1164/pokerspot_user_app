import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
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
  }) {
    return ref.read(storesApiProvider).fetchStores(
          latitude,
          longitude,
          50,
        );
  }
}
