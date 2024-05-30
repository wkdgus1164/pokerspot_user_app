import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/geolocation_data.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.g.dart';

@riverpod
class SearchResult extends _$SearchResult {
  @override
  FutureOr<List<StoreModel>> build() async {
    return _fetch();
  }

  Future<List<StoreModel>> _fetch() async {
    final res = await ref.read(storesApiProvider).fetchStoresBySearch(
          ref.read(geoLocationServiceProvider).latitude,
          ref.read(geoLocationServiceProvider).longitude,
          ref.read(searchKeywordProvider).keyword,
        );
    Logger().i('res : ${res.data}');
    return res.data?.items.toStoreListModel() ?? [];
  }
}
