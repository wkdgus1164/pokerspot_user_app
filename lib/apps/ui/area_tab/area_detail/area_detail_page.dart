import 'package:drift/drift.dart' as d;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/dao/dao.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_detail/providers/area.dart';
import 'package:pokerspot_user_app/apps/ui/global/store_list_tem/list_item.dart';
import 'package:pokerspot_user_app/apps/ui/search/providers/recent_search.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store.dart';
import 'package:pokerspot_user_app/common/components/placeholder/empty.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AreaDetailPageArgs {
  const AreaDetailPageArgs({
    required this.areaCode,
    required this.areaName,
  });

  final String areaCode;
  final String areaName;
}

class AreaDetailPage extends StatefulHookConsumerWidget {
  const AreaDetailPage({super.key, required this.args});

  final AreaDetailPageArgs args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<AreaDetailPage> {
  AreaDetailPageArgs get _args => widget.args;
  RefreshController refreshController = RefreshController();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(areaStoreItemsProvider);

    scrollController.addListener(
      () {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          ref.read(areaStoreItemsProvider.notifier).fetchNextData();
        }
      },
    );

    return res.when(data: (resData) {
      final data = resData.items;
      Logger().i('data : $data');

      if (data!.isEmpty) {
        return EmptyListPlaceHolder(
          appBarTitle: Text(_args.areaName),
          iconData: Icons.error_rounded,
          message: '이 지역에는 등록된 홀덤펍이 없어요.',
        );
      }
      return Scaffold(
        appBar: AppBar(title: Text(_args.areaName)),
        body: SmartRefresher(
          controller: refreshController,
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
            separatorBuilder: (context, index) => const Divider(
              thickness: 8,
              height: 8,
            ),
          ),
        ),
      );
    }, loading: () {
      return const LoadingPlaceholder();
    }, error: (error, stackTrace) {
      return Scaffold(
        appBar: AppBar(title: const Icon(Icons.error_rounded)),
        body: ErrorPlaceholder(
          caption: '잠시 후 다시 시도해 주세요.',
          error: error.toString(),
        ),
      );
    });
  }

  void _refresh() {
    Future.delayed(const Duration(seconds: 1), () {
      refreshController.refreshCompleted();
    });
  }

  void _handleClick({required StoreModel model}) {
    final target = ref.read(recentSearchDataProvider.notifier).find(model.id);

    if (target == null) {
      ref.read(recentSearchDaoProvider).insert(
            RecentSearchEntityCompanion(
              id: d.Value(model.id),
              name: d.Value(model.name),
              createdAt: d.Value(DateTime.now()),
              image: d.Value(model.storeImages.first.url),
              address: d.Value(model.address),
              openTime: d.Value(model.openTime ?? ''),
            ),
          );
    }

    ref.invalidate(recentSearchDataProvider);
    context.pushNamed(
      CustomRouter.store.name,
      pathParameters: {'id': model.id},
    );
  }
}
