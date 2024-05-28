import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/common/components/error_placeholder/error_placeholder.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeListView extends StatefulHookConsumerWidget {
  const HomeListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeListViewState();
}

class _HomeListViewState extends ConsumerState<HomeListView> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(storesItemsProvider);

    return res.when(
      data: (resData) {
        final data = resData.items;
        ScrollController scrollController = ScrollController();

        scrollController.addListener(
          () {
            if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent) {
              ref.read(storesItemsProvider.notifier).fetchNextData();
            }
          },
        );

        Logger().i('HomeListView\n  data: $data');

        if (data!.isEmpty) {
          return Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.info_rounded,
                    color: colorGrey80,
                    size: 60,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '주변에 필터와 일치하는 홀덤펍이 없어요.',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: colorGrey60,
                        ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Expanded(
            child: SmartRefresher(
              controller: _refreshController,
              enablePullDown: true,
              onRefresh: _refresh,
              child: ListView.separated(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return HomeStore(
                    storeImages: data[index].storeImages ?? [],
                    name: data[index].name ?? "",
                    address: data[index].address ?? "",
                    addressDetail: data[index].addressDetail ?? "",
                    openTime: data[index].openTime ?? "",
                    closeTime: data[index].closeTime ?? "",
                    distance: data[index].distance ?? 0.0,
                    storeGames: data[index].gameMTTItems ?? [],
                    handleClick: () => _handleClick(model: data[index]),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              ),
            ),
          );
        }
      },
      error: (error, stackTrace) {
        Logger().e(error.toString());
        Logger().e(stackTrace.toString());
        return const Expanded(child: ErrorPlaceholder());
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
                  '주변 홀덤펍을 빠르게 찾고 있어요.',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: colorGrey70,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _refresh() {
    ref.invalidate(locationServiceProvider);
    ref.invalidate(storesItemsProvider);

    Future.delayed(const Duration(seconds: 1), () {
      _refreshController.refreshCompleted();
    });
  }

  void _handleClick({required StoreModel model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name!),
              createdAt: d.Value(DateTime.now()),
            ),
          );
    }

    ref.invalidate(recentSearchDataProvider);
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {"id": model.id},
    );
  }
}
