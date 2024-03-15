import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/bottom_sheet/components/button_group.dart';

class HomeSearchFilterSheet extends StatefulHookConsumerWidget {
  const HomeSearchFilterSheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeSearchFilterSheetState();
}

class _HomeSearchFilterSheetState extends ConsumerState<HomeSearchFilterSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 32,
        children: [
          Text(
            '상세 검색',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: colorGrey20,
                ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '운영 상태',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: colorGrey40,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              const SizedBox(height: 8),
              const FilterByRunningStatusView(),
            ],
          ),
        ],
      ),
    );
  }
}
