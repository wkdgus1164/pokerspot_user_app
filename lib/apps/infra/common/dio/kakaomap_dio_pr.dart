import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/secret/secret.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kakaomap_dio_pr.g.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Secret.kakaomapServerOrigin.key,
  connectTimeout: const Duration(milliseconds: 10000),
  receiveTimeout: const Duration(milliseconds: 10000),
);

Interceptor _interceptor = InterceptorsWrapper(
  onRequest: (options, handler) async {
    options.headers['Authorization'] =
        'KakaoAK 968551b0985ca5ba654d1d0b37057382';

    return handler.next(options);
  },
  onError: (e, handler) {
    Logger().e(e.toString());
    return handler.reject(e);
  },
);

/// 특별한 설정이 안된 Dio Client
@riverpod
Dio kakaomapDio(KakaomapDioRef ref) {
  Dio kakaomapDio = Dio(_options);
  kakaomapDio.interceptors.add(_interceptor);
  return kakaomapDio;
}
