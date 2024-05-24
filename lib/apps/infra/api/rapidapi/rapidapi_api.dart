import 'package:dio/dio.dart';
import 'package:pokerspot_user_app/apps/infra/api/rapidapi/dto/search_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/rapidapi_dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rapidapi_api.g.dart';

@RestApi()
abstract class RapidapiApi {
  factory RapidapiApi(Dio dio) = _RapidapiApi;

  @GET('/catalog/products')
  Future<SearchDto> search(
      // @Query('query') String query,
      );
}

@riverpod
RapidapiApi rapidapiApi(RapidapiApiRef ref) {
  return RapidapiApi(ref.watch(rapidapiDioProvider));
}
