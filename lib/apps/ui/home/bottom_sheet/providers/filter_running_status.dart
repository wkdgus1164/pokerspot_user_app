import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_running_status.g.dart';
part 'filter_running_status.freezed.dart';

enum RunningStatus {
  all('all'),
  running('running'),
  ;

  const RunningStatus(String key);
}

@freezed
class FilterRunningStatusModel with _$FilterRunningStatusModel {
  factory FilterRunningStatusModel({
    @Default(RunningStatus.all) RunningStatus runningStatus,
  }) = _FilterRunningStatusModel;

  FilterRunningStatusModel._();
}

@riverpod
class FilterRunningStatus extends _$FilterRunningStatus {
  @override
  FilterRunningStatusModel build() {
    return FilterRunningStatusModel();
  }

  void setAll() {
    state = state.copyWith(runningStatus: RunningStatus.all);
  }

  void setRunning() {
    state = state.copyWith(runningStatus: RunningStatus.running);
  }
}
