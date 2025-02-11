import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_min_reward.freezed.dart';
part 'filter_by_min_reward.g.dart';

@freezed
class FilterByMinRewardModel with _$FilterByMinRewardModel {
  factory FilterByMinRewardModel({
    @Default(50) int minReward,
  }) = _FilterByMinRewardModel;

  FilterByMinRewardModel._();
}

@riverpod
class FilterByMinRewardData extends _$FilterByMinRewardData {
  @override
  FilterByMinRewardModel build() {
    return FilterByMinRewardModel();
  }

  void setMinReward(int reward) {
    state = state.copyWith(minReward: reward);
    ref.keepAlive();
  }
}
