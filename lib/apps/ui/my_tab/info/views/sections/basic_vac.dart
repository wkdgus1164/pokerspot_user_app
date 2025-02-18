import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/common/components/clickable_list_item/clickable_list_item.dart';

class MyInfoBasicVac extends StatelessWidget {
  const MyInfoBasicVac({
    super.key,
    required this.handleNicknameClick,
    required this.handlePhoneClick,
    required this.nickname,
    required this.phone,
  });

  final String nickname;
  final String phone;
  final Function() handleNicknameClick;
  final Function() handlePhoneClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '기본 정보',
          style: textTheme.titleSmall!.copyWith(
            color: colorGrey40,
            fontWeight: FontWeight.normal,
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
                handleClick: handleNicknameClick,
                startWidget: const Row(
                  children: [
                    Icon(Icons.person_outline_outlined),
                    SizedBox(width: 16),
                  ],
                ),
                title: nickname,
                endWidget: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: colorGrey80,
                ),
              ),
              const Divider(),
              ClickableListItem(
                handleClick: handlePhoneClick,
                startWidget: const Row(
                  children: [
                    Icon(Icons.call_outlined),
                    SizedBox(width: 16),
                  ],
                ),
                title: phone,
                endWidget: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: colorGrey80,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
