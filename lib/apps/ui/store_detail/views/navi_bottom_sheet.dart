import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/navi/kakao_navi.dart';

class StoreDetailNaviBottomSheet extends StatelessWidget {
  const StoreDetailNaviBottomSheet({
    super.key,
    required this.name,
    required this.x,
    required this.y,
  });

  final String name;
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          leading: SvgPicture.asset(Assets.kakaonavi.path),
          title: const Text('자동차 길찾기'),
          subtitle: const Text('카카오내비로 자동차 길찾기'),
          onTap: () {
            KakaoNaviHelper().launchKakaoNavi(name, x, y);
          },
        ),
        const Divider(),
        ListTile(
          leading: SvgPicture.asset(Assets.kakaonavi.path),
          title: const Text('경로 탐색하기'),
          subtitle: const Text('카카오내비로 경로 탐색하기'),
          onTap: () {
            KakaoNaviHelper().shareKakaoNavi(name, x, y);
          },
        ),
      ],
    );
  }
}
