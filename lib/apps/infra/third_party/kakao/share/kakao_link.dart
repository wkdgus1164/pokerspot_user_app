import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';
import 'package:pokerspot_user_app/secret/secret.dart';

class KakaoLinkHelper {
  Future<AsyncValue> shareKakaoFeed(KakaoFeedModel feedModel) async {
    final deeplinkUrl = "kakao${Secret.kakaoNativeKey}://kakaolink";
    final feedTemplate = feedModel.buildFeedTemplate(deeplinkUrl);

    return AsyncValue.guard(
      () async {
        bool isAvailable =
            await ShareClient.instance.isKakaoTalkSharingAvailable();

        if (isAvailable) {
          await _launchKakaoTalkWithFeed(feedTemplate);
        } else {
          await _launchBrowserWithFeed(feedTemplate);
        }
      },
    );
  }

  Future _launchKakaoTalkWithFeed(FeedTemplate feedTemplate) async {
    final kakaoClient = ShareClient.instance;
    Uri uri = await kakaoClient.shareDefault(template: feedTemplate);

    return await kakaoClient.launchKakaoTalk(uri);
  }

  Future _launchBrowserWithFeed(FeedTemplate feedTemplate) async {
    Uri uri = await WebSharerClient.instance.makeDefaultUrl(
      template: feedTemplate,
    );

    return await launchBrowserTab(uri, popupOpen: true);
  }
}
