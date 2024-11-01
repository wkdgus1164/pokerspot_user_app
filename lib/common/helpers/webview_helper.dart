import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class WebviewHelper {
  static final initialSettings = InAppWebViewSettings(
    javaScriptCanOpenWindowsAutomatically: true,
    useShouldOverrideUrlLoading: true,
    useOnDownloadStart: true,
    supportZoom: false,
    allowsBackForwardNavigationGestures: false,
  );

  static Future<NavigationActionPolicy?> handleWebViewUrlLoading(
    InAppWebViewController controller,
    NavigationAction navigationAction,
  ) async {
    final uri = navigationAction.request.url!;

    if (await _handleAppLink(uri)) {
      return NavigationActionPolicy.CANCEL;
    }
    return NavigationActionPolicy.ALLOW;
  }

  static Future<bool> _handleAppLink(Uri uri) async {
    final uriString = uri.toString();

    final isAndroidNativeIntent =
        uriString.startsWith(RegExp(r'smsto:|tel:|mailto:'));
    final isStartWithIntent = uriString.startsWith('intent://');
    final isKakaoChannel = uriString.startsWith('://pf.kakao.com');

    if (isAndroidNativeIntent && Platform.isAndroid) {
      _launchAndroidUrl(uriString);
      return true;
    }

    if (isStartWithIntent && Platform.isAndroid) {
      _launchAndroidUrl(uriString);
      return true;
    }

    if (isKakaoChannel && Platform.isIOS) {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
        return true;
      }
    }

    return false;
  }

  static Future _launchAndroidUrl(String url) async {
    const channel = MethodChannel("android-native-channel");
    const methodKey = 'getAppUrl';
    final arguments = {'url': url};

    await channel.invokeMethod(methodKey, arguments).then(
      (value) async {
        await launchUrl(Uri.parse(value));
      },
    );
  }
}
