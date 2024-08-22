import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/kakao_link.dart';
import 'package:pokerspot_user_app/apps/ui/navigation/helper.dart';
import 'package:pokerspot_user_app/apps/ui/navigation/providers/page_index.dart';

class NavigationPage extends StatefulHookConsumerWidget {
  const NavigationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavigationPageState();
}

class _NavigationPageState extends ConsumerState<NavigationPage> {
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
      switch (index) {
        case 0:
          FirebaseAnalytics.instance.logEvent(
            name: 'home_tab',
            parameters: {'tab_name': 'home'},
          );
          break;
        case 1:
          FirebaseAnalytics.instance.logEvent(
            name: 'home_tab',
            parameters: {'tab_name': 'nearby'},
          );
          break;
        case 2:
          FirebaseAnalytics.instance.logEvent(
            name: 'home_tab',
            parameters: {'tab_name': 'area'},
          );
          break;
        case 3:
          FirebaseAnalytics.instance.logEvent(
            name: 'home_tab',
            parameters: {'tab_name': 'my'},
          );
          break;
      }
    }
  }
}
