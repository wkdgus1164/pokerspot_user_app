import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

class EtcMenusView extends StatelessWidget {
  const EtcMenusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorGrey90),
      ),
      child: Column(
        children: [
          _buildItem(
            Assets.myNotice.path,
            '공지사항',
            () {
              context.push(CustomRouter.notice.path);
            },
          ),
          // const Divider(),
          // _buildItem(
          //   Assets.myEvent.path,
          //   '이벤트',
          //   () {},
          // ),
          const Divider(),
          _buildItem(
            Assets.myTerms.path,
            '약관 및 정책',
            () {
              context.push(CustomRouter.policy.path);
            },
          ),
          const Divider(),
          _buildItem(
            Assets.code.path,
            '소프트웨어 라이선스',
            () {
              showLicensePage(context: context);
            },
          ),
        ],
      ),
    );
  }

  InkWell _buildItem(
    String icon,
    String text,
    Function() handleClick,
  ) {
    return InkWell(
      onTap: handleClick,
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: const ColorFilter.mode(
                  colorGrey40,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: textTheme.bodyLarge!.copyWith(
                    color: colorGrey40,
                  ),
                ),
              ),
              SvgPicture.asset(Assets.arrowRight.path),
            ],
          ),
        ),
      ),
    );
  }
}
