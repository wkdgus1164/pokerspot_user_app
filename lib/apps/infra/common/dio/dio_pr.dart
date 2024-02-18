import 'package:dio/dio.dart';
import 'package:pokerspot_user_app/secret/secret.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_pr.g.dart';

BaseOptions _options = BaseOptions(
  baseUrl: Secret.mainServerOrigin.key,
  connectTimeout: const Duration(milliseconds: 4000),
  receiveTimeout: const Duration(milliseconds: 5000),
);

/// 특별한 설정이 안된 Dio Client
@riverpod
Dio dio(DioRef ref) {
  Dio dio = Dio(_options);

  return dio;
}
