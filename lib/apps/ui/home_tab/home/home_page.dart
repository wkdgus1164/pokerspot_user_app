import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/sections/nearby_view_section.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/sections/recent_view_section.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/sections/banner_seciton.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/components/cta_button.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/sections/notice_section.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/sections/tournament_selection_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          Assets.logoTextMinifiedColor.path,
          width: 90,
        ),
        actions: [
          IconButton(
            onPressed: () => context.push(CustomRouter.search.path),
            icon: SvgPicture.asset(Assets.searchOn.path),
          ),
        ],
      ),
      body: ListView(
        children: [
          // 메인 배너
          const HomeBannerSection(),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // 공지사항
                HomeNoticeSection(),
                SizedBox(height: 16),

                // 토너 선택
                HomeTournamentSelectSection(),
                SizedBox(height: 16),

                // CTA 버튼
                HomeCTAButtonView(),
              ],
            ),
          ),

          const SizedBox(height: 8),
          const Divider(height: 10, thickness: 10),

          // 최근 본 펍
          const HomeRecentViewStoresSection(),

          const SizedBox(height: 8),
          const Divider(height: 10, thickness: 10),

          // 내 주변 추천 펍
          const HomeNearbyStoresSection(),
        ],
      ),
    );
  }
}
