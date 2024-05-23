import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/app_bar_view.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/before_search.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/search_result_list.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/recent_search_view.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchAppBarView(),
            RecentSearchView(),
            Expanded(child: SearchResultList()),
            Expanded(
              child: BeforeSearch(),
            ),
          ],
        ),
      ),
    );
  }
}
