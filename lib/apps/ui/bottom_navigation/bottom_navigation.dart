import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/ui/bottom_navigation/helper.dart';
import 'package:pokerspot_user_app/apps/ui/bottom_navigation/providers/page_index.dart';

class BottomNavigation extends StatefulHookConsumerWidget {
  const BottomNavigation({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    KakaoLinkHelper().listenKakaoLink();
    final int index = ref.watch(bottomNavigationPageIndexDataProvider).index;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: NavigationHelper().getBottomNavigationItems(),
        onTap: _handleMenuIndexChange,
      ),
      body: NavigationHelper().pages[index],
    );
  }

  void _handleMenuIndexChange(int index) {
    ref
        .read(bottomNavigationPageIndexDataProvider.notifier)
        .setPageIndex(index);

    if (kReleaseMode) {
      final tabNames = ['home', 'nearby', 'area', 'my'];
      FirebaseAnalytics.instance.logEvent(
        name: 'bottom_navigation_bar',
        parameters: {'tab_name': tabNames[index]},
      );
    }
  }
}
