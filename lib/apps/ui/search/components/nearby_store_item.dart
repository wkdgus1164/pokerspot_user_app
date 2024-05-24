import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';

class NearbyStoreItem extends StatelessWidget {
  const NearbyStoreItem({
    super.key,
    required this.name,
    required this.handleClick,
    required this.distance,
  });

  final String name;
  final double distance;
  final Function() handleClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: handleClick,
      title: Text(
        name,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: colorGrey40,
            ),
        overflow: TextOverflow.ellipsis,
      ),
      leading: SvgPicture.asset(
        Assets.logoImageColor.path,
        width: 20,
        height: 20,
        colorFilter: const ColorFilter.mode(
          colorGrey80,
          BlendMode.srcIn,
        ),
      ),
      trailing: Text(
        Utils().getFormattedDistance(distance: distance),
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: colorGrey60,
            ),
      ),
    );
  }
}
