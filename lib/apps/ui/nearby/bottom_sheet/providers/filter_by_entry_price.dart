import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_entry_price.g.dart';
part 'filter_by_entry_price.freezed.dart';

@freezed
class FilterByEntryPriceModel with _$FilterByEntryPriceModel {
  factory FilterByEntryPriceModel({
    @Default(1) int minTicket,
    @Default(30) int maxTicket,
  }) = _FilterByEntryPriceModel;

  FilterByEntryPriceModel._();
}

@riverpod
class FilterByEntryPrice extends _$FilterByEntryPrice {
  @override
  FilterByEntryPriceModel build() {
    return FilterByEntryPriceModel();
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
