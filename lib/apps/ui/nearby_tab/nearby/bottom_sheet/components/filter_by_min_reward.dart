import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/slider.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/bottom_sheet/providers/filter_by_min_reward.dart';

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

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '최소 상금',
              style: textTheme.titleSmall!.copyWith(
                color: colorGrey40,
              ),
            ),
            Text(
              '${minReward.ceil()}',
              style: textTheme.titleSmall!.copyWith(
                color: colorBrand40,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SliderTheme(
          data: sliderThemeData,
          child: Slider(
            value:
                ref.watch(filterByMinRewardDataProvider).minReward.toDouble(),
            min: 50,
            max: 5000,
            onChanged: (value) {
              final min = int.parse((value / 50).ceil().toString()) * 50;
              ref
                  .read(filterByMinRewardDataProvider.notifier)
                  .setMinReward(min);
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '50',
              style: textTheme.labelMedium!.copyWith(
                color: colorGrey60,
              ),
            ),
            Text(
              '5000',
              style: textTheme.labelMedium!.copyWith(
                color: colorGrey60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
