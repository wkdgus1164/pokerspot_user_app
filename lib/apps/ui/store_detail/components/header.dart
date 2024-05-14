import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class StoreDetailHeader extends StatelessWidget {
  const StoreDetailHeader({
    super.key,
    required this.type,
    required this.title,
    required this.distance,
  });

  final String type;
  final String title;
  final double distance;

  @override
  Widget build(BuildContext context) {
    final distanceText = double.parse(distance.toString()) < 1000
        ? '${distance.toStringAsFixed(0)}m 주변에 있어요.'
        : '${(double.parse(distance.toString()) / 1000).toStringAsFixed(2)}km 주변에 있어요.';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: colorBrand95,
              ),
              child: Text(
                type,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: colorBrand50,
                    ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: colorGrey95),
                borderRadius: BorderRadius.circular(4),
                color: colorGrey98,
              ),
              child: Wrap(
                spacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(
                    Icons.gps_fixed_rounded,
                    color: colorGrey60,
                    size: 14,
                  ),
                  Text(
                    distanceText,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: colorGrey60,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
