import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_participate_fee.g.dart';
part 'filter_by_participate_fee.freezed.dart';

@freezed
class FilterByParticipateFeeModel with _$FilterByParticipateFeeModel {
  factory FilterByParticipateFeeModel({
    @Default(1) double minTicket,
    @Default(30) double maxTicket,
  }) = _FilterByParticipageFeeModel;

  FilterByParticipateFeeModel._();
}

@riverpod
class FilterByParticipateFee extends _$FilterByParticipateFee {
  @override
  FilterByParticipateFeeModel build() {
    return FilterByParticipateFeeModel();
  }

  void setMinTicket(double ticket) {
    state = state.copyWith(minTicket: ticket);
    ref.keepAlive();
  }

  void setMaxTicket(double ticket) {
    state = state.copyWith(maxTicket: ticket);
    ref.keepAlive();
  }
}
