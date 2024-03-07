import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/tournament.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/models/model.dart';

class StoreDetailTournaments extends StatelessWidget {
  const StoreDetailTournaments({super.key, required this.tournaments});

  final List<StoreDetailMttItemsModel> tournaments;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorGrey95),
        color: colorGrey98,
      ),
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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return StoreDetailTournament(game: tournaments[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: tournaments.length,
          ),
        ],
      ),
    );
  }
}
