import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/secret/secret.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rapidapi_dio_pr.g.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Secret.rapidapiServerOrigin.key,
  connectTimeout: const Duration(milliseconds: 10000),
  receiveTimeout: const Duration(milliseconds: 10000),
);

Interceptor _interceptor = InterceptorsWrapper(
  onRequest: (options, handler) async {
    options.headers['X-RapidAPI-Key'] =
        '0c3b717d09mshaf30e2c1b28d14ep1c3113jsn0535fade66d7';
    options.headers['X-RapidAPI-Host'] = 'google-search74.p.rapidapi.com';

    Logger().d(options.headers);
    return handler.next(options);
  },
  onError: (e, handler) {
    Logger().e(e.toString());
    return handler.reject(e);
  },
);

@riverpod
Dio rapidApiDio(RapidApiDioRef ref) {
  Dio rapidApiDio = Dio(_options);
  rapidApiDio.interceptors.add(_interceptor);
  return rapidApiDio;
}
