import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/secret/secret.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rapidapi_dio_pr.g.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Secret.kakaomapServerOrigin.key,
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
Dio rapidapiDio(RapidapiDioRef ref) {
  Dio rapidapiDio = Dio(_options);
  rapidapiDio.interceptors.add(_interceptor);
  return rapidapiDio;
}
