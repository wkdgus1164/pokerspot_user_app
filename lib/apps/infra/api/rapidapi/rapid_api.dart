import 'package:dio/dio.dart';
import 'package:pokerspot_user_app/apps/infra/api/rapidapi/dto/search_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/rapidapi/dto/search_query_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/rapidapi_dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rapid_api.g.dart';

@RestApi()
abstract class RapidApi {
  factory RapidApi(Dio dio) = _RapidApi;

  @GET('/')
  Future<SearchResultListDto> search(
    @Queries() SearchQuery searchQuery,
  );
}

@riverpod
RapidApi rapidApi(RapidApiRef ref) {
  return RapidApi(ref.watch(rapidApiDioProvider));
}
