import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_service.g.dart';
part 'filter_service.freezed.dart';

@freezed
class FilterServiceModel with _$FilterServiceModel {
  factory FilterServiceModel({
    required String operationStatus,
    required int minOpenTime,
    required int maxOpenTime,
    required String gameType,
    required int minEntryPrice,
    required int maxEntryPrice,
  }) = _FilterServiceModel;

  FilterServiceModel._();
}

@riverpod
class FilterService extends _$FilterService {
  @override
  FilterServiceModel build() {
    final operationStatus =
        ref.read(filterByOperationStatusProvider).operationStatus;
    final minOpenTime = ref.read(filterByOpenTimeProvider).minTime;
    final maxOpenTime = ref.read(filterByOpenTimeProvider).maxTime;
    final gameType = ref.read(filterByGameTypeProvider).gameType.value;
    final minEntryPrice = ref.read(filterByEntryPriceProvider).minTicket;
    final maxEntryPrice = ref.read(filterByEntryPriceProvider).maxTicket;

    Logger().i('''
FilterService
  operationStatus: $operationStatus
  minOpenTime: $minOpenTime
  maxOpenTime: $maxOpenTime
  gameType: $gameType
  minEntryPrice: $minEntryPrice
  maxEntryPrice: $maxEntryPrice''');

    return FilterServiceModel(
      operationStatus: operationStatus == OperationStatus.open ? "OPEN" : "ALL",
      minOpenTime: minOpenTime,
      maxOpenTime: maxOpenTime,
      gameType: gameType,
      minEntryPrice: minEntryPrice,
      maxEntryPrice: maxEntryPrice,
    );
  }
}
