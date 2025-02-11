import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/nearby_filtered_list/nearby_filtered_list_page.dart';
import 'package:pokerspot_user_app/apps/ui/home_tab/home/components/tournament_selection_setion/selection_item.dart';

class HomeTournamentSelectSection extends StatelessWidget {
  const HomeTournamentSelectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeTournamentSelectionItem(
          primaryColor: const Color(0xff709CED),
          tonalColor: const Color(0xffEFF4FD),
          handleClick: () => _handleClick(context, GameType.DAILY),
          title: '데일리 토너',
          iconPath: Assets.gameDaily.path,
        ),
        const SizedBox(width: 16),
        HomeTournamentSelectionItem(
          primaryColor: const Color(0xffBA66E0),
          tonalColor: const Color(0xffF7EEFB),
          handleClick: () => _handleClick(context, GameType.GTD),
          title: 'GTD 토너',
          iconPath: Assets.gameGTD.path,
        ),
      ],
    );
  }

  void _handleClick(BuildContext context, GameType gameType) {
    context.push(
      CustomRouter.gameTypeFilterList.path,
      extra: GameTypeFilterListPageArguments(
        gameType: gameType,
      ),
    );
  }
}
