import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/secret/secret.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_dio_pr.g.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Secret.areaServerOrigin.key,
  connectTimeout: const Duration(milliseconds: 10000),
  receiveTimeout: const Duration(milliseconds: 10000),
);

Interceptor _interceptor = InterceptorsWrapper(
  onRequest: (options, handler) async {
    return handler.next(options);
  },
  onError: (e, handler) {
    Logger().e(e.toString());
    return handler.reject(e);
  },
);

@riverpod
Dio areaApiDio(Ref ref) {
  Dio areaApiDio = Dio(_options);
  areaApiDio.interceptors.add(_interceptor);
  return areaApiDio;
}
