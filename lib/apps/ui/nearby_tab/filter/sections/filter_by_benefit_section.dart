import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/filter/providers/filter_by_benefit.dart';

class FilterByBenefitSection extends StatefulHookConsumerWidget {
  const FilterByBenefitSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<FilterByBenefitSection> {
  @override
  Widget build(BuildContext context) {
    final benefitFilter = ref.watch(filterByBenefitProvider);

    final isAll = benefitFilter.isOnlyFirstGameBenefit &&
        benefitFilter.isOnlyNewUserBenefit;
    final isOnlyFirstGameBenefit = benefitFilter.isOnlyFirstGameBenefit &&
        !benefitFilter.isOnlyNewUserBenefit;
    final isOnlyNewUserBenefit = benefitFilter.isOnlyNewUserBenefit &&
        !benefitFilter.isOnlyFirstGameBenefit;
    final isNothing = !benefitFilter.isOnlyFirstGameBenefit &&
        !benefitFilter.isOnlyNewUserBenefit;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('방문 혜택', style: textTheme.titleMedium),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: _handleAllClick,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: isAll ? colorBrand40 : colorGrey80,
                      ),
                    ),
                    color: isAll ? colorBrand90 : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '둘다',
                    style: textTheme.labelLarge!.copyWith(
                      color: isAll ? colorBrand40 : colorGrey40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _handleOnlyFirstGameBenefitClick,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(
                        color:
                            isOnlyFirstGameBenefit ? colorBrand40 : colorGrey80,
                      ),
                    ),
                    color: isOnlyFirstGameBenefit
                        ? colorBrand90
                        : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '첫게임',
                    style: textTheme.labelLarge!.copyWith(
                      color:
                          isOnlyFirstGameBenefit ? colorBrand40 : colorGrey40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _handleOnlyNewUserBenefitClick,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(
                        color:
                            isOnlyNewUserBenefit ? colorBrand40 : colorGrey80,
                      ),
                    ),
                    color: isOnlyNewUserBenefit
                        ? colorBrand90
                        : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '신규',
                    style: textTheme.labelLarge!.copyWith(
                      color: isOnlyNewUserBenefit ? colorBrand40 : colorGrey40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _handleNothingClick,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: isNothing ? colorBrand40 : colorGrey80,
                      ),
                    ),
                    color: isNothing ? colorBrand90 : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '없음',
                    style: textTheme.labelLarge!.copyWith(
                      color: isNothing ? colorBrand40 : colorGrey40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _handleAllClick() {
    ref.read(filterByBenefitProvider.notifier).setAll();
  }

  void _handleOnlyFirstGameBenefitClick() {
    ref.read(filterByBenefitProvider.notifier).setOnlyFirstGameBenefit();
  }

  void _handleOnlyNewUserBenefitClick() {
    ref.read(filterByBenefitProvider.notifier).setOnlyNewUserBenefit();
  }

  void _handleNothingClick() {
    ref.read(filterByBenefitProvider.notifier).setNothing();
  }
}
