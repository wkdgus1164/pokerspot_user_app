import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';

/// 상점 게임 통계 정보를 표시하는 위젯
class StoreListItemGameStatistics extends StatelessWidget {
  const StoreListItemGameStatistics({
    super.key,
    required this.games,
  });

  final List<GameMTTDto> games;

  /// 가격 범위를 문자열로 변환
  String _formatPriceRange(int minValue, int maxValue) {
    if (minValue == 0 && maxValue == 0) return '준비중';
    if (minValue == maxValue) return minValue.toString();
    if (minValue != 0 && maxValue != 0) {
      return '$minValue~$maxValue';
    }
    return (minValue != 0) ? minValue.toString() : maxValue.toString();
  }

  /// Prize 표시 문자열 생성
  String _getPrizeDisplayText(int prizeMin, int prizeMax) {
    if (prizeMin == 0 && prizeMax == 0) return '준비중';
    if (prizeMin == prizeMax) return prizeMin.toString();
    if (prizeMin != 0 && prizeMax != 0) {
      return _formatPriceRange(prizeMin, prizeMax);
    }
    return (prizeMin != 0) ? prizeMin.toString() : prizeMax.toString();
  }

  @override
  Widget build(BuildContext context) {
    final buyInMin = games.map((e) => e.entryPrice).reduce(min);
    final buyInMax = games.map((e) => e.entryPrice).reduce(max);
    final prizeMin = games.map((e) => e.prize).reduce(min);
    final prizeMax = games.map((e) => e.prize).reduce(max);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildStatisticsItem(
            title: 'BUY-IN',
            value: _formatPriceRange(buyInMin, buyInMax),
          ),
          const SizedBox(width: 8),
          _buildStatisticsItem(
            title: 'PRIZE',
            value: _getPrizeDisplayText(prizeMin, prizeMax),
          ),
        ],
      ),
    );
  }

  /// 통계 항목 위젯 생성
  Expanded _buildStatisticsItem({
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
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
              style: textTheme.labelLarge?.copyWith(
                color: colorGrey60,
              ),
            ),
            Text(
              value,
              style: textTheme.labelLarge?.copyWith(
                color: colorGrey20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
