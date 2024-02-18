import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/home_page.dart';

enum _Menu {
  home(Icons.home_rounded, "홈"),
  home1(Icons.person, "홈"),
  home2(Icons.home_rounded, "홈"),
  ;

  const _Menu(this.icon, this.label);
  final IconData icon;
  final String label;
}

class MainPageHelper {
  MainPageHelper._privateConstructor();
  static final MainPageHelper _instance = MainPageHelper._privateConstructor();
  factory MainPageHelper() => _instance;

  List<Widget> pages = [
    const HomePage(),
    Container(),
    Container(),
  ];

  List<BottomNavigationBarItem> getBottomNavigationItems() {
    return _Menu.values.map(
      (it) {
        return BottomNavigationBarItem(
          icon: Icon(it.icon, color: colorGrey80),
          activeIcon: Icon(it.icon, color: colorBrand40),
          label: it.label,
        );
      },
    ).toList();
  }
}
