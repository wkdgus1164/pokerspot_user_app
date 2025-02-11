import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_open_time.g.dart';
part 'filter_by_open_time.freezed.dart';

@freezed
class FilterByOpenTimeModel with _$FilterByOpenTimeModel {
  factory FilterByOpenTimeModel({
    @Default(0) int minTime,
    @Default(23) int maxTime,
  }) = _FilterByOpenTimeModel;

  FilterByOpenTimeModel._();
}

@riverpod
class FilterByOpenTime extends _$FilterByOpenTime {
  @override
  FilterByOpenTimeModel build() {
    return FilterByOpenTimeModel();
  }

  void setMinTime(int time) {
    state = state.copyWith(minTime: time);
    ref.keepAlive();
  }

  void setMaxTime(int time) {
    state = state.copyWith(maxTime: time);
    ref.keepAlive();
  }
}
