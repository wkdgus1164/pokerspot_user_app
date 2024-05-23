import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class BeforeSearch extends StatelessWidget {
  const BeforeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.searchPrefix.path,
              width: 40,
              height: 40,
              colorFilter: const ColorFilter.mode(
                colorGrey80,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '검색어를 입력해주세요.',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: colorGrey80,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
