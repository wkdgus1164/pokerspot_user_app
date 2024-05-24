import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
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
        return Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return SearchResultItem(
                name: data[index].title,
                handleClick: _routeToStoreDetail,
              );
            },
          ),
        );
      },
      loading: () {
        return Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator.adaptive(),
                const SizedBox(height: 16),
                Text(
                  '매장을 찾고 있어요.',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: colorGrey80,
                      ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        Logger().e(error.toString());
        return const Expanded(
          child: ErrorPlaceholder(
            caption: '검색어와 일치하는 매장명이 없어요.',
          ),
        );
      },
    );
  }

  void _routeToStoreDetail() {
    context.pushNamed(
      CustomRouter.store.name,
      extra: {'id': '9a9a5ca1-383e-42ea-938f-33ca96e2336d'},
    );
  }
}
