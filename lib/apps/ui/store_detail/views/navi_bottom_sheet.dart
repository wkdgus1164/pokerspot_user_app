import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/navi/kakao_navi.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailNaviBottomSheet extends StatelessWidget {
  const StoreDetailNaviBottomSheet({
    super.key,
    required this.name,
    required this.address,
    required this.x,
    required this.y,
  });

  final String name;
  final String address;
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          leading: SvgPicture.asset(
            Assets.kakaonavi.path,
            width: 40,
            height: 40,
          ),
          title: const Text('자동차 길찾기'),
          subtitle: const Text('카카오내비로 자동차 길찾기'),
          onTap: () {
            KakaoNaviHelper().launchKakaoNavi(name, x, y);
          },
        ),
        const Divider(color: colorGrey90),
        ListTile(
          leading: SvgPicture.asset(
            Assets.kakaonavi.path,
            width: 40,
            height: 40,
          ),
          title: const Text('경로 탐색하기'),
          subtitle: const Text('카카오내비로 경로 탐색하기'),
          onTap: () {
            KakaoNaviHelper().shareKakaoNavi(name, x, y);
          },
        ),
        const Divider(color: colorGrey90),
        ListTile(
          leading: Image.asset(
            Assets.kakaomap.path,
            width: 40,
            height: 40,
          ),
          title: const Text('위치 찾아보기'),
          subtitle: const Text('카카오맵으로 위치 찾아보기'),
          onTap: () {
            KakaoNaviHelper().searchKakaoMap(address);
          },
        ),
        const Divider(color: colorGrey90),
        ListTile(
          leading: SvgPicture.asset(
            Assets.appleMaps.path,
            width: 40,
            height: 40,
          ),
          title: const Text('위치 찾아보기'),
          subtitle: const Text('애플 지도로 위치 찾아보기'),
          onTap: () async {
            final urlAppleMaps = 'https://maps.apple.com/?q=$y,$x';

            if (Platform.isIOS && await canLaunchUrl(Uri.parse(urlAppleMaps))) {
              await launchUrl(Uri.parse(urlAppleMaps));
            } else {
              throw 'Could not launch $urlAppleMaps';
            }
          },
        ),
      ],
    );
  }
}
