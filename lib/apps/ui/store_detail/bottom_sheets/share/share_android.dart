import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';

class StoreDetailShareAndroid extends StatelessWidget {
  const StoreDetailShareAndroid({
    super.key,
    required this.handleKakaoShare,
    required this.model,
  });

  final Function() handleKakaoShare;
  final StoreV2Model model;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildAndroidListTile(
            iconPath: Assets.kakao.path,
            title: '카카오톡 공유',
            subtitle: '카카오톡 채팅방에 매장 공유하기',
            onTap: handleKakaoShare,
          ),
          ListTile(
            leading: const Icon(Icons.copy_rounded),
            title: const Text('링크 복사'),
            subtitle: const Text('매장 링크 복사하기'),
            onTap: () => Utils().copyToClipboard(
              text: 'https://app.pokerspot.co.kr/store/${model.id}',
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildAndroidListTile({
    required String iconPath,
    required String title,
    required String subtitle,
    required Function() onTap,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}
