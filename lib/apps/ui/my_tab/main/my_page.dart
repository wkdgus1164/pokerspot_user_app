import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/main/menus/etc_menus.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/main/toolbar/toolbar.dart';
import 'package:pokerspot_user_app/common/components/business_info/business_info.dart';

class MyPage extends StatefulHookConsumerWidget {
  const MyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('더보기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 프로필 카드
            // MyProfileCard(
            //   name: '홍길동',
            //   createdAt: DateTime.now(),
            //   handleEditClick: () {
            //     context.push(CustomRouter.myInfo.path);
            //   },
            // ),

            // 툴바
            Expanded(
              child: Column(
                children: [
                  MyToolbar(
                    handleRecentViewClick: () {
                      context.push(CustomRouter.recent.path);
                    },
                    handleFavoriteClick: () {
                      context.push(CustomRouter.favorite.path);
                    },
                  ),
                  const SizedBox(height: 16),

                  // 로그인 필요
                  // const MyLoginRequired(),

                  // 내 메뉴
                  // MyMenusView(),

                  // 기타
                  const EtcMenusView(),
                ],
              ),
            ),

            // 사업자 정보
            const BusinessInfo(),
          ],
        ),
      ),
    );
  }
}
