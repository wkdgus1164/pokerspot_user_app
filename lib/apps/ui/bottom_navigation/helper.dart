import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/area_list_page.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/home_page.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/nearby_page.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/main/my_page.dart';

final List<String> _defaultIcons = [
  Assets.bnHomeOff.path,
  Assets.bnNearOff.path,
  Assets.bnLocOff.path,
  Assets.bnMoreOff.path,
];

final List<String> _selectedIcons = [
  Assets.bnHomeOn.path,
  Assets.bnNearOn.path,
  Assets.bnLocOn.path,
  Assets.bnMoreOn.path,
];

final List<String> _labels = [
  '홈',
  '내주변',
  '지역',
  '더보기',
];

class NavigationHelper {
  NavigationHelper._privateConstructor();
  static final NavigationHelper _instance =
      NavigationHelper._privateConstructor();
  factory NavigationHelper() => _instance;

  List<Widget> pages = [
    const HomePage(),
    const NearbyPage(),
    const AreaListPage(),
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
