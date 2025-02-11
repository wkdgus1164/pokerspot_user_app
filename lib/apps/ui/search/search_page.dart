import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/app_bar_view.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/search_result_list.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/nearby_stores_view.dart';
import 'package:pokerspot_user_app/apps/ui/search/views/recent_search_view.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final searchKeyword = ref.watch(searchKeywordProvider).keyword;
    ScrollController scrollController = ScrollController();

    scrollController.addListener(
      () {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          ref.read(storesItemsProvider.notifier).fetchNextData();
        }
      },
    );

    Logger().d('Search keyword: $searchKeyword');

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SearchAppBarView(),
            if (searchKeyword.isEmpty) ...[
              _renderSearchKeywordEmpty(
                scrollController,
                context,
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

  Expanded _renderSearchKeywordEmpty(
      ScrollController scrollController, BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const RecentSearchView(),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: 8,
                  ),
                  child: Text(
                    '주변 매장 리스트',
                    style: textTheme.titleSmall!.copyWith(
                      color: colorGrey40,
                    ),
                  ),
                ),
              ],
            ),
            const NearbyStoresView(),
          ],
        ),
      ),
    );
  }
}
