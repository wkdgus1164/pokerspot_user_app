import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/filter.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_game_type.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/bottom_sheet/providers/filter_by_operation_status.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/views/filter_vac.dart';

class NearbyFilterView extends StatefulHookConsumerWidget {
  const NearbyFilterView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NearbyFilterViewState();
}

class _NearbyFilterViewState extends ConsumerState<NearbyFilterView> {
  @override
  Widget build(BuildContext context) {
    final OperationStatus operationStatus =
        ref.watch(filterByOperationStatusProvider).operationStatus;
    final GameType gameType = ref.watch(filterByGameTypeProvider).gameType;

    return NearbyFilterVac(
      operationStatus: operationStatus,
      gameType: gameType,
      handleOpenOnlyFilterClick: _handleOpenOnlyFilterClick,
      handleDailyOnlyFilterClick: _handleDailyOnlyFilterClick,
      handleGTDOnlyFilterClick: _handleGTDOnlyFilterClick,
      handleMoreFilterClick: _handleMoreFilterClick,
    );
  }

  // 운영 중만 보기 필터 클릭
  void _handleOpenOnlyFilterClick(bool value) {
    if (value) {
      ref.read(filterByOperationStatusProvider.notifier).setRunning();
      ref.invalidate(storesItemsProvider);

      if (kReleaseMode) {
        FirebaseAnalytics.instance.logEvent(
          name: 'nearby_filter_operation_status',
        );
      }
    } else {
      ref.read(filterByOperationStatusProvider.notifier).setAll();
      ref.invalidate(storesItemsProvider);
    }
  }

  // 데일리만 보기 필터 클릭
  void _handleDailyOnlyFilterClick(bool value) {
    if (value) {
      ref.read(filterByGameTypeProvider.notifier).setDaily();
      ref.invalidate(storesItemsProvider);

      if (kReleaseMode) {
        FirebaseAnalytics.instance.logEvent(
          name: 'nearby_filter_daily',
        );
      }
    } else {
      ref.read(filterByGameTypeProvider.notifier).setAll();
      ref.invalidate(storesItemsProvider);
    }
  }

  // GTD만 보기 필터 클릭
  void _handleGTDOnlyFilterClick(bool value) {
    if (value) {
      ref.read(filterByGameTypeProvider.notifier).setGTD();
      ref.invalidate(storesItemsProvider);

      if (kReleaseMode) {
        FirebaseAnalytics.instance.logEvent(
          name: 'nearby_filter_gtd',
        );
      }
    } else {
      ref.read(filterByGameTypeProvider.notifier).setAll();
      ref.invalidate(storesItemsProvider);
    }
  }

  // 더보기 필터 클릭
  void _handleMoreFilterClick() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const NearbySearchFilterSheet();
      },
    );

    if (kReleaseMode) {
      FirebaseAnalytics.instance.logEvent(
        name: 'nearby_filter_more',
      );
    }
  }
}
