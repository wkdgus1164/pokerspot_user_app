import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/third_party/kakao/share/models/kakao_feed_model.dart';

class KakaoLinkHelper {
  KakaoLinkHelper._privateConstructor();

  static final KakaoLinkHelper _instance =
      KakaoLinkHelper._privateConstructor();

  factory KakaoLinkHelper() => _instance;

  void listenKakaoLink() async {
    await _routeIfInitialDataExists();

    /// 카카오 딥링크 수신시 핸들링 [Foreground, Background]
    kakaoSchemeStream.listen(
      (url) {
        final path = url?.toUri().parsePath();
        if (path == null) return;

        _routeOrNothing(path);
      },
      onError: (e) {
        Logger().e(e);
      },
    );
  }

  /// 앱 종료 상태에서 진입시 초기 Url 값이 있다면 라우팅
  Future _routeIfInitialDataExists() async {
    final initialUrl = await receiveKakaoScheme();
    final path = initialUrl?.toUri().parsePath();
    if (path == null) return;

    _routeOrNothing(path);
  }

  void _routeOrNothing(String path) {
    final context = rootNavKey.currentContext;
    if (context == null) return;

    _lazyFunc(() => context.push(path));
  }

  Future<AsyncValue> shareKakaoFeed(KakaoFeedModel feedModel) async {
    final deeplinkUrl = "kakao${KakaoSdk.appKey}://kakaolink";
    final feedTemplate = feedModel.buildFeedTemplate(
      url: deeplinkUrl,
      id: feedModel.id,
    );

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

extension _UriExtensions on Uri {
  String? parsePath() {
    return queryParameters["path"];
  }
}

extension _StringExtensions on String {
  Uri toUri() {
    final decoded = Uri.decodeFull(this);
    return Uri.parse(decoded);
  }
}

void _lazyFunc(Function() callback) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) {
      Timer(
        const Duration(milliseconds: 500),
        () {
          callback();
        },
      );
    },
  );
}
