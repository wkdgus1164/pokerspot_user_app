import 'package:freezed_annotation/freezed_annotation.dart';

part 'stores_query_dto.freezed.dart';
part 'stores_query_dto.g.dart';

enum OperationStatus {
  all('ALL'),
  open('OPEN'),
  ;

  const OperationStatus(this.status);
  final String status;
}

enum GameType {
  all('ALL'),
  daily('DAILY'),
  seed('SEED'),
  gtd('GTD'),
  ;

  const GameType(this.key);
  final String key;
}

@freezed
class StoresQuery with _$StoresQuery {
  factory StoresQuery({
    required double lat,
    required double lng,
    // String? operationStatus,
    // String? minOpenTime,
    // String? maxOpenTime,
    // String? gameType,
    // int? minEntryPrice,
    // int? maxEntryPrice,
    // int? page,
    // int? perPage,
  }) = _StoresQuery;

  factory StoresQuery.fromJson(Map<String, dynamic> json) =>
      _$StoresQueryFromJson(json);
}
