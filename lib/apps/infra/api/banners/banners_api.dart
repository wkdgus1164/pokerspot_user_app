import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/api/common/models/api_res.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/dio_pr.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pokerspot_user_app/apps/infra/api/banners/dto/banner_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banners_api.g.dart';

@RestApi()
abstract class BannersApi {
  factory BannersApi(Dio dio) = _BannersApi;

  @GET('/api/v1/banners')
  Future<ApiResponse<List<BannerDto>>> fetchBanners();
}

@riverpod
BannersApi bannerApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return BannersApi(dio);
}
