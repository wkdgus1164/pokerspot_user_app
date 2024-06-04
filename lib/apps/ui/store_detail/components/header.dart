import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';

class StoreDetailHeader extends StatelessWidget {
  const StoreDetailHeader({
    super.key,
    required this.type,
    required this.title,
    required this.distance,
    required this.runningTime,
    required this.updatedAt,
  });

  final String type;
  final String title;
  final double distance;
  final String runningTime;
  final DateTime updatedAt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
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
                      '${Utils().getFormattedDistance(distance: distance)} 주변에 있어요.',
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
          Text(
            runningTime,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: colorGrey50,
                ),
          ),
          Text(
            '${Utils().getFormattedTimeAgo(dateTime: updatedAt)} 최종 업데이트',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: colorGrey50,
                ),
          ),
        ],
      ),
    );
  }
}
