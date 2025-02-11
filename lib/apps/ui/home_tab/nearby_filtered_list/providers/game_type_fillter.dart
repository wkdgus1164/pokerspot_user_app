import 'dart:async';

import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/geolocation_data.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_type_fillter.g.dart';

typedef Models = WithOffsetPagination<List<StoreDto>?>;

@riverpod
class GameTypeFilterResult extends _$GameTypeFilterResult {
  @override
  FutureOr<Models> build({required GameType gameType}) async {
    return _fetch(gameType: gameType);
  }

  Future<Models> _fetch({required GameType gameType}) async {
    final res = await ref.read(storesApiProvider).fetchStoresV2(
          StoresQuery(
            lat: ref.read(geoLocationServiceProvider).latitude,
            lng: ref.read(geoLocationServiceProvider).longitude,
            operationStatus: OperationStatus.ALL,
            minOpenTime: "00:00",
            maxOpenTime: "23:30",
            gameType: gameType,
            minEntryPrice: 0,
            maxEntryPrice: 100,
            searchText: ref.read(searchKeywordProvider).keyword,
            page: 1,
            perPage: PAGE_SIZE,
          ),
        );

    Logger().i('res : ${res.data}');

    return WithOffsetPagination(
      items: res.data?.items.toStoreV2ListModel(),
      page: res.data?.page ?? 1,
      perPage: res.data?.perPage ?? 10,
    );
  }

  Future fetchNextData({required GameType gameType}) async {
    final old = state.requireValue;

    final WithOffsetPagination(
      page: page,
      perPage: perPage,
      items: items,
    ) = old;

    final nextPage = page + 1;

    state = await AsyncValue.guard(
      () async {
        final res = await ref.read(storesApiProvider).fetchStoresV2(
              StoresQuery(
                lat: ref.read(geoLocationServiceProvider).latitude,
                lng: ref.read(geoLocationServiceProvider).longitude,
                operationStatus: OperationStatus.ALL,
                minOpenTime: "00:00",
                maxOpenTime: "23:30",
                gameType: gameType,
                minEntryPrice: 0,
                maxEntryPrice: 100,
                searchText: ref.read(searchKeywordProvider).keyword,
                page: nextPage,
                perPage: PAGE_SIZE,
              ),
            );

        final data = res.data;
        if (data == null) return old;

        final newItems = data.items.toStoreV2ListModel();

        return WithOffsetPagination(
          items: items! + newItems,
          page: nextPage,
          perPage: perPage,
          totalPage: data.totalPage,
          totalCount: data.totalCount,
        );
      },
    );
  }
}
