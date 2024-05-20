import 'package:kakao_flutter_sdk_navi/kakao_flutter_sdk_navi.dart';
import 'package:logger/web.dart';

class KakaoNaviHelper {
  KakaoNaviHelper._privateConstructor();

  static final KakaoNaviHelper _instance =
      KakaoNaviHelper._privateConstructor();

  factory KakaoNaviHelper() => _instance;

  Future launchKakaoNavi(
    String name,
    double x,
    double y,
  ) async {
    bool result = await NaviApi.instance.isKakaoNaviInstalled();

    if (result) {
      Logger().i('Kakao Navi is installed');
      // 카카오내비 앱으로 길 안내하기, WGS84 좌표계 사용
      await NaviApi.instance.navigate(
        destination: Location(
          name: name.toString(),
          x: x.toString(),
          y: y.toString(),
        ),
        option: NaviOption(coordType: CoordType.wgs84),
      );
    } else {
      Logger().i('Kakao Navi is not installed');
      launchBrowserTab(Uri.parse(NaviApi.webNaviInstall));
    }
  }

  Future shareKakaoNavi(
    String name,
    double x,
    double y,
  ) async {
    bool result = await NaviApi.instance.isKakaoNaviInstalled();

    if (result) {
      Logger().i('Kakao Navi is installed');
      // 카카오내비 앱으로 길 안내하기, WGS84 좌표계 사용
      await NaviApi.instance.shareDestination(
        destination: Location(
          name: name.toString(),
          x: x.toString(),
          y: y.toString(),
        ),
        option: NaviOption(coordType: CoordType.wgs84),
      );
    } else {
      Logger().i('Kakao Navi is not installed');
      launchBrowserTab(Uri.parse(NaviApi.webNaviInstall));
    }
  }
}
