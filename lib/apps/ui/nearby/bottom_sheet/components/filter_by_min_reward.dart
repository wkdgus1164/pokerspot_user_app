import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_min_reward.dart';

class FilterByMinRewardView extends StatefulHookConsumerWidget {
  const FilterByMinRewardView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByMinRewardState();
}

class _FilterByMinRewardState extends ConsumerState<FilterByMinRewardView> {
  @override
  Widget build(BuildContext context) {
    final minRewardFilter = ref.watch(filterByMinRewardDataProvider);
    final int minReward = minRewardFilter.minReward;
    final int maxReward = minRewardFilter.maxReward;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '최소 상금',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: colorGrey40,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Text(
              '${minReward.ceil()} ~ ${maxReward.ceil()}',
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
            double.parse(minReward.toString()),
            double.parse(maxReward.toString()),
          ),
          min: 50,
          max: 5000,
          onChanged: (RangeValues newValues) {
            final min =
                int.parse((newValues.start.ceil() / 50).ceil().toString()) * 50;
            final max =
                int.parse((newValues.end.ceil() / 50).ceil().toString()) * 50;

            ref.watch(filterByMinRewardDataProvider.notifier).setMinReward(min);
            ref.watch(filterByMinRewardDataProvider.notifier).setMaxReward(max);
          },
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '50',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            Text(
              '5000',
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
