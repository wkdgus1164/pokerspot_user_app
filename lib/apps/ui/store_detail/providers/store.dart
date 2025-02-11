import 'package:pokerspot_user_app/apps/global/exception/exceptions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

typedef StoreModel = StoreDto;

@riverpod
class StoreData extends _$StoreData {
  @override
  FutureOr<StoreModel> build(String id) {
    return _fetch(id: id);
  }

  Future<StoreModel> _fetch({required String id}) async {
    try {
      final res = await ref.read(storesApiProvider).fetchStoreDetail(
            id,
            StoreQuery(
              lat: ref.read(geoLocationServiceProvider).latitude,
              lng: ref.read(geoLocationServiceProvider).longitude,
            ),
          );

      final data = res.data;
      if (data == null) {
        throw NotFoundStoreException();
      }

      return data;
    } catch (e) {
      throw NotFoundStoreException();
    }
  }
}
