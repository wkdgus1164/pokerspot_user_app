import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/navigation/helper.dart';

class NavigationPage extends StatefulHookConsumerWidget {
  const NavigationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavigationPageState();
}

class _NavigationPageState extends ConsumerState<NavigationPage> {
  final PageController _pageViewController = PageController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        items: NavigationHelper().getBottomNavigationItems(),
        onTap: _handleMenuIndexChange,
      ),
      body: PageView(
        controller: _pageViewController,
        physics: const BouncingScrollPhysics(),
        allowImplicitScrolling: true,
        onPageChanged: _handleMenuIndexChange,
        children: NavigationHelper().pages,
      ),
    );
  }

  void _handleMenuIndexChange(int index) {
    _pageViewController.jumpToPage(index);
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceInOut,
    );
    setState(() => currentPageIndex = index);
  }
}
