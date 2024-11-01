import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/api/address/dto/area_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/area_dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_api.g.dart';

@RestApi()
abstract class AreaApi {
  factory AreaApi(Dio dio) = _AreaApi;

  @GET('/v1/regcodes')
  Future<AreaListDto> fetchArea(
    @Query('regcode_pattern') String regcodePattern,
  );
}

@riverpod
AreaApi areaApi(Ref ref) {
  return AreaApi(ref.watch(areaApiDioProvider));
}
