import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/tournament_info.dart';

class HomeStoreTournament extends StatelessWidget {
  const HomeStoreTournament({super.key, required this.games});

  final List<GameMTTDto> games;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 16,
        children: games.map(
          (it) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: colorGrey90),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 12,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                          color: colorBrand95,
                        ),
                        child: Text(
                          it.type == 'DAILY' ? '데일리 토너' : '시드권 토너',
                          style:
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: colorBrand50,
                                  ),
                        ),
                      ),
                      if (it.isDaily) ...[
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                            color: colorGrey95,
                          ),
                          child: Text(
                            '매일 진행',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  color: colorGrey40,
                                ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    it.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: colorGrey20,
                        ),
                  ),
                  const SizedBox(height: 8),
                  HomeStoreTournaments(
                    title: 'BUY-IN',
                    caption: '${it.entryPrice.toString()} Ticket',
                  ),
                  const SizedBox(height: 8),
                  HomeStoreTournaments(
                    title: 'ENTRY',
                    caption: it.entryMax != null
                        ? '${it.entryMax.toString()}~'
                        : "-",
                  ),
                  const SizedBox(height: 8),
                  HomeStoreTournaments(
                    title: 'BL-UP',
                    caption: it.duration != null
                        ? '${it.duration.toString()}분'
                        : "-",
                  ),
                  const SizedBox(height: 8),
                  HomeStoreTournaments(
                    title: 'PRIZE',
                    caption: it.prize != null ? '${it.prize.toString()}%' : "-",
                  ),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
