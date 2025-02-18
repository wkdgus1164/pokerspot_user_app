import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
    required this.name,
    required this.handleClick,
    required this.distance,
  });

  final String name;
  final Function() handleClick;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: handleClick,
      title: Text(
        name,
        style: textTheme.bodyLarge!.copyWith(
          color: colorGrey40,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      leading: SvgPicture.asset(
        Assets.searchPrefix.path,
        width: 16,
        height: 16,
        colorFilter: const ColorFilter.mode(
          colorGrey70,
          BlendMode.srcIn,
        ),
      ),
      trailing: Text(
        Utils().getFormattedDistance(distance: distance),
        style: textTheme.labelLarge!.copyWith(
          color: colorGrey60,
        ),
      ),
    );
  }
}
