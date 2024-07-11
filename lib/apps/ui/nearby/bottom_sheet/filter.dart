import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/components/button_group.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/components/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/components/filter_by_min_reward.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/components/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/components/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/components/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_game_type.dart';

class NearbySearchFilterSheet extends StatefulHookConsumerWidget {
  const NearbySearchFilterSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NearbySearchFilterSheetState();
}

class _NearbySearchFilterSheetState
    extends ConsumerState<NearbySearchFilterSheet> {
  @override
  Widget build(BuildContext context) {
    final gameType = ref.watch(filterByGameTypeProvider).gameType;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 32,
        children: [
          // 운영 상태
          const FilterByOperationStatusView(),

          // 스타트 시간
          const FilterByOpenTimeView(),

          // 참가비
          const FilterByEntryPriecView(),

          // 게임
          const FilterByGameTypeView(),

          // GTD 최소 상금
          if (gameType == GameType.GTD) ...[
            const FilterByMinRewardView(),
          ],

          // 버튼 그룹
          const FilterButtonGroupView(),
        ],
      ),
    );
  }
}
