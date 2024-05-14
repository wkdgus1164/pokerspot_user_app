import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_participate_fee.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_running_status.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_start_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_tournament_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_service.g.dart';
part 'filter_service.freezed.dart';

@freezed
class FilterServiceModel with _$FilterServiceModel {
  factory FilterServiceModel({
    required String isRunning,
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
    final isRunning = ref.read(filterByRunningStatusProvider).runningStatus;
    final minOpenTime = ref.read(filterByStartTimeProvider).minTime;
    final maxOpenTime = ref.read(filterByStartTimeProvider).maxTime;
    final gameType =
        ref.read(filterByTournamentTypeProvider).tournamentType.key;
    final minEntryPrice = ref.read(filterByParticipateFeeProvider).minTicket;
    final maxEntryPrice = ref.read(filterByParticipateFeeProvider).maxTicket;

    Logger().d(
        '$isRunning, $minOpenTime, $maxOpenTime, $gameType, $minEntryPrice, $maxEntryPrice');

    return FilterServiceModel(
      isRunning: isRunning == RunningStatus.running ? "OPEN" : "ALL",
      minOpenTime: minOpenTime,
      maxOpenTime: maxOpenTime,
      gameType: gameType,
      minEntryPrice: minEntryPrice,
      maxEntryPrice: maxEntryPrice,
    );
  }
}
