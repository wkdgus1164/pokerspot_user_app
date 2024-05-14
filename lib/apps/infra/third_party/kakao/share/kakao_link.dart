import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';

class KakaoLinkHelper {
  KakaoLinkHelper._privateConstructor();

  static final KakaoLinkHelper _instance =
      KakaoLinkHelper._privateConstructor();

  factory KakaoLinkHelper() => _instance;

  Future<AsyncValue> shareKakaoFeed(KakaoFeedModel feedModel) async {
    final deeplinkUrl = "kakao${KakaoSdk.appKey}://kakaolink";
    final feedTemplate = feedModel.buildFeedTemplate(deeplinkUrl);

    return AsyncValue.guard(
      () async {
        bool isAvailable =
            await ShareClient.instance.isKakaoTalkSharingAvailable();

        if (isAvailable) {
          try {
            Uri uri = await ShareClient.instance.shareDefault(
              template: feedTemplate,
            );
            await ShareClient.instance.launchKakaoTalk(uri);
          } catch (e) {
            Logger().e(e);
          }
        } else {
          Uri uri = await WebSharerClient.instance.makeDefaultUrl(
            template: feedTemplate,
          );

          return await launchBrowserTab(uri, popupOpen: true);
        }
      },
    );
  }
}
