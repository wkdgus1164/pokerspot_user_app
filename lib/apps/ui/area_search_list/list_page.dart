import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/store.dart';
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
    scrollController.addListener(
      () {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          // ref.read(storesItemsProvider.notifier).fetchNextData();
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text(_args.areaName)),
      body: SmartRefresher(
        controller: refreshController,
        enablePullDown: true,
        onRefresh: _refresh,
        child: ListView.separated(
          controller: scrollController,
          padding: const EdgeInsets.all(16),
          itemCount: 10,
          itemBuilder: (context, index) {
            return HomeStore(
              storeImages: [
                StoreImagesModel(
                  id: 'id',
                  url: 'https://d1gfto9ehui3w0.cloudfront.net/A0519-0.png',
                ),
              ],
              name: 'data[index].name',
              address: 'data[index].address',
              addressDetail: 'data[index].addressDetail',
              openTime: '10:00:00',
              closeTime: '10:00:00',
              distance: 0,
              storeGames: const [],
              handleClick: () {},
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
      ),
    );
  }

  void _refresh() {
    Future.delayed(const Duration(seconds: 1), () {
      refreshController.refreshCompleted();
    });
  }
}
