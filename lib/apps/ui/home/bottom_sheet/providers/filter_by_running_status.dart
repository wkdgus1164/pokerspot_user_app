import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_running_status.g.dart';
part 'filter_by_running_status.freezed.dart';

enum RunningStatus {
  all('all'),
  running('running'),
  ;

  const RunningStatus(String key);
}

@freezed
class FilterByRunningStatusModel with _$FilterByRunningStatusModel {
  factory FilterByRunningStatusModel({
    @Default(RunningStatus.all) RunningStatus runningStatus,
  }) = _FilterByRunningStatusModel;

  FilterByRunningStatusModel._();
}

@riverpod
class FilterByRunningStatus extends _$FilterByRunningStatus {
  @override
  FilterByRunningStatusModel build() {
    return FilterByRunningStatusModel(runningStatus: RunningStatus.all);
  }

  void setAll() {
    state = state.copyWith(runningStatus: RunningStatus.all);
    ref.keepAlive();
  }

  void setRunning() {
    state = state.copyWith(runningStatus: RunningStatus.running);
    ref.keepAlive();
  }
}
