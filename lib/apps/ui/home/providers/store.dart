// ignore_for_file: constant_identifier_names

import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store.g.dart';

const PAGE_SIZE = 20;

typedef Models = WithOffsetPagination<List<StoreDto>>;

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<Models> build() {
    return _fetch();
  }

  Future<Models> _fetch() async {
    double latitude = 127.028361548;
    double longitude = 37.496486063;

    LocationService().getCurrentPosition(
      (latitude, longitude) {
        latitude = latitude;
        longitude = longitude;
      },
      (error) => Logger().e(error),
    );

    final res = await ref.read(storesApiProvider).fetchStores(
          latitude,
          longitude,
          50,
        );

    final data = res.data;

    return WithOffsetPagination(items: data.items.toModels());
  }
}

extension _ToolModelMapperExtension on List<StoreDto> {
  List<StoreDto> toModels() {
    return map(
      (it) => StoreDto(
        id: it.id,
        type: it.type,
        name: it.name,
        address: it.address,
        addressDetail: it.addressDetail,
        openTime: it.openTime,
        closeTime: it.closeTime,
        distance: it.distance,
        lat: it.lat,
        lng: it.lng,
        storeImages: it.storeImages,
        gameMttItems: it.gameMttItems,
      ),
    ).toList();
  }
}
