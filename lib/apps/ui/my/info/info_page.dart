import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/my/info/views/sections/basic_vac.dart';
import 'package:pokerspot_user_app/apps/ui/my/info/views/sections/etc_vac.dart';
import 'package:pokerspot_user_app/apps/ui/my/info/views/sections/social_vac.dart';
import 'package:pokerspot_user_app/common/components/adaptive_button/adaptive_button.dart';

class MyInfoPage extends StatefulHookConsumerWidget {
  const MyInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends ConsumerState<MyInfoPage> {
  final isKakaoActivated = true;
  final isAppleActivated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내정보 관리'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 기본 정보
            MyInfoBasicVac(
              nickname: 'nickname',
              phone: 'phone',
              handleNicknameClick: _handleNicknameClick,
              handlePhoneClick: _handlePhoneClick,
            ),
            const SizedBox(height: 32),

            // 소셜 계정 연동 정보
            MyInfoSocialVac(
              isAppleActivated: isAppleActivated,
              isKakaoActivated: isKakaoActivated,
              handleAppleClick: _handleAppleClick,
              handleKakaoClick: _handleKakaoClick,
            ),
            const SizedBox(height: 32),

            MyInfoEtcVac(
              handleLogoutClick: _handleLogoutClick,
              handleDeleteClick: _handleDeleteClick,
            ),
          ],
        ),
      ),
    );
  }

  void _handleNicknameClick() {}
  void _handlePhoneClick() {}

  _handleKakaoClick() {
    if (!isKakaoActivated) {
      Fluttertoast.showToast(msg: '카카오 로그인');
    }
  }

  void _handleAppleClick() {
    if (!isAppleActivated) {
      Fluttertoast.showToast(msg: '애플 로그인');
    }
  }

  Widget adaptiveAction(
      {required BuildContext context,
      required VoidCallback onPressed,
      required Widget child}) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }

  void _handleLogoutClick() {
    showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('로그아웃'),
          content: const Text('정말 로그아웃하시겠어요?\n로그아웃하시면, 이후 다시 로그인해야 해요.'),
          actions: [
            CustomAdaptiveDialogButton(
              context: context,
              onPressed: () => Navigator.pop(context, '취소'),
              child: const Text('취소'),
            ),
            CustomAdaptiveDialogButton(
              context: context,
              onPressed: () => Navigator.pop(context, '로그아웃'),
              child: const Text('로그아웃'),
            ),
          ],
        );
      },
    );
  }

  void _handleDeleteClick() {
    showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('회원탈퇴'),
          content:
              const Text('정말 틸퇴하시겠어요?\n포커스팟에 저장되어 있던 모든 정보가 삭제되고 복구할 수 없어요.'),
          actions: [
            CustomAdaptiveDialogButton(
              context: context,
              onPressed: () => Navigator.pop(context, '취소'),
              child: const Text('취소'),
            ),
            CustomAdaptiveDialogButton(
              context: context,
              onPressed: () => Navigator.pop(context, '탈퇴하기'),
              child: const Text('탈퇴하기'),
            ),
          ],
        );
      },
    );
  }
}
