import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

class MyMenusView extends StatelessWidget {
  const MyMenusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          _buildItem(
            Assets.myRecentView.path,
            '최근 본 펍',
            () {
              context.push(CustomRouter.recent.path);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    String icon,
    String text,
    Function() handleClick,
  ) {
    return InkWell(
      onTap: handleClick,
      splashColor: colorBrand90,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: colorBrand95,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  text,
                  style: textTheme.bodyLarge!.copyWith(
                    color: colorBrand50,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              const Icon(
                Icons.keyboard_arrow_right,
                color: colorBrand80,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
