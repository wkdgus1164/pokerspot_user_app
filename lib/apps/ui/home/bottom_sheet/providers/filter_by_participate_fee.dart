import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_participate_fee.g.dart';
part 'filter_by_participate_fee.freezed.dart';

@freezed
class FilterByParticipateFeeModel with _$FilterByParticipateFeeModel {
  factory FilterByParticipateFeeModel({
    @Default(1) int minTicket,
    @Default(100) int maxTicket,
  }) = _FilterByParticipageFeeModel;

  FilterByParticipateFeeModel._();
}

@riverpod
class FilterByParticipateFee extends _$FilterByParticipateFee {
  @override
  FilterByParticipateFeeModel build() {
    return FilterByParticipateFeeModel();
  }

  void setMinTicket(int ticket) {
    state = state.copyWith(minTicket: ticket);
    ref.keepAlive();
  }

  void setMaxTicket(int ticket) {
    state = state.copyWith(maxTicket: ticket);
    ref.keepAlive();
  }
}
