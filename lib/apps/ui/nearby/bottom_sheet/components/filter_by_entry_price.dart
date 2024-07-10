import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_entry_price.dart';

class FilterByEntryPriecView extends StatefulHookConsumerWidget {
  const FilterByEntryPriecView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByEntryPriceState();
}

class _FilterByEntryPriceState extends ConsumerState<FilterByEntryPriecView> {
  @override
  Widget build(BuildContext context) {
    final entryPriceFilter = ref.watch(filterByEntryPriceProvider);
    final int minTicket = entryPriceFilter.minTicket;
    final int maxTicket = entryPriceFilter.maxTicket;

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
          onChanged: (RangeValues newValues) {
            ref
                .watch(filterByEntryPriceProvider.notifier)
                .setMinTicket(int.parse(newValues.start.ceil().toString()));
            ref
                .watch(filterByEntryPriceProvider.notifier)
                .setMaxTicket(int.parse(newValues.end.ceil().toString()));
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
