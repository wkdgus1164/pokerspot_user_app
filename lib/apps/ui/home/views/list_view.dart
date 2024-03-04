import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/store.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/store.dart';
import 'package:pokerspot_user_app/common/components/list_footer/custom_list_footer.dart';
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
      data: (data) {
        final items = data.items;

        return Expanded(
          child: SmartRefresher(
            controller: _refreshController,
            enablePullDown: true,
            onRefresh: _refresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return WithListFooter(
                  child: HomeStore(
                    storeImages: items[index].storeImages,
                    name: items[index].name ?? "",
                    address: items[index].address ?? "",
                    addressDetail: items[index].addressDetail ?? "",
                    openTime: items[index].openTime ?? "",
                    closeTime: items[index].closeTime ?? "",
                    distance: items[index].distance ?? 0,
                    storeGames: items[index].gameMttItems,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16),
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        Logger().e(error.toString());
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(error.toString()),
                Text(stackTrace.toString()),
              ],
            ),
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
                  '데이터를 불러오고 있어요.',
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
    ref.invalidate(storesItemsProvider);
    _refreshController.refreshCompleted();
  }
}
