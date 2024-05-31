import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_games/game_item_detail.dart';

class StoreGameListDetail extends StatelessWidget {
  const StoreGameListDetail({
    super.key,
    required this.games,
    this.scrollDirection = Axis.vertical,
  });

  final List<StoreGamesModel> games;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
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
                        if (it.eventType == EventType.FIRST_GAME) ...[
                          Container(
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
                              '첫 게임',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: Colors.blue.shade700,
                                  ),
                            ),
                          ),
                        ],
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                            color: Colors.red.shade50,
                          ),
                          child: Text(
                            it.type?.kr ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: Colors.red.shade700,
                                ),
                          ),
                        ),
                        if (it.isDaily) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                              color: Colors.green.shade50,
                            ),
                            child: Text(
                              '매일 진행',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: Colors.green.shade700,
                                  ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    it.name ?? "",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: colorGrey30,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  StoreGameItemDetail(
                    title: 'BUY-IN',
                    description: '${it.entryPrice.toString()} Ticket',
                  ),
                  const SizedBox(height: 8),
                  StoreGameItemDetail(
                    title: 'ENTRY',
                    description:
                        it.entryMax != null ? it.entryMax.toString() : "-",
                    caption: it.reEntryMax != null
                        ? '리바인 ${it.reEntryMax.toString()}번 가능'
                        : null,
                  ),
                  const SizedBox(height: 8),
                  StoreGameItemDetail(
                    title: 'BL-UP',
                    description: it.duration != null
                        ? '${it.duration.toString()}분'
                        : "-",
                  ),
                  const SizedBox(height: 8),
                  StoreGameItemDetail(
                    title: 'PRIZE',
                    description:
                        it.prize != null ? '${it.prize.toString()}%' : "-",
                  ),
                  if (it.type == GameType.GTD && it.gtdMinReward != null) ...[
                    const SizedBox(height: 8),
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
}
