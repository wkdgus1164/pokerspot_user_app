import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_participate_fee.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_running_status.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_start_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_tournament_type.dart';

class HomeSearchFilterSheet extends StatefulHookConsumerWidget {
  const HomeSearchFilterSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeSearchFilterSheetState();
}

class _HomeSearchFilterSheetState extends ConsumerState<HomeSearchFilterSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Wrap(
        runSpacing: 32,
        children: [
          // 운영 상태
          FilterByRunningStatusView(),

          // 스타트 시간
          FilterByStartTimeView(),

          // 토너먼트
          FilterByTournamentTypeView(),

          // 참가비
          FilterByParticipateFeeView(),
        ],
      ),
    );
  }
}
