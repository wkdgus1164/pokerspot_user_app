import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/button_group_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/filter_by_benefit_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/filter_by_entry_price_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/filter_by_game_type_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/filter_by_min_reward_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/filter_by_open_time_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/sections/filter_by_operation_status_section.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_game_type.dart';

class NearbyFilterPage extends ConsumerStatefulWidget {
  const NearbyFilterPage({super.key});

  @override
  ConsumerState<NearbyFilterPage> createState() => _State();
}

class _State extends ConsumerState<NearbyFilterPage> {
  @override
  Widget build(BuildContext context) {
    final gameType = ref.watch(filterByGameTypeProvider).gameType;

    return Scaffold(
      appBar: AppBar(title: const Text('상세 검색')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // 운영 상태
                    FilterByOperationStatusSection(),
                    const SizedBox(height: 60),

                    // 스타트 시간
                    FilterByOpenTimeSection(),
                    const SizedBox(height: 60),

                    // 참가비
                    FilterByEntryPriecSection(),
                    const SizedBox(height: 60),

                    // 게임
                    FilterByGameTypeSection(),
                    const SizedBox(height: 60),

                    // GTD 최소 상금
                    if (gameType == GameType.GTD) ...[
                      FilterByMinRewardSection(),
                      const SizedBox(height: 60),
                    ],

                    // 혜택
                    FilterByBenefitSection(),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
            const FilterButtonGroupSection(),
          ],
        ),
      ),
    );
  }
}
