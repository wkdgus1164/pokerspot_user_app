import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
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
          Fluttertoast.showToast(msg: '공유 가능');
          await _launchKakaoTalkWithFeed(feedTemplate);
        } else {
          Fluttertoast.showToast(msg: '공유 불가');
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