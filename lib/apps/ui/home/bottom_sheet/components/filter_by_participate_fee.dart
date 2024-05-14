import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_participate_fee.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/store.dart';

class FilterByParticipateFeeView extends StatefulHookConsumerWidget {
  const FilterByParticipateFeeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByParticipateFeeState();
}

class _FilterByParticipateFeeState
    extends ConsumerState<FilterByParticipateFeeView> {
  @override
  Widget build(BuildContext context) {
    final participageFeeFilter = ref.watch(filterByParticipateFeeProvider);
    final int minTicket = participageFeeFilter.minTicket;
    final int maxTicket = participageFeeFilter.maxTicket;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '참가비',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: colorGrey40,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            Text(
              '${minTicket.ceil()} Ticket ~ ${maxTicket.ceil()} Ticket',
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
            double.parse(minTicket.toString()),
            double.parse(maxTicket.toString()),
          ),
          min: 1,
          max: 30,
          divisions: 30,
          onChanged: (RangeValues newValues) {
            ref
                .watch(filterByParticipateFeeProvider.notifier)
                .setMinTicket(int.parse(newValues.start.ceil().toString()));
            ref
                .watch(filterByParticipateFeeProvider.notifier)
                .setMaxTicket(int.parse(newValues.end.ceil().toString()));
            ref.invalidate(storesItemsProvider);
          },
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '1 Ticket',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            Text(
              '30 Ticket',
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
