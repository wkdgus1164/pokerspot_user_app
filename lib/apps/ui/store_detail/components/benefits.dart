import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
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
            child: ListView.separated(
              itemCount: benefits.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    children: [
                      Image.asset(Assets.firstGameBenefits.path),
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            benefits[index].type.toString(),
                            style: textTheme.titleSmall!.copyWith(
                              color: colorGrey60,
                            ),
                          ),
                          Text(
                            benefits[index].description,
                            style: textTheme.titleMedium!.copyWith(
                              color: colorGrey20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
