import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/bottom_sheet/providers/filter_by_game_type.dart';

class FilterByGameTypeView extends StatefulHookConsumerWidget {
  const FilterByGameTypeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FilterByGameTypeState();
}

class _FilterByGameTypeState extends ConsumerState<FilterByGameTypeView> {
  @override
  Widget build(BuildContext context) {
    final gameTypeFilter = ref.watch(filterByGameTypeProvider);

    final isAll = gameTypeFilter.gameType == GameType.ALL;
    final isDaily = gameTypeFilter.gameType == GameType.DAILY;
    final isGTD = gameTypeFilter.gameType == GameType.GTD;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '토너먼트',
          style: textTheme.titleSmall!.copyWith(
            color: colorGrey40,
          ),
        ),
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
                    '전체',
                    style: textTheme.labelLarge!.copyWith(
                      color: isAll ? colorBrand40 : colorGrey40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _handleDailyClick,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: isDaily ? colorBrand40 : colorGrey80,
                      ),
                    ),
                    color: isDaily ? colorBrand90 : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '데일리',
                    style: textTheme.labelLarge!.copyWith(
                      color: isDaily ? colorBrand40 : colorGrey40,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _handleGTDClick,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: isGTD ? colorBrand40 : colorGrey80,
                      ),
                    ),
                    color: isGTD ? colorBrand90 : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'GTD',
                    style: textTheme.labelLarge!.copyWith(
                      color: isGTD ? colorBrand40 : colorGrey40,
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
    ref.read(filterByGameTypeProvider.notifier).setAll();
  }

  void _handleDailyClick() {
    ref.read(filterByGameTypeProvider.notifier).setDaily();
  }

  void _handleGTDClick() {
    ref.read(filterByGameTypeProvider.notifier).setGTD();
  }
}
