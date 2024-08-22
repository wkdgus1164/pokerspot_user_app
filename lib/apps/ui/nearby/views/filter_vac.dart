import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class NearbyFilterVac extends StatelessWidget {
  const NearbyFilterVac({
    super.key,
    required this.operationStatus,
    required this.gameType,
    required this.handleOpenOnlyFilterClick,
    required this.handleDailyOnlyFilterClick,
    required this.handleGTDOnlyFilterClick,
    required this.handleMoreFilterClick,
  });

  final OperationStatus operationStatus;
  final GameType gameType;
  final Function(bool) handleOpenOnlyFilterClick;
  final Function(bool) handleDailyOnlyFilterClick;
  final Function(bool) handleGTDOnlyFilterClick;
  final Function() handleMoreFilterClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: colorGrey90,
          ),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 12,
          children: [
            ChoiceChip(
              label: const Text('운영 중'),
              selected: operationStatus == OperationStatus.OPEN,
              onSelected: handleOpenOnlyFilterClick,
            ),
            ChoiceChip(
              label: const Text('데일리만'),
              selected: gameType == GameType.DAILY,
              onSelected: handleDailyOnlyFilterClick,
            ),
            ChoiceChip(
              label: const Text('GTD만'),
              selected: gameType == GameType.GTD,
              onSelected: handleGTDOnlyFilterClick,
            ),
            Container(
              color: colorGrey90,
              width: 1,
              height: 24,
            ),
            InputChip(
              onPressed: handleMoreFilterClick,
              label: const Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 4,
                children: [
                  Icon(
                    Icons.tune_rounded,
                    size: 18,
                    color: colorGrey50,
                  ),
                  Text('더보기'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
