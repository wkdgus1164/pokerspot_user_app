import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailFab extends StatelessWidget {
  const StoreDetailFab({
    super.key,
    required this.url,
    required this.name,
  });

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 120),
      child: FloatingActionButton.extended(
        backgroundColor: const Color(0xffffdf00),
        onPressed: () {
          if (kReleaseMode) {
            FirebaseAnalytics.instance.logEvent(
              name: 'store_detail_open_chat',
              parameters: {
                'store_name': name,
              },
            );
          }

          launchUrl(Uri.parse(url));
        },
        icon: SvgPicture.asset(
          Assets.kakao.path,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
        label: Text(
          '오픈채팅방',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
