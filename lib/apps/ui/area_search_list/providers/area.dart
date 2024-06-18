import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_data.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area.g.dart';

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
          ref.read(areaDataServiceProvider).regCode,
          1,
          PAGE_SIZE,
        );

    Logger().i('res : ${res.data}');

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
            ref.read(areaDataServiceProvider).regCode,
            page,
            perPage,
          );

      final data = res.data;

      if (data == null) return old;

      final newItems = data.items.map((e) => e.toStoreModel()).toList();

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
