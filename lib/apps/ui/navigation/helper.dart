import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/home_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/main/my_page.dart';

final List<String> _defaultIcons = [
  Assets.bnHomeOff.path,
  Assets.bnSearchOff.path,
  Assets.bnLocOff.path,
  Assets.bnMyOff.path,
];

final List<String> _selectedIcons = [
  Assets.bnHomeOn.path,
  Assets.bnSearchOn.path,
  Assets.bnLocOn.path,
  Assets.bnMyOn.path,
];

final List<String> _labels = [
  '홈',
  '검색',
  '지역',
  '내정보',
];

class NavigationHelper {
  NavigationHelper._privateConstructor();
  static final NavigationHelper _instance =
      NavigationHelper._privateConstructor();
  factory NavigationHelper() => _instance;

  List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const MyPage(),
  ];

  List<BottomNavigationBarItem> getBottomNavigationItems() {
    return _defaultIcons.asMap().entries.map(
      (entry) {
        int index = entry.key;

        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _defaultIcons[index],
            colorFilter: const ColorFilter.mode(colorGrey80, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            _selectedIcons[index],
            colorFilter: const ColorFilter.mode(colorGrey20, BlendMode.srcIn),
          ),
          label: _labels[index],
        );
      },
    ).toList();
  }
}
