import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_min_reward.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/store.dart';

class FilterButtonGroupView extends StatefulHookConsumerWidget {
  const FilterButtonGroupView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterButtonGroupViewState();
}

class _FilterButtonGroupViewState extends ConsumerState<FilterButtonGroupView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          OutlinedButton.icon(
            onPressed: () {
              ref.read(filterByOperationStatusProvider.notifier).setAll();
              ref.read(filterByOpenTimeProvider.notifier).setMinTime(0);
              ref.read(filterByOpenTimeProvider.notifier).setMaxTime(23);
              ref.read(filterByGameTypeProvider.notifier).setAll();
              ref.read(filterByEntryPriceProvider.notifier).setMinTicket(1);
              ref.read(filterByEntryPriceProvider.notifier).setMaxTicket(30);
              ref.read(filterByMinRewardDataProvider.notifier).setMinReward(50);
              ref.invalidate(storesItemsProvider);
              context.pop();
            },
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('초기화'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: FilledButton.icon(
              onPressed: () {
                FirebaseAnalytics.instance.logEvent(
                  name: 'NEARBY_FILTER_SUBMIT',
                  parameters: {
                    '운영 상태': ref
                        .read(filterByOperationStatusProvider)
                        .operationStatus,
                    '스타트 시간 최소': ref.read(filterByOpenTimeProvider).minTime,
                    '스타트 시간 최대': ref.read(filterByOpenTimeProvider).maxTime,
                    '토너먼트 종류': ref.read(filterByGameTypeProvider).gameType,
                    '참가비 최소': ref.read(filterByEntryPriceProvider).minTicket,
                    '참가비 최대': ref.read(filterByEntryPriceProvider).maxTicket,
                    'GTD 최소 상금':
                        ref.read(filterByMinRewardDataProvider).minReward,
                  },
                );

                ref.invalidate(storesItemsProvider);
                context.pop();
              },
              icon: const Icon(Icons.search_rounded),
              label: const Text('검색하기'),
            ),
          ),
        ],
      ),
    );
  }
}
