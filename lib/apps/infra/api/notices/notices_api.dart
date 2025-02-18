import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/dto/notice_dto.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/dto/notices_dto.dart';
import 'package:pokerspot_user_app/apps/infra/common/dio/dio_pr.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/api_res.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notices_api.g.dart';

@RestApi()
abstract class NoticesApi {
  factory NoticesApi(Dio dio) = _NoticesApi;

  @GET('/api/v1/notices')
  Future<ApiResponse<NoticesDto>> fetchNotices(
    @Query('page') int page,
    @Query('perPage') int perPage,
  );

  @GET('/api/v1/notices/{id}')
  Future<ApiResponse<NoticeDto>> fetchNotice(
    @Path('id') String id,
  );
}

@riverpod
NoticesApi noticesApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return NoticesApi(dio);
}
