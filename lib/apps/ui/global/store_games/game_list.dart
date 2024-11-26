import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_games/game_item.dart';
import 'package:pokerspot_user_app/common/colorful_chip/colorful_chip.dart';

class StoreGameList extends StatelessWidget {
  const StoreGameList({
    super.key,
    required this.games,
  });

  final List<StoreGameMttV2Model> games;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 16,
        runSpacing: 16,
        children: games.map(
          (it) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorGrey98,
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
                        ColorfulChip(
                          theme: ColorfulChipTheme.red,
                          text: '실시간 12분전',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    it.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: colorGrey20,
                        ),
                  ),
                  if (it.gameSchedule != null) ...[
                    Text(
                      it.gameSchedule!,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: colorGrey40,
                          ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  StoreGameItem(
                    title: 'BUY-IN',
                    description:
                        '${it.entryType.kr} ${it.entryPrice.toString()} ${it.entryType.unit}',
                  ),
                  const SizedBox(height: 8),
                  if (it.prize != null) ...[
                    StoreGameItem(
                      title: 'PRIZE',
                      description:
                          '${it.prizeType.kr} ${it.prize} ${it.prizeType.unit}',
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
}
