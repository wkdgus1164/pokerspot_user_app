import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/button_group.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_entry_price.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_open_time.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/filter_by_game_type.dart';

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
          FilterByOperationStatusView(),

          // 스타트 시간
          FilterByOpenTimeView(),

          // 게임
          FilterByGameTypeView(),

          // 참가비
          FilterByEntryPriecView(),

          // 버튼 그룹
          FilterButtonGroupView(),
        ],
      ),
    );
  }
}
