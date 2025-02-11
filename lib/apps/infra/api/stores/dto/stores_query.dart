import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';

part 'stores_query.freezed.dart';
part 'stores_query.g.dart';

@freezed
class StoresQuery with _$StoresQuery {
  factory StoresQuery({
    /// 위도
    required double lat,

    /// 경도
    required double lng,

    /// 영업 상태
    @Default(OperationStatus.ALL) OperationStatus operationStatus,

    /// 최소 영업 시작 시간
    @Default('00:00') String minOpenTime,

    /// 최대 영업 종료 시간
    @Default('23:30') String maxOpenTime,

    /// 게임 종류
    @Default(GameType.ALL) GameType gameType,

    /// 최소 엔트리 비용
    @Default(0) int minEntryPrice,

    /// 최대 엔트리 비용
    @Default(100) int maxEntryPrice,

    /// GTD 최소 보상금
    int? gtdMinReward,

    /// 검색어
    String? searchText,

    /// 행정구역 코드
    String? regCode,

    /// 최소 프라이즈 머니
    /// Default: 0
    @Default(0) int minPrize,

    /// 최대 프라이즈 머니
    /// Default: 100
    @Default(100) int maxPrize,

    /// 오리지널 칩셋 초과 여부
    /// Default: false
    @Default(false) bool isOnlyFirstGameBenefit,

    /// 신규 칩셋 초과 여부
    /// Default: false
    @Default(false) bool isOnlyNewUserBenefit,

    /// 페이지 번호
    /// Default: 1
    @Default(1) int page,

    /// 페이지당 항목 수
    /// Default: 20
    @Default(20) int perPage,
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
