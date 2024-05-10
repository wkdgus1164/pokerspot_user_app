import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_participate_fee.dart';

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
    final double minTicket = participageFeeFilter.minTicket;
    final double maxTicket = participageFeeFilter.maxTicket;

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
          values: RangeValues(minTicket, maxTicket),
          min: 1,
          max: 30,
          divisions: 30,
          onChanged: (RangeValues newValues) {
            ref
                .watch(filterByParticipateFeeProvider.notifier)
                .setMinTicket(newValues.start);
            ref
                .watch(filterByParticipateFeeProvider.notifier)
                .setMaxTicket(newValues.end);
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
