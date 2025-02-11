import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/common/components/clickable_list_item/clickable_list_item.dart';

class MyInfoSocialVac extends StatelessWidget {
  const MyInfoSocialVac({
    super.key,
    required this.isKakaoActivated,
    required this.isAppleActivated,
    required this.handleKakaoClick,
    required this.handleAppleClick,
  });

  final bool isKakaoActivated;
  final bool isAppleActivated;

  final Function() handleKakaoClick;
  final Function() handleAppleClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '소셜 계정 연동 정보',
          style: textTheme.titleSmall!.copyWith(
            color: colorGrey40,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            border: Border.all(color: colorGrey90),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Column(
            children: [
              ClickableListItem(
                handleClick: handleKakaoClick,
                startWidget: Row(
                  children: [
                    SvgPicture.asset(Assets.kakao.path),
                    const SizedBox(width: 16),
                  ],
                ),
                title: '카카오 계정',
                endWidget: Row(
                  children: [
                    Text(
                      isKakaoActivated ? '연동완료' : '연동필요',
                      style: textTheme.labelLarge!.copyWith(
                        color: colorGrey60,
                      ),
                    ),
                    if (!isKakaoActivated) ...[
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: colorGrey80,
                      ),
                    ],
                  ],
                ),
              ),
              const Divider(),
              ClickableListItem(
                handleClick: handleAppleClick,
                startWidget: Row(
                  children: [
                    SvgPicture.asset(Assets.apple.path),
                    const SizedBox(width: 16),
                  ],
                ),
                title: '애플 계정',
                endWidget: Row(
                  children: [
                    Text(
                      isAppleActivated ? '연동완료' : '연동필요',
                      style: textTheme.labelLarge!.copyWith(
                        color: colorGrey60,
                      ),
                    ),
                    if (!isAppleActivated) ...[
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: colorGrey80,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
