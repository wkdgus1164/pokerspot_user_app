import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_benefit.g.dart';
part 'filter_by_benefit.freezed.dart';

@freezed
class FilterByBenefitModel with _$FilterByBenefitModel {
  factory FilterByBenefitModel({
    @Default(false) bool isOnlyFirstGameBenefit,
    @Default(false) bool isOnlyNewUserBenefit,
  }) = _FilterByBenefitModel;

  FilterByBenefitModel._();
}

@riverpod
class FilterByBenefit extends _$FilterByBenefit {
  @override
  FilterByBenefitModel build() {
    return FilterByBenefitModel(
      isOnlyFirstGameBenefit: false,
      isOnlyNewUserBenefit: false,
    );
  }

  void setNothing() {
    state = state.copyWith(isOnlyFirstGameBenefit: false);
    state = state.copyWith(isOnlyNewUserBenefit: false);
    ref.keepAlive();
  }

  void setAll() {
    state = state.copyWith(isOnlyFirstGameBenefit: true);
    state = state.copyWith(isOnlyNewUserBenefit: true);
    ref.keepAlive();
  }

  void setOnlyFirstGameBenefit() {
    state = state.copyWith(isOnlyFirstGameBenefit: true);
    state = state.copyWith(isOnlyNewUserBenefit: false);
    ref.keepAlive();
  }

  void setOnlyNewUserBenefit() {
    state = state.copyWith(isOnlyFirstGameBenefit: false);
    state = state.copyWith(isOnlyNewUserBenefit: true);
    ref.keepAlive();
  }
}
