import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/app_bar/app_bar.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';

class SearchAppBarView extends StatefulHookConsumerWidget {
  const SearchAppBarView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<SearchAppBarView> {
  @override
  Widget build(BuildContext context) {
    return SearchAppBar(
      handleKeywordInputChanged: _handleKeywordInputChanged,
      handleBackButtonClick: _handleBackButtonClick,
    );
  }

  void _handleKeywordInputChanged(String? keyword) {
    ref.read(searchKeywordProvider.notifier).setSearchKeyword(keyword!);
  }

  void _handleBackButtonClick() {
    ref.read(searchKeywordProvider.notifier).setSearchKeyword('');
    context.pop();
  }
}
