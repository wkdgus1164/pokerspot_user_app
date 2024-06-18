import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/notice_view.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/banner_view.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/nearby_view.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/selection_view.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/views/location_vac.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
            onPressed: () {
              context.push(CustomRouter.search.path);
            },
            icon: SvgPicture.asset(
              Assets.searchOn.path,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 주소
            const NearbyLocationView(),

            // 메인 배너
            const HomeBannerView(),

            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                children: [
                  // 공지사항
                  HomeNoticeView(),
                  SizedBox(height: 16),

                  // 토너 선택
                  HomeSelectionView(),
                ],
              ),
            ),

            // 내 주변 추천 펍
            const HomeNearbyView(),
          ],
        ),
      ),
    );
  }
}
