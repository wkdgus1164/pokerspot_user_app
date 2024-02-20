import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/list/providers/items.dart';
import 'package:pokerspot_user_app/common/components/empty_list_placeholder/empty_list_placeholder.dart';
import 'package:pokerspot_user_app/common/components/list_footer/custom_list_footer.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

        return SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          onRefresh: () {},
          child: SafeArea(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return WithListFooter(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('name: ${items[index].name}'),
                        Text('address: ${items[index].address}'),
                        Text('addressDetail: ${items[index].addressDetail}'),
                        Text('openTime: ${items[index].openTime}'),
                        Text('closeTime: ${items[index].closeTime}'),
                        Text('distance: ${items[index].distance}'),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: items[index]
                              .storeImages
                              .map(
                                (it) => CachedNetworkImage(
                                  placeholder: (context, url) {
                                    return const SizedBox(
                                      width: double.infinity,
                                      child: AspectRatio(
                                        aspectRatio: 16 / 9,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.error,
                                              color: Colors.black26,
                                            ),
                                            SizedBox(height: 16),
                                            Text(
                                              '이미지를 불러오는 데에 실패했어요.',
                                              style: TextStyle(
                                                color: Colors.black26,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  errorWidget: (context, url, error) {
                                    return const SizedBox(
                                      width: double.infinity,
                                      child: AspectRatio(
                                        aspectRatio: 16 / 9,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.error,
                                              color: Colors.black26,
                                            ),
                                            SizedBox(height: 16),
                                            Text(
                                              '이미지를 불러오는 데에 실패했어요.',
                                              style: TextStyle(
                                                color: Colors.black26,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  imageUrl: it.url.toString(),
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                );
              },
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
        return const CircularProgressIndicator.adaptive();
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
}
