import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/geolocation_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_v2.g.dart';

@riverpod
class StoreV2Data extends _$StoreV2Data {
  @override
  FutureOr<StoreV2Model> build(String id) {
    return _fetch(id: id);
  }

  Future<StoreV2Model> _fetch({required String id}) async {
    final res = await ref.read(storesApiProvider).fetchStoreDetailV2(
          id,
          StoreQuery(
            lat: ref.read(geoLocationServiceProvider).latitude,
            lng: ref.read(geoLocationServiceProvider).longitude,
          ),
        );

    final data = res.data;
    if (data == null) {
      throw Error();
    }

    return StoreV2Model(
      id: id,
      type: data.type,
      name: data.name ?? "",
      phone: data.phone ?? "",
      address: data.address ?? "",
      addressDetail: data.addressDetail ?? "",
      openTime: data.openTime ?? "",
      closeTime: data.closeTime ?? "마감 시",
      updatedAt: data.updatedAt ?? DateTime.now(),
      distance: data.distance ?? 0,
      lat: data.lat ?? 0,
      lng: data.lng ?? 0,
      storeImages: data.storeImages?.toImageListModel() ?? [],
      gameMTTItems: data.gameMttItems?.toGameListModel() ?? [],
      storeBenefits: data.storeBenefits?.toStoreBenefitsModel() ?? [],
      storeTags: data.storeTags?.toStoreTagsModel() ?? [],
      kakaoChatUrl: data.kakaoChatUrl ?? "",
    );
  }
}
