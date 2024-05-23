import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/search_result_item.dart';

class SearchResultList extends StatefulHookConsumerWidget {
  const SearchResultList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchResultListState();
}

class _SearchResultListState extends ConsumerState<SearchResultList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return SearchResultItem(
          name: 'name',
          handleClick: () {},
        );
      },
    );
  }
}
