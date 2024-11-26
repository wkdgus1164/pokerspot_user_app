import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_games/game_list.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/benefit.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/header.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/store_game_statistics.dart';
import 'package:pokerspot_user_app/common/colorful_chip/colorful_chip.dart';

class StoreV2 extends StatelessWidget {
  const StoreV2({
    super.key,
    required this.storeImages,
    required this.name,
    required this.address,
    required this.addressDetail,
    required this.openTime,
    required this.closeTime,
    required this.distance,
    required this.storeGames,
    required this.handleClick,
    required this.updatedAt,
    required this.storeBenefits,
    required this.storeTags,
  });

  final List<StoreImagesModel> storeImages;
  final String name;
  final String address;
  final String addressDetail;
  final String openTime;
  final String closeTime;
  final double distance;
  final DateTime updatedAt;
  final List<StoreGameMttV2Model> storeGames;
  final Function() handleClick;
  final List<StoreBenefitV2Model> storeBenefits;
  final List<StoreTagV2Model> storeTags;

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

            // 헤더 (이미지, 혜택)
            StoreListItemHeader(
              name: name,
              address: address,
              openTime: openTime,
              updatedAt: updatedAt,
              storeImages: storeImages,
              storeBenefits: storeBenefits,
            ),
            const SizedBox(height: 16),

            // 해시태그
            if (storeTags.isNotEmpty) ...[
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  spacing: 8,
                  children: [
                    for (var i = 0; i < storeTags.length; i++)
                      ColorfulChip(
                        theme: i == 0
                            ? ColorfulChipTheme.blue
                            : ColorfulChipTheme.green,
                        text: storeTags[i].name!,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],

            // 혜택 정보
            if (storeBenefits.isNotEmpty) ...[
              StoreListItemBenefit(storeBenefits: storeBenefits),
              const SizedBox(height: 8),
            ],

            // 게임 통계
            StoreListItemGameStatistics(games: storeGames),
            const SizedBox(height: 16),

            // 게임 정보
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '토너먼트 5개',
                style: textTheme.titleMedium!.copyWith(
                  color: colorGrey20,
                ),
              ),
            ),
            const SizedBox(height: 8),
            StoreGameList(
              games: storeGames,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
