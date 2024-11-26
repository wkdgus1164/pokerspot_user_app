import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';

class StoreListItemGameStatistics extends StatelessWidget {
  const StoreListItemGameStatistics({
    super.key,
    required this.games,
  });

  final List<StoreGameMttV2Model> games;

  @override
  Widget build(BuildContext context) {
    final String buyInMin =
        games.map((e) => e.entryPrice).reduce(min).toString();
    final String buyInMax =
        games.map((e) => e.entryPrice).reduce(max).toString();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildStatitisticsItem(
            title: 'BUY-IN',
            value: '$buyInMin~$buyInMax',
          ),
          const SizedBox(width: 8),
          _buildStatitisticsItem(
            title: 'PRIZE',
            value: '준비중',
          ),
        ],
      ),
    );
  }

  Expanded _buildStatitisticsItem({
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colorGrey98,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textTheme.labelLarge!.copyWith(
                color: colorGrey60,
              ),
            ),
            Text(
              value,
              style: textTheme.labelLarge!.copyWith(
                color: colorGrey20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
