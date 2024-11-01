import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/common/helpers/webview_helper.dart';
import 'package:pokerspot_user_app/secret/secret.dart';

class PolicyPage extends StatefulHookConsumerWidget {
  const PolicyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PolicyPageState();
}

class _PolicyPageState extends ConsumerState<PolicyPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('약관 및 정책'),
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri.uri(Uri.parse(Secret.privacyPolicy.key)),
          ),
          initialSettings: WebviewHelper.initialSettings,
          onConsoleMessage: _handleConsoleMessage,
          shouldOverrideUrlLoading: WebviewHelper.handleWebViewUrlLoading,
        ),
      ),
    );
  }

  void _handleConsoleMessage(
    InAppWebViewController controller,
    ConsoleMessage consoleMessage,
  ) {
    Logger().d(consoleMessage);
  }
}
