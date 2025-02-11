import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/bottom_sheet/providers/filter_by_operation_status.dart';

class FilterByOperationStatusView extends StatefulHookConsumerWidget {
  const FilterByOperationStatusView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<FilterByOperationStatusView> {
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
          style: textTheme.titleSmall!.copyWith(color: colorGrey40),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
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
                    color: isOnlyRunning ? Colors.transparent : colorBrand90,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '전체',
                    style: textTheme.labelLarge!.copyWith(
                      color: isOnlyRunning ? colorGrey40 : colorBrand40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _handleClickRunning,
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
                    color: !isOnlyRunning ? Colors.transparent : colorBrand90,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '운영 중',
                    style: textTheme.labelLarge!.copyWith(
                      color: !isOnlyRunning ? colorGrey40 : colorBrand40,
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
