import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_games/game_item_detail.dart';

class StoreGameListDetail extends StatelessWidget {
  const StoreGameListDetail({
    super.key,
    required this.games,
    this.scrollDirection = Axis.vertical,
  });

  final List<StoreGameMttV2Model> games;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreGameListDetail\n  games: $games');
    return SingleChildScrollView(
      scrollDirection: scrollDirection,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 16,
        runSpacing: 16,
        children: games.map(
          (it) {
            return Container(
              width: scrollDirection == Axis.vertical
                  ? double.infinity
                  : MediaQuery.of(context).size.width * 0.6,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: colorGrey90),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 12,
                      children: [
                        _buildHeaderTag(
                          context: context,
                          text: it.prizeType.kr,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    it.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: colorGrey30,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  if (it.gameSchedule != null) ...[
                    Text(
                      it.gameSchedule ?? "",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: colorGrey60,
                          ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  StoreGameItemDetail(
                    title: 'BUY-IN',
                    description:
                        '${it.entryType.kr} ${it.entryPrice}${it.entryType.unit}',
                  ),
                  const SizedBox(height: 8),
                  if (it.prize != null) ...[
                    StoreGameItemDetail(
                      title: 'PRIZE',
                      description:
                          '${it.prizeType.kr} ${it.prize}${it.prizeType.unit}',
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (it.regEndBlindLevel != null) ...[
                    StoreGameItemDetail(
                      title: 'END',
                      description: 'BL-LV ${it.regEndBlindLevel} 이전',
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (it.duration != null) ...[
                    StoreGameItemDetail(
                      title: 'BL-UP',
                      description: '${it.duration.toString()}분',
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (it.type == GameType.GTD && it.gtdMinReward != null) ...[
                    StoreGameItemDetail(
                      title: '최소 상금',
                      description: it.gtdMinReward != null
                          ? it.gtdMinReward.toString()
                          : "-",
                    ),
                  ],
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  Container _buildHeaderTag({
    required BuildContext context,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        color: Colors.blue.shade50,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Colors.blue.shade700,
            ),
      ),
    );
  }
}
