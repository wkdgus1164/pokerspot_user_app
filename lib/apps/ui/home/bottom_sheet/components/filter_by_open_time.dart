import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_open_time.dart';

class FilterByOpenTimeView extends StatefulHookConsumerWidget {
  const FilterByOpenTimeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByOpenTimeViewState();
}

class _FilterByOpenTimeViewState extends ConsumerState<FilterByOpenTimeView> {
  @override
  Widget build(BuildContext context) {
    final openTimeFilter = ref.watch(filterByOpenTimeProvider);
    final int minTime = openTimeFilter.minTime;
    final int maxTime = openTimeFilter.maxTime;

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
              '${minTime.ceil()}시 ~ ${maxTime.ceil()}시',
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
                .watch(filterByOpenTimeProvider.notifier)
                .setMinTime(int.parse(newValues.start.ceil().toString()));
            ref
                .watch(filterByOpenTimeProvider.notifier)
                .setMaxTime(int.parse(newValues.end.ceil().toString()));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '0시',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: colorGrey60,
                    ),
              ),
              Text(
                '23시',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: colorGrey60,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
