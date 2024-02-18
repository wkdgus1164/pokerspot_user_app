import 'package:dio/dio.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/stores_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stores_api.g.dart';

@RestApi()
abstract class StoresApi {
  factory StoresApi(Dio dio) = _StoresApi;

  @GET(
      '/api/v1/stores?lat=36.3414&lng=127.3882&operationStatus=ALL&page=1&perPage=20')
  Future<StoresDto> fetchStores(
      // @Queries() StoresQuery query,
      );
}

@riverpod
StoresApi storesApi(StoresApiRef ref) {
  final dio = ref.watch(dioProvider);
  return StoresApi(dio);
}
