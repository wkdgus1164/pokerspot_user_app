import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/home_page.dart';
import 'package:pokerspot_user_app/apps/ui/my/my_page.dart';

final List<String> _defaultIcons = [
  Assets.bnHomeOff.path,
  Assets.bnNearOff.path,
  Assets.bnLocOff.path,
  Assets.bnFavOff.path,
  Assets.bnMyOff.path,
];

final List<String> _selectedIcons = [
  Assets.bnHomeOn.path,
  Assets.bnNearOn.path,
  Assets.bnLocOn.path,
  Assets.bnFavOn.path,
  Assets.bnMyOn.path,
];

final List<String> _labels = [
  '홈',
  '내주변',
  '지역',
  '찜',
  '내정보',
];

class MainPageHelper {
  MainPageHelper._privateConstructor();
  static final MainPageHelper _instance = MainPageHelper._privateConstructor();
  factory MainPageHelper() => _instance;

  List<Widget> pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
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
