import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/tournament_info.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/models/model.dart';

class StoreDetailTournament extends StatelessWidget {
  const StoreDetailTournament({super.key, required this.game});

  final StoreDetailMttItemsModel game;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                  game.type == 'DAILY' ? '데일리 토너' : '시드권 토너',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: colorBrand50,
                      ),
                ),
              ),
              if (game.isDaily) ...[
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
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: colorGrey40,
                        ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Text(
            game.name,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: colorGrey20,
                ),
          ),
          const SizedBox(height: 8),
          HomeStoreTournaments(
            title: 'BUY-IN',
            caption: '${game.entryPrice.toString()} Ticket',
          ),
          const SizedBox(height: 8),
          HomeStoreTournaments(
            title: 'ENTRY',
            caption:
                game.entryMax != null ? '${game.entryMax.toString()}~' : "-",
          ),
          const SizedBox(height: 8),
          HomeStoreTournaments(
            title: 'BL-UP',
            caption:
                game.duration != null ? '${game.duration.toString()}분' : "-",
          ),
          const SizedBox(height: 8),
          HomeStoreTournaments(
            title: 'PRIZE',
            caption: game.prize != null ? '${game.prize.toString()}%' : "-",
          ),
        ],
      ),
    );
  }
}
