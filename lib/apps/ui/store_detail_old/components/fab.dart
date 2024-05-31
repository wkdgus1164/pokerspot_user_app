import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailFab extends StatelessWidget {
  const StoreDetailFab({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 86),
      child: FloatingActionButton.extended(
        backgroundColor: const Color(0xffffdf00),
        onPressed: () => launchUrl(Uri.parse(url)),
        icon: SvgPicture.asset(
          Assets.kakao.path,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.85),
            BlendMode.srcIn,
          ),
        ),
        label: Text(
          '오픈채팅방',
          style: TextStyle(
            color: Colors.black.withOpacity(0.85),
          ),
        ),
      ),
    );
  }
}
