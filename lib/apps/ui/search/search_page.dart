import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/app_bar_view.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/search_result_list.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/nearby_stores_view.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/recent_search_view.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final searchKeyword = ref.watch(searchKeywordProvider).keyword;

    Logger().d('Search keyword: $searchKeyword');

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SearchAppBarView(),
            if (searchKeyword.isEmpty) ...[
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RecentSearchView(),
                      SizedBox(height: 16),
                      NearbyStoresView(),
                    ],
                  ),
                ),
              ),
            ],
            if (searchKeyword.isNotEmpty) ...[
              const SearchResultList(),
            ],
          ],
        ),
      ),
    );
  }
}
