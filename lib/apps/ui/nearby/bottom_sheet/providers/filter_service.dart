import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_min_reward.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_service.g.dart';
part 'filter_service.freezed.dart';

@freezed
class FilterServiceModel with _$FilterServiceModel {
  factory FilterServiceModel({
    required OperationStatus operationStatus,
    required int minOpenTime,
    required int maxOpenTime,
    required GameType gameType,
    required int minEntryPrice,
    required int maxEntryPrice,
    required int minReward,
  }) = _FilterServiceModel;

  FilterServiceModel._();
}

@riverpod
class FilterService extends _$FilterService {
  @override
  FilterServiceModel build() {
    final OperationStatus operationStatus =
        ref.read(filterByOperationStatusProvider).operationStatus;
    final minOpenTime = ref.read(filterByOpenTimeProvider).minTime;
    final maxOpenTime = ref.read(filterByOpenTimeProvider).maxTime;
    final GameType gameType = ref.read(filterByGameTypeProvider).gameType;
    final minEntryPrice = ref.read(filterByEntryPriceProvider).minTicket;
    final maxEntryPrice = ref.read(filterByEntryPriceProvider).maxTicket;
    final minReward = ref.read(filterByMinRewardDataProvider).minReward;

    Logger().i('''
FilterService
  operationStatus: $operationStatus
  minOpenTime: $minOpenTime
  maxOpenTime: $maxOpenTime
  gameType: $gameType
  minEntryPrice: $minEntryPrice
  maxEntryPrice: $maxEntryPrice
  minReward: $minReward''');

    return FilterServiceModel(
      operationStatus: operationStatus,
      minOpenTime: minOpenTime,
      maxOpenTime: maxOpenTime,
      gameType: gameType,
      minEntryPrice: minEntryPrice,
      maxEntryPrice: maxEntryPrice,
      minReward: minReward,
    );
  }
}
