import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/main/helper.dart';

class MainPage extends StatefulHookConsumerWidget {
  const MainPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        selectedItemColor: colorBrand40,
        unselectedItemColor: colorGrey80,
        items: MainPageHelper().getBottomNavigationItems(),
        onTap: _handleMenuIndexChange,
      ),
      body: MainPageHelper().pages[currentPageIndex],
    );
  }

  void _handleMenuIndexChange(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }
}
