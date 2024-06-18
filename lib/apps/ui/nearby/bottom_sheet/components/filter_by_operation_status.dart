import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_operation_status.dart';

class FilterByOperationStatusView extends StatefulHookConsumerWidget {
  const FilterByOperationStatusView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByOperationStatusState();
}

class _FilterByOperationStatusState
    extends ConsumerState<FilterByOperationStatusView> {
  @override
  Widget build(BuildContext context) {
    final operationStatusFilter = ref.watch(filterByOperationStatusProvider);
    final bool isOnlyRunning =
        operationStatusFilter.operationStatus == OperationStatus.OPEN;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '운영 상태',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: colorGrey40,
                fontWeight: FontWeight.normal,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Ink(
                color: isOnlyRunning ? Colors.transparent : colorBrand90,
                child: InkWell(
                  splashColor: colorBrand95,
                  onTap: _handleClickAll,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: isOnlyRunning ? colorGrey80 : colorBrand40,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      '전체',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: isOnlyRunning ? colorGrey40 : colorBrand40,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Ink(
                color: !isOnlyRunning ? Colors.transparent : colorBrand90,
                child: InkWell(
                  onTap: _handleClickRunning,
                  splashColor: colorBrand95,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: !isOnlyRunning ? colorGrey80 : colorBrand40,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      '운영 중',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: !isOnlyRunning ? colorGrey40 : colorBrand40,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _handleClickAll() {
    ref.read(filterByOperationStatusProvider.notifier).setAll();
  }

  void _handleClickRunning() {
    ref.read(filterByOperationStatusProvider.notifier).setRunning();
  }
}
