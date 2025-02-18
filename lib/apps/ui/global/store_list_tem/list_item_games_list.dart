import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/games_item/item_row.dart';
import 'package:pokerspot_user_app/common/colorful_chip/colorful_chip.dart';

class StoreListItemGamesList extends StatelessWidget {
  const StoreListItemGamesList({
    super.key,
    required this.games,
  });

  final List<GameMTTDto> games;

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
              width: 260,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: colorGrey95),
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
                          text: '${it.prize}%',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    it.name ?? '',
                    style: textTheme.titleMedium!.copyWith(
                      color: colorGrey20,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (it.gameSchedule != null) ...[
                    Text(
                      it.gameSchedule ?? '',
                      style: textTheme.labelMedium!.copyWith(
                        color: colorGrey40,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  if (it.entryPrice != 0) ...[
                    StoreListItem_GameListItemRow(
                      title: 'BUY-IN',
                      description:
                          '${it.entryType.kr} ${it.entryPrice.toString()} ${it.entryType.unit}',
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (it.prize != 0) ...[
                    StoreListItem_GameListItemRow(
                      title: 'PRIZE',
                      description: '${it.prize}%',
                      // '${it.prizeType?.kr} ${it.prize} ${it.prizeType?.unit}',
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
