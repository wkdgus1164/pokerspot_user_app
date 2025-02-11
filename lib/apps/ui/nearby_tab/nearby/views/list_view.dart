import 'package:drift/drift.dart' as d;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/location_service.dart';
import 'package:pokerspot_user_app/apps/ui/nearby_tab/nearby/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NearbyListView extends StatefulHookConsumerWidget {
  const NearbyListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<NearbyListView> {
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

        Logger().i('NearbyListView\n  data: $data');

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
                    style: textTheme.bodyLarge!.copyWith(
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
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return StoreListItem(
                    store: data[index],
                    handleClick: () => _handleClick(model: data[index]),
                  );
                },
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 8, height: 8),
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
                  style: textTheme.labelMedium!.copyWith(
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

  void _handleClick({required StoreDto model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name ?? ''),
              createdAt: d.Value(DateTime.now()),
              image: d.Value(model.storeImages?.first.url ?? ''),
              address: d.Value(model.address ?? ''),
              openTime: d.Value(model.openTime ?? ''),
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
