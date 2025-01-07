import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailHeader extends StatelessWidget {
  const StoreDetailHeader({
    super.key,
    required this.type,
    required this.title,
    required this.distance,
    required this.runningTime,
    required this.updatedAt,
    required this.openChatUrl,
    required this.isViewKakaoChat,
  });

  final String type;
  final String title;
  final double distance;
  final String runningTime;
  final DateTime updatedAt;
  final String? openChatUrl;
  final bool isViewKakaoChat;

  @override
  Widget build(BuildContext context) {
    Logger().d("openChatUrl: $openChatUrl, isViewKakaoChat: $isViewKakaoChat");
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    runningTime,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: colorGrey50,
                        ),
                  ),
                  Text(
                    '${Utils().getFormattedTimeAgo(dateTime: updatedAt)} 최종 업데이트',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: colorGrey50,
                        ),
                  ),
                ],
              ),
              if (isViewKakaoChat && openChatUrl != null && openChatUrl != "")
                GestureDetector(
                  onTap: () {
                    if (openChatUrl != null && openChatUrl != "") {
                      launchUrl(Uri.parse(openChatUrl!));
                    }
                    if (kReleaseMode) {
                      FirebaseAnalytics.instance.logEvent(
                        name: 'store_detail_open_chat',
                        parameters: {
                          'store_name': title,
                        },
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffffdf00),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.kakao.path,
                          width: 20,
                          height: 20,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.85),
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '오픈채팅방',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.85),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
