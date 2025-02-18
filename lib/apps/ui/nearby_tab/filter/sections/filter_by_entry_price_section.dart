import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_entry_price.dart';

class FilterByEntryPriecSection extends StatefulHookConsumerWidget {
  const FilterByEntryPriecSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<FilterByEntryPriecSection> {
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
            Text('참가비', style: textTheme.titleMedium),
            Text(
              '${minTicket.ceil()} Ticket ~ ${maxTicket.ceil()} Ticket',
              style: textTheme.titleSmall!.copyWith(
                color: colorBrand40,
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
              style: textTheme.labelMedium!.copyWith(
                color: colorGrey60,
              ),
            ),
            Text(
              '30 Ticket',
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
