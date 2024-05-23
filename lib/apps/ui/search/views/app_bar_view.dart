import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/app_bar/app_bar.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';

class SearchAppBarView extends StatefulHookConsumerWidget {
  const SearchAppBarView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchAppBarViewState();
}

class _SearchAppBarViewState extends ConsumerState<SearchAppBarView> {
  @override
  Widget build(BuildContext context) {
    return SearchAppBar(
      handleKeywordInputChanged: _handleKeywordInputChanged,
    );
  }

  void _handleKeywordInputChanged(String? keyword) {
    ref.read(searchKeywordProvider.notifier).setSearchKeyword(keyword!);
  }
}
