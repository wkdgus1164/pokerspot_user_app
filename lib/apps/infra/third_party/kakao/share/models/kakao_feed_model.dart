import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';

part 'kakao_feed_model.freezed.dart';

@freezed
class KakaoFeedModel with _$KakaoFeedModel {
  factory KakaoFeedModel({
    required String id,
    required String? title,
    required String? description,
    required String thumbnail,
  }) = _KakaoFeedModel;

  KakaoFeedModel._();

  Map<String, String> buildQueryParams() {
    return {"path": "/store_detail/$id"};
  }

  FeedTemplate buildFeedTemplate(String url) {
    final params = buildQueryParams();

    return FeedTemplate(
      content: Content(
        title: title,
        description: description,
        imageUrl: Uri.parse(thumbnail),
        link: Link(
          mobileWebUrl: Uri.parse('https://m.naver.com'),
          androidExecutionParams: params,
          iosExecutionParams: params,
        ),
      ),
      buttons: [
        Button(
          title: '자세히 보기',
          link: Link(
            mobileWebUrl: Uri.parse('https://m.naver.com'),
            androidExecutionParams: params,
            iosExecutionParams: params,
          ),
        ),
      ],
    );
  }
}
