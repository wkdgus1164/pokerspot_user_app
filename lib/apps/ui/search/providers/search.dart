import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/geolocation_data.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.g.dart';

typedef Models = WithOffsetPagination<List<StoreModel>?>;

@riverpod
class SearchResult extends _$SearchResult {
  @override
  FutureOr<Models> build() async {
    return _fetch();
  }

  Future<Models> _fetch() async {
    final res = await ref.read(storesApiProvider).fetchStoresBySearch(
          ref.read(geoLocationServiceProvider).latitude,
          ref.read(geoLocationServiceProvider).longitude,
          ref.read(searchKeywordProvider).keyword,
          1,
          PAGE_SIZE,
        );
    Logger().i('res : ${res.data}');

    return WithOffsetPagination(
      items: res.data?.items.toStoreListModel(),
      page: res.data?.page ?? 1,
      perPage: res.data?.perPage ?? 10,
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

    state = await AsyncValue.guard(
      () async {
        final res = await ref.read(storesApiProvider).fetchStoresBySearch(
              ref.read(geoLocationServiceProvider).latitude,
              ref.read(geoLocationServiceProvider).longitude,
              ref.read(searchKeywordProvider).keyword,
              nextPage,
              PAGE_SIZE,
            );

        final data = res.data;
        if (data == null) return old;

        final newItems = data.items.toStoreListModel();

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
