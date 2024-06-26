import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';

part 'stores_query.freezed.dart';
part 'stores_query.g.dart';

@freezed
class StoresQuery with _$StoresQuery {
  factory StoresQuery({
    required double lat,
    required double lng,
    OperationStatus? operationStatus,
    String? minOpenTime,
    String? maxOpenTime,
    GameType? gameType,
    int? minEntryPrice,
    int? maxEntryPrice,
    String? searchText,
    String? regCode,
    int? page,
    int? perPage,
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
  }) = _StoreQuery;

  factory StoreQuery.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StoreQueryFromJson(json);
}
