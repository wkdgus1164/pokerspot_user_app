import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_operation_status.g.dart';
part 'filter_by_operation_status.freezed.dart';

@freezed
class FilterByOperationStatusModel with _$FilterByOperationStatusModel {
  factory FilterByOperationStatusModel({
    @Default(OperationStatus.all) OperationStatus operationStatus,
  }) = _FilterByOperationStatusModel;

  FilterByOperationStatusModel._();
}

@riverpod
class FilterByOperationStatus extends _$FilterByOperationStatus {
  @override
  FilterByOperationStatusModel build() {
    return FilterByOperationStatusModel(operationStatus: OperationStatus.all);
  }

  void setAll() {
    state = state.copyWith(operationStatus: OperationStatus.all);
    ref.keepAlive();
    ref.invalidate(filterServiceProvider);
  }

  void setRunning() {
    state = state.copyWith(operationStatus: OperationStatus.open);
    ref.keepAlive();
    ref.invalidate(filterServiceProvider);
  }
}
