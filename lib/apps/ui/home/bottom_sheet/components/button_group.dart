import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_running_status.dart';

class FilterByRunningStatusView extends StatefulHookConsumerWidget {
  const FilterByRunningStatusView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeBottomSheetRunningStatusButtonGroupState();
}

class _HomeBottomSheetRunningStatusButtonGroupState
    extends ConsumerState<FilterByRunningStatusView> {
  @override
  Widget build(BuildContext context) {
    final runningStatusFilter = ref.watch(filterRunningStatusProvider);

    return Row(
      children: [
        Expanded(
          child: Ink(
            child: InkWell(
              onTap: () {
                ref.read(filterRunningStatusProvider.notifier).setAll();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  border: Border.fromBorderSide(
                    BorderSide(color: colorGrey80),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Text(
                  '전체',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: runningStatusFilter.runningStatus ==
                                RunningStatus.running
                            ? colorGrey40
                            : colorBrand40,
                      ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Ink(
            color: colorBrand90,
            child: InkWell(
              onTap: () {
                ref.read(filterRunningStatusProvider.notifier).setRunning();
              },
              splashColor: colorBrand80,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  border: Border.fromBorderSide(
                    BorderSide(color: colorBrand40),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Text(
                  '운영 중',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: colorBrand40,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
