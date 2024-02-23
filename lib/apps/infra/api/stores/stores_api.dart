import 'package:dio/dio.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stores_api.g.dart';

@RestApi()
abstract class StoresApi {
  factory StoresApi(Dio dio) = _StoresApi;

  @GET('/api/v1/stores')
  Future<StoresDataDto> fetchStores(
    @Query('lat') double lat,
    @Query('lng') double lng,
  );
}

@riverpod
StoresApi storesApi(StoresApiRef ref) {
  final dio = ref.watch(dioProvider);
  return StoresApi(dio);
}
