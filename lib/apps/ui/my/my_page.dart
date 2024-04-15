import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/my/menus/menus.dart';
import 'package:pokerspot_user_app/apps/ui/my/profile_card/profile_card.dart';
import 'package:pokerspot_user_app/apps/ui/my/toolbar/toolbar.dart';

class MyPage extends StatefulHookConsumerWidget {
  const MyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyPageState();
}

class _MyPageState extends ConsumerState<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내정보'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 프로필 카드
            MyProfileCard(
              name: '홍길동',
              createdAt: DateTime.now(),
              handleEditClick: () {},
            ),

            // 툴바
            MyToolbar(
              handleFavoriteClick: () {
                Fluttertoast.showToast(msg: '최근에 본 펍!');
              },
              handleRecentViewClick: () {
                Fluttertoast.showToast(msg: '찜한 펍!');
              },
            ),
            const SizedBox(height: 16),

            // 기타
            const MyMenus(),
          ],
        ),
      ),
    );
  }
}
