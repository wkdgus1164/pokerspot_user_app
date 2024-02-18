// ignore_for_file: constant_identifier_names

import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/exception/custom_exception.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/stores_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items.g.dart';

const PAGE_SIZE = 20;

typedef Model = WithOffsetPagination<List<StoreDto>>;

@riverpod
class StoresItems extends _$StoresItems {
  @override
  FutureOr<Model> build() {
    return _fetch();
  }

  Future<Model> _fetch() async {
    final res = await ref.read(storesApiProvider).fetchStores(
        // StoresQuery(
        //   lat: 36.3414,
        //   lng: 127.3882,
        //   // operationStatus: 'ALL',
        //   // page: 1,
        //   // perPage: 20,
        // ),
        );

    final data = res;
    // Logger().e(res);

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
