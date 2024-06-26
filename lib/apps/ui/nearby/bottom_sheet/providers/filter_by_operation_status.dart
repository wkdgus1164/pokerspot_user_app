import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_operation_status.g.dart';
part 'filter_by_operation_status.freezed.dart';

@freezed
class FilterByOperationStatusModel with _$FilterByOperationStatusModel {
  factory FilterByOperationStatusModel({
    @Default(OperationStatus.ALL) OperationStatus operationStatus,
  }) = _FilterByOperationStatusModel;

  FilterByOperationStatusModel._();
}

@riverpod
class FilterByOperationStatus extends _$FilterByOperationStatus {
  @override
  FilterByOperationStatusModel build() {
    return FilterByOperationStatusModel(operationStatus: OperationStatus.ALL);
  }

  void setAll() {
    state = state.copyWith(operationStatus: OperationStatus.ALL);
    ref.keepAlive();
    ref.invalidate(filterServiceProvider);
  }

  void setRunning() {
    state = state.copyWith(operationStatus: OperationStatus.OPEN);
    ref.keepAlive();
    ref.invalidate(filterServiceProvider);
  }
}
