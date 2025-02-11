import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_benefit.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_min_reward.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/store.dart';

class FilterButtonGroupSection extends StatefulHookConsumerWidget {
  const FilterButtonGroupSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<FilterButtonGroupSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: colorGrey90,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: colorGrey95,
            blurRadius: 10,
            offset: Offset(0, -6),
          ),
        ],
        color: Colors.white,
      ),
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
              ref.read(filterByBenefitProvider.notifier).setAll();
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
                if (kReleaseMode) {
                  FirebaseAnalytics.instance.logEvent(
                    name: 'nearby_filter_submit',
                    parameters: {
                      'operation_status': ref
                          .read(filterByOperationStatusProvider)
                          .operationStatus
                          .kr,
                      'open_time_min':
                          ref.read(filterByOpenTimeProvider).minTime,
                      'open_time_max':
                          ref.read(filterByOpenTimeProvider).maxTime,
                      'game_type':
                          ref.read(filterByGameTypeProvider).gameType.kr,
                      'entry_min':
                          ref.read(filterByEntryPriceProvider).minTicket,
                      'entry_max':
                          ref.read(filterByEntryPriceProvider).maxTicket,
                      'gtd_min_reward':
                          ref.read(filterByMinRewardDataProvider).minReward,
                      'benefit_first_game': ref
                          .read(filterByBenefitProvider)
                          .isOnlyFirstGameBenefit,
                      'benefit_new_user': ref
                          .read(filterByBenefitProvider)
                          .isOnlyNewUserBenefit,
                    },
                  );
                }

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
