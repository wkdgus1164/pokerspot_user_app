import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_start_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/store.dart';

class FilterByStartTimeView extends StatefulHookConsumerWidget {
  const FilterByStartTimeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByStartTimeViewState();
}

class _FilterByStartTimeViewState extends ConsumerState<FilterByStartTimeView> {
  @override
  Widget build(BuildContext context) {
    final startTimeFilter = ref.watch(filterByStartTimeProvider);
    final int minTime = startTimeFilter.minTime;
    final int maxTime = startTimeFilter.maxTime;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '스티트 시간',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: colorGrey40,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Text(
              '${minTime.ceil()}:00 ~ ${maxTime.ceil()}:00',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: colorBrand40,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        RangeSlider(
          values: RangeValues(
            double.parse(minTime.toString()),
            double.parse(maxTime.toString()),
          ),
          min: 0,
          max: 23,
          divisions: 24,
          onChanged: (RangeValues newValues) {
            Logger().d(newValues);
            ref
                .watch(filterByStartTimeProvider.notifier)
                .setMinTime(int.parse(newValues.start.ceil().toString()));
            ref
                .watch(filterByStartTimeProvider.notifier)
                .setMaxTime(int.parse(newValues.end.ceil().toString()));
            ref.invalidate(storesItemsProvider);
          },
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '00:00',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            Text(
              '23:00',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: colorGrey60,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
