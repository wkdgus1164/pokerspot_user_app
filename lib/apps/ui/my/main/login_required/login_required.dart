import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

class MyLoginRequired extends StatelessWidget {
  const MyLoginRequired({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: colorGrey90),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {},
            child: Ink(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        '로그인 필요',
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
          ),
        ),
      ],
    );
  }
}
