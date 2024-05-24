import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/search_result_item.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/search.dart';
import 'package:pokerspot_user_app/common/components/error_placeholder/error_placeholder.dart';

class SearchResultList extends StatefulHookConsumerWidget {
  const SearchResultList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchResultListState();
}

class _SearchResultListState extends ConsumerState<SearchResultList> {
  @override
  Widget build(BuildContext context) {
    final searchResult = ref.watch(searchResultProvider);

    return searchResult.when(
      data: (data) {
        return _buildSearchResultList();
      },
      loading: () {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator.adaptive(),
              const SizedBox(height: 8),
              Text(
                '매장을 찾고 있어요.',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: colorGrey80,
                    ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return const Expanded(
          child: ErrorPlaceholder(
            caption: '검색어와 일치하는 매장명이 없어요.',
          ),
        );
      },
    );
  }

  Expanded _buildSearchResultList() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return SearchResultItem(
            name: 'name',
            handleClick: () {},
          );
        },
      ),
    );
  }
}
