import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_games/game_list_detail.dart';

class StoreDetailGameList extends StatelessWidget {
  const StoreDetailGameList({super.key, required this.games});

  final List<StoreGameMttV2Model> games;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '토너먼트 정보',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          StoreGameListDetail(games: games),
        ],
      ),
    );
  }
}
