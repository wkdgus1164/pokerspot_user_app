import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_start_time.g.dart';
part 'filter_by_start_time.freezed.dart';

@freezed
class FilterByStartTimeModel with _$FilterByStartTimeModel {
  factory FilterByStartTimeModel({
    @Default(0) double minTime,
    @Default(23) double maxTime,
  }) = _FilterByStartTimeModel;

  FilterByStartTimeModel._();
}

@riverpod
class FilterByStartTime extends _$FilterByStartTime {
  @override
  FilterByStartTimeModel build() {
    return FilterByStartTimeModel();
  }

  void setMinTime(double time) {
    state = state.copyWith(minTime: time);
    ref.keepAlive();
  }

  void setMaxTime(double time) {
    state = state.copyWith(maxTime: time);
    ref.keepAlive();
  }
}
