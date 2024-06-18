import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as d;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/search/components/search_result_item.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/keyword.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/search.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';

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
      data: (resData) {
        final data = resData.items;
        ScrollController scrollController = ScrollController();

        scrollController.addListener(
          () {
            if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent) {
              ref.read(searchResultProvider.notifier).fetchNextData();
            }
          },
        );

        if (data!.isEmpty) {
          return const Expanded(
            child: ErrorPlaceholder(
              caption: '검색어와 일치하는 매장명이 없어요.\n다른 검색어로 시도해주세요.',
            ),
          );
        }
        return Expanded(
          child: ListView.builder(
            controller: scrollController,
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return SearchResultItem(
                name: data[index].name ?? '',
                handleClick: () => _routeToStoreDetail(model: data[index]),
                distance: data[index].distance ?? 0.0,
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
            caption: '검색어와 일치하는 매장명이 없어요.\n다른 검색어로 시도해주세요.',
          ),
        );
      },
    );
  }

  void _routeToStoreDetail({required StoreModel model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name!),
              createdAt: d.Value(DateTime.now()),
              image: d.Value(model.storeImages!.first.url!),
              address: d.Value(model.address!),
              openTime: d.Value(model.openTime!),
            ),
          );
    }
    ref.read(searchKeywordProvider.notifier).clearSearchKeyword();
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {"id": model.id},
    );
  }
}
