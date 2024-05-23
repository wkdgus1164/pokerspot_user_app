import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class RecentSearchView extends StatefulHookConsumerWidget {
  const RecentSearchView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecentSearchViewState();
}

class _RecentSearchViewState extends ConsumerState<RecentSearchView> {
  List<Widget> chips = List<RawChip>.generate(
    10,
    (index) {
      return RawChip(
        label: Text('매장명${index + 1}'),
        onPressed: () {
          Logger().i('매장명${index + 1} 클릭');
        },
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '최근 검색어',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: colorGrey40,
                    ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '전체 삭제',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: colorGrey60,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 8,
            children: chips,
          ),
        ),
      ],
    );
  }
}
