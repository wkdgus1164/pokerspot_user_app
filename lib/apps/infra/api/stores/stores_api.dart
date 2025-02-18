import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_query.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/dio_pr.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/api_res.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stores_api.g.dart';

@RestApi()
abstract class StoresApi {
  factory StoresApi(Dio dio) = _StoresApi;

  @GET('/api/v2/stores')
  Future<ApiResponse<StoresDto>> fetchStores(
    @Queries() StoresQuery query,
  );

  @GET('/api/v2/stores/{storeId}')
  Future<ApiResponse<StoreDto>> fetchStoreDetail(
    @Path('storeId') String storeId,
    @Queries() StoreQuery query,
  );
}

@riverpod
StoresApi storesApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return StoresApi(dio);
}
