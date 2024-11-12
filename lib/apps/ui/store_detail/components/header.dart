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
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.normal,
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
