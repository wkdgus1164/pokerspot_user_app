import 'package:json_annotation/json_annotation.dart';

part 'api_res.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  T? data;
  String statusCode;
  String statusMessage;

  ApiResponse({
    this.data,
    required this.statusCode,
    required this.statusMessage,
  });

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiResponseFromJson<T>(json, fromJsonT);
}
