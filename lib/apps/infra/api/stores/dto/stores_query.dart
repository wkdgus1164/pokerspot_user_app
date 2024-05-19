import 'package:freezed_annotation/freezed_annotation.dart';

part 'stores_query.freezed.dart';
part 'stores_query.g.dart';

@freezed
class StoresQuery with _$StoresQuery {
  factory StoresQuery({
    required double lat,
    required double lng,
    double? perPage,
    String? operationStatus,
    String? minOpenTime,
    String? maxOpenTime,
    String? gameType,
    int? minEntryPrice,
    int? maxEntryPrice,
  }) = _StoresQuery;

  factory StoresQuery.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoresQueryFromJson(json);
}

@freezed
class StoreQuery with _$StoreQuery {
  factory StoreQuery({
    required double lat,
    required double lng,
    required String id,
  }) = _StoreQuery;

  factory StoreQuery.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoreQueryFromJson(json);
}
