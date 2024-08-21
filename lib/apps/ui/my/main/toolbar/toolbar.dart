import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

class MyToolbar extends StatelessWidget {
  const MyToolbar({
    super.key,
    required this.handleRecentViewClick,
    required this.handleFavoriteClick,
  });

  final Function() handleRecentViewClick;
  final Function() handleFavoriteClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleRecentViewClick,
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
              SvgPicture.asset(Assets.myRecentView.path),
              const SizedBox(width: 12),
              Text(
                "최근 본 펍",
                style: textTheme.bodyLarge!.copyWith(
                  color: colorBrand50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
