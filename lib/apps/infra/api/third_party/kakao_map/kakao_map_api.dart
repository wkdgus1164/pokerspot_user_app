import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/api/third_party/kakao_map/dto/address_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/kakaomap_dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kakao_map_api.g.dart';

@RestApi()
abstract class KakaoMapApi {
  factory KakaoMapApi(Dio dio) = _KakaoMapApi;

  @GET('/v2/local/geo/coord2address')
  Future<AddressDto> fetchAddressName(
    @Query('x') double x,
    @Query('y') double y,
  );
}

@riverpod
KakaoMapApi kakaoMapApi(Ref ref) {
  final dio = ref.watch(kakaomapDioProvider);
  return KakaoMapApi(dio);
}
