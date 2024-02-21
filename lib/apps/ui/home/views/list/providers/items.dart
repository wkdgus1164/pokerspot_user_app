// ignore_for_file: constant_identifier_names

import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items.g.dart';

const PAGE_SIZE = 20;

typedef Models = WithOffsetPagination<List<StoreDto>>;

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<Models> build() {
    return _fetch();
  }

  Future<Models> _fetch() async {
    final res = await ref.read(storesApiProvider).fetchStores(
        // StoresQuery(
        //   lat: 37.5586687,
        //   lng: 126.8321734,
        // operationStatus: 'ALL',
        // page: 1,
        // perPage: 20,
        // ),
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
        // lat: it.lat,
        // lng: it.lng,
        storeImages: it.storeImages,
        gameMttItems: it.gameMttItems,
      ),
    ).toList();
  }
}
