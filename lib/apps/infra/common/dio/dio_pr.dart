import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/secret/secret.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_pr.g.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Secret.mainServerOrigin.key,
  connectTimeout: const Duration(milliseconds: 10000),
  receiveTimeout: const Duration(milliseconds: 10000),
);

// =================================================================
/// API 로깅 인터셉터
// =================================================================
Interceptor _loggingInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) async {
    final log = {
      "uri": options.uri,
      "input": options.data,
    };
    Logger().d(log);

    return handler.next(options);
  },
  onResponse: (response, handler) {
    final log = {
      "uri": response.realUri,
      "data": response.data,
    };
    Logger().d(log);

    return handler.next(response);
  },
  onError: (e, handler) {
    Logger().e("${e.toString()},\n\n${e.response?.data}");

    return handler.reject(e);
  },
);

/// 특별한 설정이 안된 Dio Client
@riverpod
Dio dio(DioRef ref) {
  Dio dio = Dio(_options);
  dio.interceptors.add(_loggingInterceptor);

  return dio;
}
