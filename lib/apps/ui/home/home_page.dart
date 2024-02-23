import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/list/components/list_item.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/list/providers/items.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/location/components/location_view.dart';
import 'package:pokerspot_user_app/common/components/empty_list_placeholder/empty_list_placeholder.dart';
import 'package:pokerspot_user_app/common/components/list_footer/custom_list_footer.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    final res = ref.watch(storesItemsProvider);

    return res.when(
      data: (data) {
        final items = data.items;

        if (items.isEmpty) {
          return const EmptyListPlaceHolder(
            iconData: Icons.edit_square,
            message: "등록된 업소가 없어요.",
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: SvgPicture.asset(
              Assets.logoTextMinifiedColor.path,
              width: 90,
            ),
          ),
          body: Column(
            children: [
              const HomeLocationView(),
              Expanded(
                child: SmartRefresher(
                  controller: _refreshController,
                  enablePullDown: true,
                  onRefresh: () {
                    _refresh();
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return WithListFooter(
                        child: HomeStoreListItem(
                          storeImages: items[index].storeImages,
                          name: items[index].name,
                          address: items[index].address,
                          addressDetail: items[index].addressDetail,
                          openTime: items[index].openTime,
                          closeTime: items[index].closeTime ?? "",
                          distance: items[index].distance ?? 0,
                          storeGames: items[index].gameMttItems,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                  ),
                ),
              ),
            ],
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
        return const Center(child: CircularProgressIndicator.adaptive());
      },
    );

    // Scaffold(
    //   appBar = AppBar(
    //     title: SvgPicture.asset(
    //       Assets.logoTextMinifiedColor.path,
    //       height: 20,
    //     ),
    //     actions: [
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(Icons.search_rounded),
    //       ),
    //     ],
    //   ),
    //   body = ListView.separated(
    //     itemBuilder: (context, index) {
    //       return null;
    //     },
    //     separatorBuilder: (context, index) => const Divider(),
    //     itemCount: 10,
    //   ),
    // );
  }

  void _refresh() {
    ref.invalidate(storesItemsProvider);
    _refreshController.refreshCompleted();
  }
}
