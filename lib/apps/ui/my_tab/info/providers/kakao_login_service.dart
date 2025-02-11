import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

class KakaoLoginService {
  void login(
    Function(String oAuthToken, String uuid) onSuccess,
    Function(String error) onFailure,
  ) async {
    if (await isKakaoTalkInstalled()) {
      try {
        final oAuthToken = await UserApi.instance.loginWithKakaoTalk();
        User user = await UserApi.instance.me();

        onSuccess(
          oAuthToken.accessToken,
          user.kakaoAccount?.email ?? "",
        );
      } catch (error) {
        if (error is PlatformException && error.code == 'CANCELED') {
          onFailure(error.toString());
          return;
        }
      }
      return;
    }

    try {
      final oAuthToken = await UserApi.instance.loginWithKakaoAccount();
      User user = await UserApi.instance.me();

      onSuccess(
        oAuthToken.accessToken,
        user.kakaoAccount?.email ?? "",
      );
    } catch (error) {
      onFailure(error.toString());
    }
  }
}
