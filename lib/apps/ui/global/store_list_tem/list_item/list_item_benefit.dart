import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';

class StoreListItemBenefit extends StatelessWidget {
  const StoreListItemBenefit({super.key, required this.storeBenefits});

  final List<StoreBenefitsDto> storeBenefits;

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreListItemBenefit\n  storeBenefits: $storeBenefits');
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorGrey98,
      ),
      child: Wrap(
        runSpacing: 4,
        children: [
          if (storeBenefits.any((benefit) =>
              benefit.type == StoreBenefitType.FIRST_GAME.name)) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                  child: Text(
                    '첫게임 혜택',
                    style: textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: colorGrey40,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    storeBenefits
                        .firstWhere((benefit) =>
                            benefit.type == StoreBenefitType.FIRST_GAME.name)
                        .description,
                    style: textTheme.labelMedium!.copyWith(
                      color: colorGrey40,
                    ),
                  ),
                ),
              ],
            ),
          ],
          if (storeBenefits.any(
              (benefit) => benefit.type == StoreBenefitType.NEW_USER.name)) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                  child: Text(
                    '신규 혜택',
                    style: textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: colorGrey40,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    storeBenefits
                        .firstWhere((benefit) =>
                            benefit.type == StoreBenefitType.NEW_USER.name)
                        .description,
                    style: textTheme.labelMedium!.copyWith(
                      color: colorGrey40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
