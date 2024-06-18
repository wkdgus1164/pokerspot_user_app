import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/area_search_list/providers/area.dart';
import 'package:pokerspot_user_app/apps/ui/nearby/components/store.dart';
import 'package:pokerspot_user_app/common/components/placeholder/empty.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AreaSearchListPageArguments {
  const AreaSearchListPageArguments({
    required this.areaCode,
    required this.areaName,
  });

  final String areaCode;
  final String areaName;
}

class AreaSearchListPage extends StatefulHookConsumerWidget {
  const AreaSearchListPage({super.key, required this.args});

  final AreaSearchListPageArguments args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AreaSearchListPageState();
}

class _AreaSearchListPageState extends ConsumerState<AreaSearchListPage> {
  AreaSearchListPageArguments get _args => widget.args;
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
            padding: const EdgeInsets.all(16),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Store(
                storeImages: data[index].storeImages,
                name: data[index].name ?? "",
                address: data[index].address ?? "",
                addressDetail: data[index].addressDetail ?? "",
                openTime: data[index].openTime ?? '',
                closeTime: data[index].closeTime ?? '',
                distance: data[index].distance ?? 0,
                updatedAt: data[index].updatedAt,
                storeGames: data[index].gameMTTItems ?? [],
                handleClick: () {
                  context.pushNamed(
                    CustomRouter.store.name,
                    pathParameters: {'id': data[index].id},
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
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
}
