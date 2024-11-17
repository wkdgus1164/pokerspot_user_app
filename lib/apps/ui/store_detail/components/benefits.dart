import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';

class StoreDetailBenefits extends StatelessWidget {
  const StoreDetailBenefits({
    super.key,
    required this.benefits,
  });

  final List<StoreBenefitsModel> benefits;

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreDetailBenefits\n  benefits: $benefits');
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '혜택 정보',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: colorGrey90),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      benefits[0].type!.kr == StoreBenefitType.FIRST_GAME.kr
                          ? Assets.firstGameBenefits.path
                          : Assets.newGameBenefits.path,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            benefits[0].type?.kr ?? "-",
                            style: textTheme.titleSmall!.copyWith(
                              color: colorGrey60,
                            ),
                          ),
                          Text(
                            benefits[0].description ?? "-",
                            style: textTheme.titleMedium!.copyWith(
                              color: colorGrey20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (benefits.length > 1) ...[
                  const Divider(height: 32, color: colorGrey95),
                  Row(
                    children: [
                      Image.asset(
                        benefits[1].type!.kr == StoreBenefitType.FIRST_GAME.kr
                            ? Assets.firstGameBenefits.path
                            : Assets.newGameBenefits.path,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              benefits[1].type?.kr ?? "-",
                              style: textTheme.titleSmall!.copyWith(
                                color: colorGrey60,
                              ),
                            ),
                            Text(
                              benefits[1].description ?? "-",
                              style: textTheme.titleMedium!.copyWith(
                                color: colorGrey20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
