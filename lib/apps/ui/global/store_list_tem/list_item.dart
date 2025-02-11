import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item_games_list.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item/list_item_benefit.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item/list_item_header.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item/list_item_statistics.dart';
import 'package:pokerspot_user_app/common/colorful_chip/colorful_chip.dart';

class StoreListItem extends StatelessWidget {
  const StoreListItem({
    super.key,
    required this.store,
    required this.handleClick,
  });

  final StoreDto store;
  final Function() handleClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleClick,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            StoreListItemHeader(store: store),
            const SizedBox(height: 16),
            if (store.storeTags.isNotEmpty) ...[
              _buildTags(),
              const SizedBox(height: 8),
            ],
            if (store.storeBenefits.isNotEmpty) ...[
              StoreListItemBenefit(storeBenefits: store.storeBenefits),
              const SizedBox(height: 8),
            ],
            StoreListItemGameStatistics(games: store.gameMttItems),
            const SizedBox(height: 16),
            if (store.gameMttItems.isNotEmpty) ...[
              _buildGamesList(),
              const SizedBox(height: 16),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTags() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: store.storeTags
            .map((e) => ColorfulChip(
                  theme: e.name == '토너먼트'
                      ? ColorfulChipTheme.blue
                      : ColorfulChipTheme.green,
                  text: e.name,
                ))
            .toList(),
      ),
    );
  }

  Widget _buildGamesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '토너먼트 ${store.gameMttItems.length}개',
            style: textTheme.titleMedium!.copyWith(
              color: colorGrey20,
            ),
          ),
        ),
        const SizedBox(height: 8),
        StoreListItemGamesList(games: store.gameMttItems),
      ],
    );
  }
}
