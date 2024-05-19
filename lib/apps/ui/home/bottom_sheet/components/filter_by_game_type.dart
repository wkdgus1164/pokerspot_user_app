import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/providers/filter_by_game_type.dart';

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

    final isAll = gameTypeFilter.gameType == GameType.all;
    final isDaily = gameTypeFilter.gameType == GameType.daily;
    // final isSeed = gameTypeFilter.gameType == GameType.seed;
    final isGTD = gameTypeFilter.gameType == GameType.gtd;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '토너먼트',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: colorGrey40,
                fontWeight: FontWeight.normal,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Ink(
                color: isAll ? colorBrand90 : Colors.transparent,
                child: InkWell(
                  splashColor: colorBrand95,
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
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      '전체',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: isAll ? colorBrand40 : colorGrey40,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Ink(
                color: isDaily ? colorBrand90 : Colors.transparent,
                child: InkWell(
                  onTap: _handleDailyClick,
                  splashColor: colorBrand95,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: isDaily ? colorBrand40 : colorGrey80,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      '데일리',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: isDaily ? colorBrand40 : colorGrey40,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: Ink(
            //     color: isSeed ? colorBrand90 : Colors.transparent,
            //     child: InkWell(
            //       onTap: _handleSeedClick,
            //       splashColor: colorBrand95,
            //       borderRadius: const BorderRadius.only(
            //         topRight: Radius.circular(8),
            //         bottomRight: Radius.circular(8),
            //       ),
            //       child: Container(
            //         alignment: Alignment.center,
            //         decoration: BoxDecoration(
            //           border: Border.fromBorderSide(
            //             BorderSide(
            //               color: isSeed ? colorBrand40 : colorGrey80,
            //             ),
            //           ),
            //         ),
            //         padding: const EdgeInsets.all(16),
            //         child: Text(
            //           '시드권',
            //           style: Theme.of(context).textTheme.labelLarge!.copyWith(
            //                 color: isSeed ? colorBrand40 : colorGrey40,
            //               ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: Ink(
                color: isGTD ? colorBrand90 : Colors.transparent,
                child: InkWell(
                  onTap: _handleGTDClick,
                  splashColor: colorBrand95,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
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
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'GTD',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: isGTD ? colorBrand40 : colorGrey40,
                          ),
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

  // void _handleSeedClick() {
  //   ref.read(filterByGameTypeProvider.notifier).setSeed();
  //   ref.invalidate(storesItemsProvider);
  // }

  void _handleGTDClick() {
    ref.read(filterByGameTypeProvider.notifier).setGTD();
  }
}
