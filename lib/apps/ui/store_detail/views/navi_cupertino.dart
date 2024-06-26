import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/navi/kakao_navi.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailCupertinoActionSheet extends StatelessWidget {
  const StoreDetailCupertinoActionSheet({
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
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            KakaoNaviHelper().launchKakaoNavi(name, x, y);
          },
          child: const Text('카카오내비로 자동차 길찾기'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            KakaoNaviHelper().shareKakaoNavi(name, x, y);
          },
          child: const Text('카카오내비로 경로 탐색하기'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            KakaoNaviHelper().searchKakaoMap(address);
          },
          child: const Text('카카오맵으로 위치 찾아보기'),
        ),
        CupertinoActionSheetAction(
          onPressed: () async {
            final urlAppleMaps = Uri.parse('https://maps.apple.com/?q=$y,$x');

            if (await canLaunchUrl(urlAppleMaps)) {
              await launchUrl(urlAppleMaps);
            } else {
              Fluttertoast.showToast(msg: '애플 지도 앱을 설치 후 다시 시도해 주세요.');
              Logger().e('Could not launch $urlAppleMaps');
            }
          },
          child: const Text('애플 지도로 위치 찾아보기'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('취소'),
      ),
    );
  }
}
