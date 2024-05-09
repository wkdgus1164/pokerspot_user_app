import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/common/components/clickable_list_item/clickable_list_item.dart';

class MyInfoEtcVac extends StatelessWidget {
  const MyInfoEtcVac({
    super.key,
    required this.handleLogoutClick,
    required this.handleDeleteClick,
  });

  final Function() handleLogoutClick;
  final Function() handleDeleteClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '기타',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
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
                handleClick: handleLogoutClick,
                startWidget: const Row(
                  children: [
                    Icon(Icons.logout_outlined),
                    SizedBox(width: 16),
                  ],
                ),
                title: '로그아웃',
                endWidget: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: colorGrey80,
                ),
              ),
              const Divider(),
              ClickableListItem(
                handleClick: handleDeleteClick,
                startWidget: const Row(
                  children: [
                    Icon(Icons.sentiment_very_dissatisfied_outlined),
                    SizedBox(width: 16),
                  ],
                ),
                title: '회월탈퇴',
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
